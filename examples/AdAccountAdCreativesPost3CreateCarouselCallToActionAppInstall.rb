# Copyright (c) Meta Platforms, Inc. and affiliates.
# All rights reserved.
#
# You are hereby granted a non-exclusive, worldwide, royalty-free license to use,
# copy, modify, and distribute this software in source code or binary form for use
# in connection with the web services and APIs provided by Facebook.
#
# As with any software that integrates with the Facebook platform, your use of
# this software is subject to the Facebook Platform Policy
# [http://developers.facebook.com/policy/]. This copyright notice shall be
# included in all copies or substantial portions of the software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

require 'facebook_ads'

access_token = '<ACCESS_TOKEN>'
app_secret = '<APP_SECRET>'
app_id = '<APP_ID>'
id = '<AD_ACCOUNT_ID>'

FacebookAds.configure do |config|
  config.access_token = access_token
  config.app_secret = app_secret
end

ad_account = FacebookAds::AdAccount.get(id)
adcreatives = ad_account.adcreatives.create({
    name: 'Carousel app ad',
    object_story_spec: {'page_id':'<pageID>','link_data':{'message':'My message','link':'http://www.example.com/appstoreurl','caption':'WWW.ITUNES.COM','name':'The link name','description':'The link description','child_attachments':[{'link':'http://www.example.com/appstoreurl','image_hash':'<imageHash>','call_to_action':{'type':'USE_MOBILE_APP','value':{'app_link':'<deepLink>'}}},{'link':'http://www.example.com/appstoreurl','image_hash':'<imageHash>','call_to_action':{'type':'USE_MOBILE_APP','value':{'app_link':'<deepLink>'}}},{'link':'http://www.example.com/appstoreurl','image_hash':'<imageHash>','call_to_action':{'type':'USE_MOBILE_APP','value':{'app_link':'<deepLink>'}}},{'link':'http://www.example.com/appstoreurl','image_hash':'<imageHash>','call_to_action':{'type':'USE_MOBILE_APP','value':{'app_link':'<deepLink>'}}}],'multi_share_optimized':true}},
})