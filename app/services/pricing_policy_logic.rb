require 'open-uri'

class PricingPolicyLogic
  FLEXIBLE_URL = 'http://reuters.com'
  FIXED_URL = 'https://developer.github.com/v3/#http-redirects'
  PRESTIGE_URL = 'http://www.yourlocalguardian.co.uk/sport/rugby/rss/'

  def initialize(params)
    @params = params
  end

  def process
    @prices = {}
    @status = 200

    begin
      set_variables
      process_organizations
    rescue Exception => e
      @status = 400
      @prices = {}
    end

    { prices: @prices, status: @status }
  end

private

  def set_variables
    @base_price = @params[:base_price].to_i
    @organizations = Organization.find(@params[:id]).subtree
  end

  def process_organizations
    @organizations.map { |o| @prices[o.id] = @base_price + margin(o) }
  end

  def margin(organization)
    case organization.pricing_policy.to_sym
    when :flexible then flexible_margin
    when :fixed then fixed_margin
    when :prestige then prestige_margin
    end
  end

  def flexible_margin
    @flexible_margin ||= calculate_flexible_margin
  end

  def calculate_flexible_margin
    doc = Nokogiri::HTML(open(FLEXIBLE_URL)).xpath('//body')
    doc.xpath('//script').remove
    doc.xpath('//iframe').remove
    doc.xpath('//style').remove

    doc.text.squish.count('a') / 100
  end

  def fixed_margin
    @fixed_margin ||= calculate_fixed_margin
  end

  def calculate_fixed_margin
    doc = Nokogiri::HTML(open(FIXED_URL)).xpath('//body')
    doc.xpath('//script').remove
    doc.xpath('//iframe').remove
    doc.xpath('//style').remove

    doc.text.squish.downcase.scan(/status/).count
  end

  def prestige_margin
    @prestige_margin ||= calculate_prestige_margin
  end

  def calculate_prestige_margin
    doc = Nokogiri::XML(open(PRESTIGE_URL))
    doc.xpath('//pubDate').count
  end
end
