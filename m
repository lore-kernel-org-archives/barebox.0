Delivery-date: Mon, 04 Oct 2021 13:41:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMLG-0006Wf-Jd
	for lore@lore.pengutronix.de; Mon, 04 Oct 2021 13:41:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mXMLF-0003aw-Lj
	for lore@pengutronix.de; Mon, 04 Oct 2021 13:41:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=R3h03WvM80YVoMuq7AwbrRjyP/VsEs4nbIWxcjRuB1s=; b=cqJ3p55mbdGvcFRNZjd/w7q4c7
	ECRHD39MitEaPnsVqIBJ9UOpzDdqLsasdxc1GtawZUvmZD94xF44q0vxHq0W7DFPWXCxnyYTTZysE
	L+Yzw24u1/NOG0IZ/AZGaWGhHr8K16AzJhXmCBaqC9jxedF1p503d6t9gg8OD3ubyXS1LJM9/t/qL
	m35yUPsk+JnBTvA+lE6ngLr37nWXxgdn/AUAKcL06RRPbDSg7n1COqz/rGB8DFSfykltLIdJq9deL
	m/WW6TIhVMVvJfN2BxlFqYl6sFjM88uAGfzUWAHXibfsCH007gsbbyIKUFzeF4t1BqOA3bdLlkj/h
	/+fXfBDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mXMJt-006EwM-7U; Mon, 04 Oct 2021 11:39:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mXMJJ-006EnX-HA
 for barebox@lists.infradead.org; Mon, 04 Oct 2021 11:39:15 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mXMJI-0003MH-2v; Mon, 04 Oct 2021 13:39:08 +0200
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210831153214.31047-1-a.fatoum@pengutronix.de>
 <20211004112607.GX28453@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <1df357da-eff8-ea6e-59be-e63d694f8286@pengutronix.de>
Date: Mon, 4 Oct 2021 13:39:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211004112607.GX28453@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211004_043909_632940_6AE6C7E4 
X-CRM114-Status: GOOD (  23.33  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] net: designware: eqos: fix MDIO regression for
 STM32MP1 boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 04.10.21 13:26, Sascha Hauer wrote:
> On Tue, Aug 31, 2021 at 05:32:14PM +0200, Ahmad Fatoum wrote:
>> The STM32MP1 boards call their mdio subnode mdio0, which is now skipped
>> since ed8c7bdf8592 ("net: designware: eqos: set mdio bus device node").
>>
>> Fix networking for them by only falling back to the mdio node name when a
>> child node with the correct compatible could not be found.
>>
>> Fixes: ed8c7bdf8592 ("net: designware: eqos: set mdio bus device node")
>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>> ---
>>  drivers/net/designware_eqos.c | 6 +++++-
>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
>> index f83ec127143c..5eee844e289a 100644
>> --- a/drivers/net/designware_eqos.c
>> +++ b/drivers/net/designware_eqos.c
>> @@ -824,6 +824,7 @@ static void eqos_probe_dt(struct device_d *dev, struct eqos *eqos)
>>  
>>  int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
>>  {
>> +	struct device_node *np = dev->device_node;
>>  	struct mii_bus *miibus;
>>  	struct resource *iores;
>>  	struct eqos *eqos;
>> @@ -862,7 +863,10 @@ int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
>>  	miibus->read = eqos_mdio_read;
>>  	miibus->write = eqos_mdio_write;
>>  	miibus->priv = eqos;
>> -	miibus->dev.device_node = of_get_child_by_name(dev->device_node, "mdio");
>> +
>> +	miibus->dev.device_node = of_get_compatible_child(np, "snps,dwmac-mdio");
>> +	if (!miibus->dev.device_node)
>> +		miibus->dev.device_node = of_get_child_by_name(np, "mdio");
> 
> Do we need this fallback? I think I introduced ed8c7bdf8592 for the
> rk3568, which also should work without the fallback.

Linux driver uses "mdio" node name for snps,dwc-qos-ethernet-4.10 and looks
at compatible otherwise. That's why I chose to keep support for both.

> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

