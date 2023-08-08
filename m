Delivery-date: Tue, 08 Aug 2023 12:24:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJtX-00CGqw-Fb
	for lore@lore.pengutronix.de; Tue, 08 Aug 2023 12:24:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qTJtV-0000z7-IP
	for lore@pengutronix.de; Tue, 08 Aug 2023 12:24:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ow/LEIlCyUAMhH723esotXxSa76McuKy7HWv+bCgVzk=; b=1+Y0Dg8GyLL7OyFPoQkBZ/qyyg
	v/6C7ZJxGSS72mUScJr+ll6SCAOi0g34Ulv322HB30wRZNH4QviUXbRT3MZbAnEgsxbECwZZ2g0h6
	ypWbF9FrTUC1PnW18pvG7yCi7GLIAyERNtxZr8OLnqpomvv7otrw6NF5NpLfvWhUDLo/WIlehK2je
	wzHpey3FFrmjephUFxPzKKEqfu+ro6NlTe74241EHtTIKoni/9A8plql44TxnzpCmNAdQTOkfE+ss
	CuFY/IvKVako9kcKyNXpS/4uzjVy7AfhemHMkLd5DlclY1Muw3fWyfntjldvc2B2esXhfjLqGFehA
	bgSZoXSg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTJsN-002DxF-0k;
	Tue, 08 Aug 2023 10:23:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTJsK-002Dwn-0C
	for barebox@lists.infradead.org;
	Tue, 08 Aug 2023 10:23:41 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qTJsI-0000m2-5f; Tue, 08 Aug 2023 12:23:38 +0200
Message-ID: <22ac211a-644a-1915-5451-a3dec657f565@pengutronix.de>
Date: Tue, 8 Aug 2023 12:23:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20230807170743.149799-1-m.felsch@pengutronix.de>
 <31c0838e-1aac-6691-3165-40c94cd94006@pengutronix.de>
 <20230808094634.whvpslmkjlkjkk2h@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230808094634.whvpslmkjlkjkk2h@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_032340_104147_0171379A 
X-CRM114-Status: GOOD (  35.75  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: of_net: add support to parse ASCII encoded
 mac-addresses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Marco,

On 08.08.23 11:46, Marco Felsch wrote:
> Hi Ahmad,
> 
> On 23-08-08, Ahmad Fatoum wrote:
>> Hello Marco,
>>
>> On 07.08.23 19:07, Marco Felsch wrote:
>>> Some vendors like Polyhex store the MAC address ASCII encoded instead of
>>> using the plain 6-byte MAC address. This commit adds the support to
>>> decode the 12-byte ASCII encoded MAC addresses.
>>>
>>> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
>>
>> FYI, the upstream device tree binding for this is NVMEM layout, which was only
>> recently added to Linux and for which barebox has no support yet.
> 
> I know that, thanks for the info :) I thought that this is no "layout"
> it's just the mac-address stored in ASCII instead of plain 6-byte
> storage.

Sequential big-endian 6 bytes is the normal format. Anything else (ASCII
with nothing between it, ASCII with :, ASCII with -) is a different layout IMO.

>> I can understand that porting NVMEM layouts, just to get a MAC address assigned
>> might not be an attractive proposition, but I don't think that adding a new
>> barebox-specific binding is the right way here.
> 
> Me neither therefore I dropped the barebox specific binding and did just
> do some heuristic.

It's a binding, whether you use a boolean property, the size in the reg field
or add a nvmem-layout subnode.

>> I'd suggest, you get the nvmem cell in board code and assign it there.
>> There's readily available API for that. If you are interested in a
>> generic solution, NVMEM layouts are the way to go IMO.
> 
> Thought about that too but went this way because it's much less code
> than doing it in the board code. Also it allows to share the code with
> others.

How widespread is it to store MAC address that way? If it's just Debix doing
it this way, you are effectively adding a binding that's only useful to Debix
into common code.
 
> As said, I don't think that this is a layout. Of course there are more
> ASCII strings to store the production test result but this is not
> relevant. I really need to check which is more effort
> board-code vs. layout-support if you think that this is layout.

I'd be more amenable to this patch if there exists no way in upstream bindings
to represent this, which was for a long time the case. That's not the case any
more, so we should not add any new barebox-specific bindings for MAC addresses
that duplicate what's achievable by the upstream binding.

For an example of how to do this in board code, see rdu_eth_register_ethaddr().

Cheers,
Ahmad

> 
>>> ---
>>>  drivers/of/of_net.c | 19 +++++++++++++++++++
>>>  1 file changed, 19 insertions(+)
>>>
>>> diff --git a/drivers/of/of_net.c b/drivers/of/of_net.c
>>> index 75a24073da51..4e74986cdda8 100644
>>> --- a/drivers/of/of_net.c
>>> +++ b/drivers/of/of_net.c
>>> @@ -79,6 +79,8 @@ static int of_get_mac_addr(struct device_node *np, const char *name, u8 *addr)
>>>  	return -ENODEV;
>>>  }
>>>  
>>> +#define ETH_ALEN_ASCII	12
>>> +
>>>  int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr)
>>>  {
>>>  	struct nvmem_cell *cell;
>>> @@ -98,6 +100,23 @@ int of_get_mac_addr_nvmem(struct device_node *np, u8 *addr)
>>>  	if (IS_ERR(mac))
>>>  		return PTR_ERR(mac);
>>>  
>>> +	if (len == ETH_ALEN_ASCII) {
>>> +		u8 *mac_new;
>>> +		int ret;
>>> +
>>> +		mac_new = kzalloc(sizeof("xx:xx:xx:xx:xx:xx"), GFP_KERNEL);
>>> +		ret = hex2bin(mac_new, mac, ETH_ALEN);
>>
>> Why not parse into a fixed size local buffer and then copy it? Would save
>> you the extra allocation.
> 
> I went this way to keep the below free logic the same.
> 
> Regards,
>   Marco
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



