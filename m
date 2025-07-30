Delivery-date: Wed, 30 Jul 2025 14:42:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh68g-005GLC-38
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 14:42:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh68g-00069c-AM
	for lore@pengutronix.de; Wed, 30 Jul 2025 14:42:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=74A9MiV/881c5UnbA31hMH8mYIMQgKRVX2Hb7SLQ+zs=; b=RcKUjeLdg3nBsHRLRqSIZrwMCu
	yTGklBu3iQ+hS6hk7s2JKyefbB1o08c6kH7x9vxlAet+jehfmzLgyMmAFxzXmN3t5oGSTqJFyx/LW
	yTDQG2+hpMM+Y5dHlNmRWh3YHML4DKBPx7FJSqztRBdYK5hp+Lk+IjfpbTy3Oll9gpp8OwBTZpxB3
	ht1VvEw23LETUZm22RrcUzOK9kHgVqp+DZNtwgsr/6OPwzoiqLs69/36Si7ah8ULW92C1aHc6EMF/
	Onj7a5FpnIUKGlRXH1+2WbQ/Zk9ChmiP/vlGSGbaBkoA2ZXaTD/FXamwPSHJKNNJZRdjm3ecyKcg2
	32EvFsbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh68E-00000001UZJ-46GW;
	Wed, 30 Jul 2025 12:42:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5y3-00000001TK4-2Cyy
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 12:31:36 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uh5y2-0004jL-CQ; Wed, 30 Jul 2025 14:31:34 +0200
Message-ID: <855b4098-9187-4ee6-95ff-9052c446f58a@pengutronix.de>
Date: Wed, 30 Jul 2025 14:31:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
 <20250729203659.1858575-2-ivo.ivanov.ivanov1@gmail.com>
 <c9bea6cb-b444-4720-9946-d215fde11c2a@pengutronix.de>
 <334ffb15-1193-4f3f-a378-edcb04cd330d@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <334ffb15-1193-4f3f-a378-edcb04cd330d@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_053135_564995_3040D6A0 
X-CRM114-Status: GOOD (  25.08  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/4] video: simplefb-client: switch to dev_get_resource
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ivaylo,

On 7/30/25 13:28, Ivaylo Ivanov wrote:
> On 7/30/25 11:11, Ahmad Fatoum wrote:
>> Hi Ivaylo,
>>
>> thanks for your patch.
>>
>> On 7/29/25 22:36, Ivaylo Ivanov wrote:
>>> Since the framebuffer memory resource resides in ram, it has already
>>> been requested and mapped, so only get the resource to avoid
>>> requesting a busy resource. This is also the approach for linux.
>> even if it's regular RAM (as opposed to video memory) we aren't
>> guaranteed, it's mapped suitably.
> 
> In my case at least, the mainline device tree covers all of dram -
> (0x80000000 + n GB)
> 
>>
>> I think a remap of the region to writecombine is in order here. It
>> probably works right now, because we flush caches before shutting down
>> the MMU, but if you were to run fbtest, I'd expect that you will see
>> artifacts due to some pixels remaining in dirty cache line.
> 
> So you suggest remapping it, like ipufb for example?
> 
>     fbi->info.screen_base = dma_alloc_writecombine(DMA_DEVICE_BROKEN,
>                            info->line_length * info->yres,
>                            DMA_ADDRESS_BROKEN);

Except for dma_alloc_writecombine allocating a new buffer instead of
remapping an existing region. See the patch I just Cc'd you on.

>>> While at it, use IOMEM for mem->start and drop an unnecessary newline.
>>>
>>> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
>> Patch is correct, except for that aspect of the commit message:
> 
> I don't get it, do I have to change the commit message only, or
> code logic too?

Just correct the commit message: s/Since/If/.

The writecombine thing is a separate issue.

Cheers,
Ahmad

> 
> Thanks and best regards,
> Ivaylo
> 
>>
>> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
>>
>> Thanks,
>> Ahmad
>>
>>> ---
>>>  drivers/video/simplefb-client.c | 5 ++---
>>>  1 file changed, 2 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/drivers/video/simplefb-client.c b/drivers/video/simplefb-client.c
>>> index dafec617..41ad8ffa 100644
>>> --- a/drivers/video/simplefb-client.c
>>> +++ b/drivers/video/simplefb-client.c
>>> @@ -96,7 +96,7 @@ static int simplefb_probe(struct device *dev)
>>>  	if (ret)
>>>  		return ret;
>>>  
>>> -	mem = dev_request_mem_resource(dev, 0);
>>> +	mem = dev_get_resource(dev, IORESOURCE_MEM, 0);
>>>  	if (IS_ERR(mem)) {
>>>  		dev_err(dev, "No memory resource\n");
>>>  		return PTR_ERR(mem);
>>> @@ -116,10 +116,9 @@ static int simplefb_probe(struct device *dev)
>>>  	info->blue = params.format->blue;
>>>  	info->transp = params.format->transp;
>>>  
>>> -	info->screen_base = (void *)mem->start;
>>> +	info->screen_base = IOMEM(mem->start);
>>>  	info->screen_size = resource_size(mem);
>>>  
>>> -
>>>  	info->fbops = &simplefb_ops;
>>>  
>>>  	info->dev.parent = dev;
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



