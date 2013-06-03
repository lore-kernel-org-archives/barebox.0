Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og111.obsmtp.com ([64.18.0.22])
 by merlin.infradead.org with smtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UjR7h-0001oQ-OB
 for barebox@lists.infradead.org; Mon, 03 Jun 2013 09:32:18 +0000
Message-ID: <51AC6286.5030001@ge.com>
Date: Mon, 03 Jun 2013 10:31:50 +0100
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <1369926935-24159-1-git-send-email-renaud.barbier@ge.com>
 <20130601092018.GO32299@pengutronix.de>
In-Reply-To: <20130601092018.GO32299@pengutronix.de>
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
Subject: Re: [PATCH] gianfar: prevent resource conflict
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org


>> ---
>>   drivers/net/gianfar.c |   19 ++++++++++++++++++-
>>   1 files changed, 18 insertions(+), 1 deletions(-)
>>
>> diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
>> index 96055bd..79113a8 100644
>> --- a/drivers/net/gianfar.c
>> +++ b/drivers/net/gianfar.c
>> @@ -28,6 +28,8 @@
>>   #define RX_BUF_CNT 	PKTBUFSRX
>>   #define BUF_ALIGN	8
>>
>> +static void __iomem *phyregs;
>> +
>>   /*
>>    * Initialize required registers to appropriate values, zeroing
>>    * those we don't care about (unless zero is bad, in which case,
>> @@ -481,8 +483,23 @@ static int gfar_probe(struct device_d *dev)
>>   	edev = &priv->edev;
>>
>>   	priv->regs = dev_request_mem_region(dev, 0);
>> -	priv->phyregs = dev_request_mem_region(dev, 1);
>> +	if (priv->regs == NULL)
>> +		priv->regs = phyregs;
>
> the first resource is for the ethernet registers and no phy registers,
> right?

Indeed

>
>> +
>> +	if (phyregs == NULL) {
>> +		phyregs = dev_request_mem_region(dev, 1);
>> +		if (phyregs == NULL)
>> +			phyregs = priv->regs;
>> +	}
>> +	priv->phyregs = phyregs;
>> +
>>   	priv->phyregs_sgmii = dev_request_mem_region(dev, 2);
>> +	if (priv->phyregs_sgmii == NULL) {
>> +		if (IS_ENABLED(CONFIG_TSECV2))
>> +			priv->phyregs_sgmii = priv->phyregs;
>> +		else
>> +			priv->phyregs_sgmii = priv->regs;
>> +	}
>
> I think you should really register the mdio buses as separate devices
> since it's the mdio buses that are shared between the different
> instances, not the registers. The following may be a starting point
> (untested)
>

Thanks.


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
