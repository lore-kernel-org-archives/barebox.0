Delivery-date: Fri, 05 Nov 2021 08:52:27 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miu1T-0007xA-1V
	for lore@lore.pengutronix.de; Fri, 05 Nov 2021 08:52:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1miu1S-00034W-3x
	for lore@pengutronix.de; Fri, 05 Nov 2021 08:52:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Vk1ixtd2OAOoovLjKN0bI8HAj7hGli/E1bP4MRI9xI0=; b=0DU+aL0ld7qs+HM62/g+NQWDxA
	l1MXhGeRENNIr2My05OXuoRxAJvwJzFVffpBaLaUG/VZre+STtOEtlKPFSFKSYIP9lRsBDugFuwVO
	GvDiLlZaT9sarMhlsF1nAlZFl5cwAmLbjvbMXHXN3g+iyuf888uCZuVQ/IED/15Tf4YFelUxeE0Oc
	kMDm8UwNMFAX4m8tL8ayCW9Bl0G91x9SnZKzPbNFZeXsdBtN7jwJSVvSFu4m4Du72Ga6StcB8VYZP
	XaXUktx3Q+iskzPJM5vTPtfoYzMEeO/BfJsikeHBQYAsfO/pgRh61FU8nnuu/3WsQy1yGn53IS539
	r9OwrSpw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1miu0D-00An3o-3E; Fri, 05 Nov 2021 07:51:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1miu08-00An34-Eu
 for barebox@lists.infradead.org; Fri, 05 Nov 2021 07:51:05 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1miu05-0002lP-I7; Fri, 05 Nov 2021 08:51:01 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Sascha Hauer <sha@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20210831153214.31047-1-a.fatoum@pengutronix.de>
 <20211004112607.GX28453@pengutronix.de>
 <1df357da-eff8-ea6e-59be-e63d694f8286@pengutronix.de>
Message-ID: <85d72153-f4fd-2893-3bb3-393005239177@pengutronix.de>
Date: Fri, 5 Nov 2021 08:51:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <1df357da-eff8-ea6e-59be-e63d694f8286@pengutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211105_005104_541287_7A360D8D 
X-CRM114-Status: GOOD (  22.47  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] net: designware: eqos: fix MDIO regression for
 STM32MP1 boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Sascha,

On 04.10.21 13:39, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 04.10.21 13:26, Sascha Hauer wrote:
>> On Tue, Aug 31, 2021 at 05:32:14PM +0200, Ahmad Fatoum wrote:
>>> The STM32MP1 boards call their mdio subnode mdio0, which is now skipped
>>> since ed8c7bdf8592 ("net: designware: eqos: set mdio bus device node").
>>>
>>> Fix networking for them by only falling back to the mdio node name when a
>>> child node with the correct compatible could not be found.
>>>
>>> Fixes: ed8c7bdf8592 ("net: designware: eqos: set mdio bus device node")
>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>> ---
>>>  drivers/net/designware_eqos.c | 6 +++++-
>>>  1 file changed, 5 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/net/designware_eqos.c b/drivers/net/designware_eqos.c
>>> index f83ec127143c..5eee844e289a 100644
>>> --- a/drivers/net/designware_eqos.c
>>> +++ b/drivers/net/designware_eqos.c
>>> @@ -824,6 +824,7 @@ static void eqos_probe_dt(struct device_d *dev, struct eqos *eqos)
>>>  
>>>  int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
>>>  {
>>> +	struct device_node *np = dev->device_node;
>>>  	struct mii_bus *miibus;
>>>  	struct resource *iores;
>>>  	struct eqos *eqos;
>>> @@ -862,7 +863,10 @@ int eqos_probe(struct device_d *dev, const struct eqos_ops *ops, void *priv)
>>>  	miibus->read = eqos_mdio_read;
>>>  	miibus->write = eqos_mdio_write;
>>>  	miibus->priv = eqos;
>>> -	miibus->dev.device_node = of_get_child_by_name(dev->device_node, "mdio");
>>> +
>>> +	miibus->dev.device_node = of_get_compatible_child(np, "snps,dwmac-mdio");
>>> +	if (!miibus->dev.device_node)
>>> +		miibus->dev.device_node = of_get_child_by_name(np, "mdio");
>>
>> Do we need this fallback? I think I introduced ed8c7bdf8592 for the
>> rk3568, which also should work without the fallback.
> 
> Linux driver uses "mdio" node name for snps,dwc-qos-ethernet-4.10 and looks
> at compatible otherwise. That's why I chose to keep support for both.

STM32MP1 support in master is broken. Can this be cherry picked?

Thanks,
Ahmad

> 
>>
>> Sascha
>>
> 
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

