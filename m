Delivery-date: Thu, 21 Dec 2023 15:03:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGJeS-008VRT-3C
	for lore@lore.pengutronix.de;
	Thu, 21 Dec 2023 15:03:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rGJeS-0002tv-DK
	for lore@pengutronix.de; Thu, 21 Dec 2023 15:03:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7KgOsPwrZ8ep3KqxhEUEzawGdlsk+g8m7jE2qsW9wNw=; b=KaHAD3INmta7LhPcgAv+ETCZ+0
	YjoSzYj6s/gMltVjCxiq6D3gdjNXi59k3YhPYGgVRgd53ENxRB+o+knU5hP0GD5RUqh8m75ghnutb
	iA480ZKUKy6ottETN0J/xOb9Cu37xu+KuM00w/1ycZq+gPl3xMw8rvOgZlH/j7STZ5j/WgUJa3uK3
	nY7XCl5ULVirSciEY0nZaZvk9sm5eDZAMKHIrPh+AYm14BczQn7mFSKoaE4HBhwGbHAujT0A2RlSb
	rcyh05kD8/ewKcal1AghsOrr2VZcBp2XMvIqv/8Pxh6H37zv33wghn/f2la20r/cZwWaDil65Joh1
	XVrAXrcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGJd2-0037ZU-1h;
	Thu, 21 Dec 2023 14:02:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rGJcy-0037X6-0E
	for barebox@lists.infradead.org;
	Thu, 21 Dec 2023 14:02:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rGJcp-0002MY-9f; Thu, 21 Dec 2023 15:02:11 +0100
Message-ID: <163649a2-19b2-4e44-a8e3-4a816afdbef1@pengutronix.de>
Date: Thu, 21 Dec 2023 15:02:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: robin@protonic.nl
Cc: barebox@lists.infradead.org, michiel.schelfhout@protonic.nl
References: <20231220082908.360302-1-robin@protonic.nl>
 <27a9d947-2358-4e05-ba77-32b26b3b3125@pengutronix.de>
 <97b2f99e62f57627604f11cce4c95b6b@protonic.nl>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <97b2f99e62f57627604f11cce4c95b6b@protonic.nl>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231221_060220_106686_5564651F 
X-CRM114-Status: GOOD (  17.07  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] nvmem: regmap: Fix nvmem size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 20.12.23 13:38, Robin van der Gracht wrote:
> Hi Ahmad,
> 
> On 2023-12-20 10:00, Ahmad Fatoum wrote:
>> Hello Robin,
>>
>> Thanks for the fix.
>>
>> On 20.12.23 09:29, Robin van der Gracht wrote:
>>> -    if (roffset + rbytes > stride * regmap_get_max_register(map))
>>> +    if (roffset + rbytes > regmap_size_bytes(map) * stride)
>>
>> Shouldn't stride on the right hand side be dropped?
> 
> roffset = register index * stride.
> 
> I.e. 380 for register with index 95.
> 
> For stm32mp1x bsec:
>  map->format.val_bytes = 4
>  map->reg_stride = 4
> 
> regmap_size_bytes() = map->format.val_bytes * (95 + 1) / map->reg_stride = 96

Ouch. What have I been thinking when I named regmap_size_bytes() this way...

Change looks ok then, but we should really rename regmap_size_bytes()...

> 
> So the result with the stride on the right size is correct.
> 
> I moved stride from left to right to be consistent with the size calculation
> in nvmem_regmap_register_with_pp()
> 
> Kind regards,
> Robin
> 
> 
>>
>> Cheers,
>> Ahmad
>>
>>>          return -EINVAL;
>>>
>>>      for (i = roffset; i < roffset + rbytes; i += stride) {
>>> @@ -78,7 +78,7 @@ nvmem_regmap_register_with_pp(struct regmap *map, const char *name,
>>>      config.priv = map;
>>>      config.stride = 1;
>>>      config.word_size = 1;
>>> -    config.size = regmap_get_max_register(map) * regmap_get_reg_stride(map);
>>> +    config.size = regmap_size_bytes(map) * regmap_get_reg_stride(map);
>>>      config.cell_post_process = cell_post_process;
>>>      config.reg_write = nvmem_regmap_write;
>>>      config.reg_read = nvmem_regmap_read;
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



