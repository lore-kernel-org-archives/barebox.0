Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Z2ZkY-0003ES-Vj
 for barebox@lists.infradead.org; Wed, 10 Jun 2015 06:44:35 +0000
Message-ID: <5577DCBB.7090705@phytec.de>
Date: Wed, 10 Jun 2015 08:44:11 +0200
From: Wadim Egorov <w.egorov@phytec.de>
MIME-Version: 1.0
References: <1433833465-6569-1-git-send-email-w.egorov@phytec.de>
 <20150610043237.GT6325@pengutronix.de>
In-Reply-To: <20150610043237.GT6325@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] net: Set the actual ethaddr in
 register_preset_mac_address()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello Sascha,


On 10.06.2015 06:32, Sascha Hauer wrote:
> Hi Wadim,
>
> On Tue, Jun 09, 2015 at 09:04:25AM +0200, Wadim Egorov wrote:
>> Set the ethaddr for the current edev.
>>
>> Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
>> ---
>>   net/eth.c | 1 +
>>   1 file changed, 1 insertion(+)
>>
>> diff --git a/net/eth.c b/net/eth.c
>> index 89bddba..03e0a2e 100644
>> --- a/net/eth.c
>> +++ b/net/eth.c
>> @@ -49,6 +49,7 @@ static void register_preset_mac_address(struct eth_device *edev, const char *eth
>>   	ethaddr_to_string(ethaddr, ethaddr_str);
>>   
>>   	if (is_valid_ether_addr(ethaddr)) {
>> +		memcpy(edev->ethaddr, ethaddr, 6);
>>   		dev_info(&edev->dev, "got preset MAC address: %s\n", ethaddr_str);
>>   		dev_set_param(&edev->dev, "ethaddr", ethaddr_str);
>>   	}
> In which case is this necessary? Normally a dev_set_param on "ethaddr"
> should already set edev->ethaddr, there should be no need to copy this
> manually.
>
> Sascha

when booting from ethernet on the AM335x, net_new() (called in net_udp_new)
will check if ethaddr is valid. This check fails, because ethaddr is not
set at this moment and a random MAC will be used.

Wadim
>


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
