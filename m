Delivery-date: Wed, 20 Dec 2023 14:48:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFwvx-006GCl-2e
	for lore@lore.pengutronix.de;
	Wed, 20 Dec 2023 14:48:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFwvx-0007uU-7o
	for lore@pengutronix.de; Wed, 20 Dec 2023 14:48:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Reply-To:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-ID:
	References:In-Reply-To:Subject:Cc:To:From:Date:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zw1zgYmGxBHpEth0KvtyNmsAkIBmbTJK2FvdvlrKzXY=; b=IadsLlhBUYjdo5wIk/JXcb7FN6
	09auvNog9lOQ5ZHmUPi9G8y0zn8t4FKlOZSCVPW+Uj9APerxuK8HpubqWcBmTpkBEU8HP5+iuU2l6
	wd+X8f3/NJodvmJantE+KhpBYmQ2fZoFTKi+srF6FMEplAjQHPYedrgGRDbctiNhq6Z3hWnd3VB3P
	ijEU3IZw/3tQBSYWNuJ4GqRMkXIb/mu8ObJDVSkzrMnJyr8lJFUHQesObPFUbnA2jJmUSmLWhg6sU
	y88Pw9qLpwjAUiXM4GOLO9TXr/llWyoVODLOZ1PtcUMk1lY25sq/CfiWn4WAV4ZWXHzA6QlhiXHhi
	LaKXQ2KA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFwuV-00HYiy-2P;
	Wed, 20 Dec 2023 13:46:55 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFvqb-00HO1O-0V
	for barebox@lists.infradead.org;
	Wed, 20 Dec 2023 12:38:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=message-id:references:in-reply-to:reply-to:subject:cc:to:from:date:
	 content-transfer-encoding:content-type:mime-version:from;
	bh=Zw1zgYmGxBHpEth0KvtyNmsAkIBmbTJK2FvdvlrKzXY=;
	b=Wxs6dA/OevvwhGwiEiKjEutnzipSy5//l65kvcNV5hEDThArbMn6QdfNAsfOjxMYeuuwi3tM6CW99
	 Ug5O75uOc/2Os7c2wHPDAbuuYCRItPpCDLWi1EyJ6lsXnZARYq37vkcFqQj1oexT4EUvJpB0xdpuuh
	 3Xp/wk0OM6EEIr1jyywpj0OqTitFGw31MdcOmhf1V8OEqd2BNykprPKjlXD0JzWghlXZIg5K5ftXSo
	 pQAVWJuZJptDvZgq6qxXoilmLE1rUYzjjWpy0JTpXARzZCYltOsv4X9Vo0z/tmHBU4rEoM7HPqKJMd
	 tS7qmwn+HGFvCBYcxuMAfuFqgTqQTIQ==
X-MSG-ID: b632788b-9f34-11ee-a358-005056817704
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit
Date: Wed, 20 Dec 2023 13:38:43 +0100
From: Robin van der Gracht <robin@protonic.nl>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, michiel.schelfhout@protonic.nl
Organization: Protonic Holland
Mail-Reply-To: robin@protonic.nl
In-Reply-To: <27a9d947-2358-4e05-ba77-32b26b3b3125@pengutronix.de>
References: <20231220082908.360302-1-robin@protonic.nl>
 <27a9d947-2358-4e05-ba77-32b26b3b3125@pengutronix.de>
Message-ID: <97b2f99e62f57627604f11cce4c95b6b@protonic.nl>
X-Sender: robin@protonic.nl
User-Agent: Roundcube Webmail/1.3.1 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_043849_615903_059CEAC3 
X-CRM114-Status: UNSURE (   8.58  )
X-CRM114-Notice: Please train this message.
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
Reply-To: robin@protonic.nl
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] nvmem: regmap: Fix nvmem size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Ahmad,

On 2023-12-20 10:00, Ahmad Fatoum wrote:
> Hello Robin,
> 
> Thanks for the fix.
> 
> On 20.12.23 09:29, Robin van der Gracht wrote:
>> -	if (roffset + rbytes > stride * regmap_get_max_register(map))
>> +	if (roffset + rbytes > regmap_size_bytes(map) * stride)
> 
> Shouldn't stride on the right hand side be dropped?

roffset = register index * stride.

I.e. 380 for register with index 95.

For stm32mp1x bsec:
  map->format.val_bytes = 4
  map->reg_stride = 4

regmap_size_bytes() = map->format.val_bytes * (95 + 1) / map->reg_stride 
= 96

So the result with the stride on the right size is correct.

I moved stride from left to right to be consistent with the size 
calculation
in nvmem_regmap_register_with_pp()

Kind regards,
Robin


> 
> Cheers,
> Ahmad
> 
>>  		return -EINVAL;
>> 
>>  	for (i = roffset; i < roffset + rbytes; i += stride) {
>> @@ -78,7 +78,7 @@ nvmem_regmap_register_with_pp(struct regmap *map, 
>> const char *name,
>>  	config.priv = map;
>>  	config.stride = 1;
>>  	config.word_size = 1;
>> -	config.size = regmap_get_max_register(map) * 
>> regmap_get_reg_stride(map);
>> +	config.size = regmap_size_bytes(map) * regmap_get_reg_stride(map);
>>  	config.cell_post_process = cell_post_process;
>>  	config.reg_write = nvmem_regmap_write;
>>  	config.reg_read = nvmem_regmap_read;


