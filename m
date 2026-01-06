Delivery-date: Tue, 06 Jan 2026 09:00:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1zg-001osK-16
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 09:00:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd1zf-0008FM-Mv
	for lore@pengutronix.de; Tue, 06 Jan 2026 09:00:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TjORrxS2tU0VsQd29iImgbXAxO4lAf1TzEUzGn3lbPY=; b=V9Z7Q+0Qem9SM3L9ex/eczP39N
	LBzN5pReVLhoP1REB/DK1zJ8DJqX0XEzyRbi09lSY5o6U4+HYqsv6nSFINZcL+RyIybW+QrvKx9/J
	F2ZiAUQvRY57E8keqGiJ/CQ4GgbdeUL2NoVag5srJKqARH1gu/erIX/YW4sNhE6z6d8kMhWcPEDQq
	t27vIXVZw1qNx6f6UumtotLGPkQ3l1FoP6ryf+ZA0r5wS1Y9uyyudUavI8ZvAWrlbYBgmiuuyKDuX
	DH9MK0iyG8pkoNhxHFD40kx+d6Jsmx0VSRxEchoP+tKkkYWXIIO4PdO0dyzznw/ckyvzIeQt3tf1Z
	/ySIDPGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1z6-0000000Ca5M-3L7b;
	Tue, 06 Jan 2026 08:00:08 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd1z0-0000000Ca4X-1sqh
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 08:00:06 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vd1yy-0008AL-NJ; Tue, 06 Jan 2026 09:00:00 +0100
Message-ID: <4f8f6e8e-7c1d-419f-b315-7b23c05dfa94@pengutronix.de>
Date: Tue, 6 Jan 2026 08:59:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
 "Claude Sonnet 4.5" <noreply@anthropic.com>
References: <20260105-pbl-load-elf-v1-0-e97853f98232@pengutronix.de>
 <20260105-pbl-load-elf-v1-14-e97853f98232@pengutronix.de>
 <1d0e01f8-a1d7-4c8c-982a-be21f9dcb67b@pengutronix.de>
 <aVxC3ZOkqe3lB6OI@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <aVxC3ZOkqe3lB6OI@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_000002_531390_9B1DB956 
X-CRM114-Status: GOOD (  24.10  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 14/19] ARM: linker script: create separate PT_LOAD
 segments for text, rodata, and data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Sascha,

On 1/6/26 00:01, Sascha Hauer wrote:
> On Mon, Jan 05, 2026 at 02:11:28PM +0100, Ahmad Fatoum wrote:
>>
>>> With explicit PHDRS directives, we now generate three segments:
>>> 1. text segment (PF_R|PF_X): .text and related code sections
>>> 2. rodata segment (PF_R): .rodata and unwind tables
>>> 3. data segment (PF_R|PF_W): .data, .bss, and related sections
>>
>> Not directly related, but this is as good a place as any to ask the
>> question: How is zero-padding implemented? If the file size is shorter
>> than the memory size, the loader is supposed to zero-fill, which is used
>> for BSS zeroing for example. Now if you load the ELF in place, we can't
>> obviously zero-fill.
> 
> Yes we can, see my other mail. The bss section is placed in the ELF binary,
> unless it is at the very end of the binary in which case it becomes
> smaller by the size of the bss section.

Ok. Can we have a check to verify that no overlap happened? Can also be at
compile-time.

>>> +PHDRS
>>> +{
>>> +	text PT_LOAD FLAGS(5);     /* PF_R | PF_X */
>>> +	rodata PT_LOAD FLAGS(4);   /* PF_R */
>>> +	data PT_LOAD FLAGS(6);     /* PF_R | PF_W */
>>> +	dynamic PT_DYNAMIC FLAGS(6); /* PF_R | PF_W */
>>
>> I believe we don't need PF_W for PT_DYNAMIC. You could move it one up to
>> merge with rodata.
> 
> See readelf output:
> 
> Program Headers:
>   Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
>   LOAD           0x001000 0x00000000 0x00000000 0x96190 0x96190 R E 0x1000
>   LOAD           0x098000 0x00097000 0x00097000 0x4d2f4 0x4d2f4 R   0x1000
>   LOAD           0x0e6000 0x000e5000 0x000e5000 0x216d4 0x283b0 RW  0x1000
>   DYNAMIC        0x0f1d74 0x000f0d74 0x000f0d74 0x15960 0x15960 RW  0x4
> 
> The DYNAMIC segment is inside the LOAD segment directly above. I don't
> know how this segment is really used, but making it readonly means that
> it at least would have to be page aligned which it isn't.

If you add :rodata instead of :data it should merge with .rodata and not require
alignment itself.

>>>  	_edata = .;
>>> -	.image_end : { *(.__image_end) }
>>> +	.image_end : { *(.__image_end) } :data
>>>  
>>>  	. = ALIGN(4);
>>> -	.__bss_start :  { *(.__bss_start) }
>>> -	.bss : { *(.bss*) }
>>> -	.__bss_stop :  { *(.__bss_stop) }
>>> +	.__bss_start :  { *(.__bss_start) } :data
>>> +	.bss : { *(.bss*) } :data
>>> +	.__bss_stop :  { *(.__bss_stop) } :data
>>
>> Side-effect of having the decompressor take care of zeroing BSS is a big
>> size increase for CONFIG_IMAGE_COMPRESSION_NONE. I think that's
>> acceptable, but it's worth a comment here why we don't have a separate
>> BSS segment (or make bss NOALLOC).
> 
> The bss section is not part of the binary when it's at its very end,
> which it is, so I don't see any size increase.

Very good.

Cheers,
Ahmad

> 
>> FYI, I have patches to get rid of MAX_BSS_SIZE on top of PBL ELF loader
>> support, which I will submit once this support is merged.
> 
> Great \o/
> 
> Sascha
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


