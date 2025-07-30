Delivery-date: Wed, 30 Jul 2025 14:19:49 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh5mf-005G5i-1R
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 14:19:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh5me-0003M9-EO
	for lore@pengutronix.de; Wed, 30 Jul 2025 14:19:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gJnHFZbIgWecnbyhLK8CIo9/Lmn7XnL8utAOOXQsrH4=; b=PrprEgi64WudKw4rP9rWpJ6+95
	YE1NLAY6H63gw8IRK2dk4V39hnVCrW+wk0a4MtpxryT11TOGKdlf/XwI7r4LwLB8Qtgx3oOAmXzk8
	4iuyav4yR+45ijs/RbX1fmgNY5qex0LLRipFx/r1eUFJ/CgdTy7xB0MDNttkMaWgqWZfyb0LzeByF
	a3Z0BOUEi6Meo5fC+Je2Gu691eM/uY4+QOUpcT7ACErmXP9q6h/EDIIIQ3mtSHrx0dZ5twJ//TRNC
	nOVu7fU6MlqSURmvq2IcRTGjcuzoZtIDADS8qIqdGvP0NY6tnOaWDdZR4QACDJIoxcz1VVIwTWLUw
	6G0wI3jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh5m2-00000001RDz-1eni;
	Wed, 30 Jul 2025 12:19:10 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh4jL-00000001K2p-3ZOl
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 11:12:21 +0000
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-4589b3e3820so3205145e9.3
        for <barebox@lists.infradead.org>; Wed, 30 Jul 2025 04:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753873938; x=1754478738; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gJnHFZbIgWecnbyhLK8CIo9/Lmn7XnL8utAOOXQsrH4=;
        b=HRo2nTPwRDDLUPjYBwP+a8FuzrEH6kHPNdnIN4SWf3PLMEfduIs8tcZNHD56VRIjii
         QaHNE0rDzUvdWQ0DaygSmBqWoBxygVxRzaL3aS+X9Mh5sut7OgnhQrnxM0sKFb21NkO7
         Ji3nQtCZzD3JCPqL+YnOGe62WEAKv4kDlaZPtjtCRVfVcK1KhB4xiGM5bE5Luy1w24x+
         lXwS8zExfS4HmZgq5jLnzn1BPT0AsM41CWeHc7XfdiTEhdPJcntmNVkt1xkjr/YEWEQ5
         xPFK7AzL1x8xdi1fa0XcvH6+j7kB7R6HhzCvuRXebWVKFTqyxPb8tuUiRnXjvbpMXKiV
         OoVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753873938; x=1754478738;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gJnHFZbIgWecnbyhLK8CIo9/Lmn7XnL8utAOOXQsrH4=;
        b=jnr4Wtej8E+scizGMeXVfgWrXK8rJFEo9qU3Xq4CkZQ0eupNTNmTlK19g4Fl0Md4yI
         CTJ1vMvXLDeq44pUO1cgPi6rHCShMSID3Bb9B9cbPUXKFwLzQBUS1CYuwMskc/N3pFRB
         nyDqBb1hSH20FliZOxdSKQQHB/3A6zOe18nx+v1c+yRA4dyYkwz6xDPsBFLgWUQRSGhe
         r39KRYn0mkDYAccY9ahtXNJbOhePS9HS1vCqskev92cK3m+EloyJj+UMmnY4yI4MNCwG
         K6H1jrXiA2bR6Ck51qPSguvc2ThRIQXTfXe6TFBZ9Zxy5RUymibXbdHef4dF8VaasJG+
         BKGQ==
X-Gm-Message-State: AOJu0YwvowYJZmlOGqek3gqCKru+DOk86qxPqHIOvrUVyKaRBTvZltLI
	I/zIB9ZEQ2/2CzuwGujDkszHueSq8h0oSrDHsu0eHJnELNNIJH2YTXRTClshVQ==
X-Gm-Gg: ASbGncuwcgouVOlczBVP3yGGRapSS8fPFhJ847xQYHN9YHQAjyvzMQiFKkRx/3aNOLa
	M5CvzWkW7jY/QelvX+APcqCXM9VGHUgUfd8Pot0kuY02ntTn9PnM2gF5XC4DmyeMlU0ACvXhfxg
	DGPaPkkk7nTlez5TdKA52i4CoU4JgjFG42ES+Mq7nwoJFKvy3VMOLuOF2ca7x6RvFp9zZXJ6tZM
	298mCppPoAF+P8DVf+aT07B6RIWO8vq3xSnTv7xfNwBBZPR5Jl0ebEQBEyA8AGg8vYJeYDsPJeR
	bA0uZG1rY4tNkZZkR98iS+37sr7ke1MVEaegln4cYNypIPLl5lby4F3eldbDezWUEliMMuwUPpx
	+m2pSZ5B+orP1+G9sRU46hZQsm88FN9wof8jCp8ImaOfhM+EnJd7QIWmvigU7KBwjVZ9+P6ys7C
	u/BdHeyIrVZc8=
X-Google-Smtp-Source: AGHT+IGlEvv/+CC0gZXln2Vp1NFDam/OzPWvGBP6c1X1kk7aUmcoF6KsNlpygxdrlaoRmsYJ84x6TQ==
X-Received: by 2002:a05:600c:1da2:b0:456:1ac8:cace with SMTP id 5b1f17b1804b1-45892b9e27emr33171755e9.12.1753873937958;
        Wed, 30 Jul 2025 04:12:17 -0700 (PDT)
Received: from [192.168.1.104] (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4589536abb1sm24142165e9.4.2025.07.30.04.12.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 04:12:17 -0700 (PDT)
Message-ID: <b9277209-8c77-4679-b40e-208de13e1ab4@gmail.com>
Date: Wed, 30 Jul 2025 14:12:16 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
 <20250729203659.1858575-4-ivo.ivanov.ivanov1@gmail.com>
 <b5566962-ad86-4fdc-9a4f-f81cbe88c4a4@pengutronix.de>
 <b5d8f40a-cfd7-436b-844c-f6b1f436fad2@gmail.com>
 <92fc40e6-de2c-48d0-8e9a-1b18b87b05f5@pengutronix.de>
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <92fc40e6-de2c-48d0-8e9a-1b18b87b05f5@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_041219_900484_CC1AEF3B 
X-CRM114-Status: GOOD (  56.36  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v1 3/4] ARM: boards: add support for Samsung Galaxy S8
 (dreamlte)
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 7/30/25 12:33, Ahmad Fatoum wrote:
> Hi Ivaylo,
>
> On 7/30/25 11:09, Ivaylo Ivanov wrote:
>> On 7/30/25 11:31, Ahmad Fatoum wrote:
>>> Hello Ivaylo,
>>>
>>> Thanks for your patch.
>>>
>>> On 7/29/25 22:36, Ivaylo Ivanov wrote:
>>>> Phones utilizing an exynos SoC boot android with samsung's proprietary
>>>> bootloader, called s-boot (s-lk on newer devices). However, not only is
>>>> it closed source, it also enforces some limitations that prevent us from
>>>> booting mainline linux cleanly on them, such as an applied overlay device
>>>> tree, disabled framebuffer refreshing, misaligned kernel image at boot.
>>> misaligned kernel image might be a bit problematic for barebox too, but
>>> we can fix it for PBL if needed.
>>>
>>> What misalignment are we speaking of?
>> On exynos 8890 up to exynos990, the bootloader takes a random number via
>> hwrng in a specific range after 80000000. If I recall correctly, when I was booting
>> mainline linux without any shim on my galaxy S8 (it was 5 years ago), the kernel
>> was complaining about misaligment, but I'd need to recreate that to be able
>> to provide logs. Anyways, I've tested barebox on 4 exynos devices and so far
>> there haven't been any inconsistencies at boot.
> While barebox is relocatable, we link it as if it would be running from
> address 0. This has the side effect that adrp instructions are emitted
> that assume implicitly that barebox starts at a 4K-aligned address,
> because well, 0, is 4K-aligned.
>
> If this proves problematic, we can try to eliminate the generation of
> adrp instruction. Did you experience kernel/bootloader being loaded to
> an address that's not 4K-aligned?

Nope, I think it's always 4k-aligned at least. We've been booting mainline linux
using our own bootloader shim implementation (github.com/ivoszbg/uniLoader),
and this hasn't been an issue.

>
>>>> Therefore, having another stage bootloader, loaded as a linux kernel
>>>> image by s-boot, is best.
>>>>
>>>> Add support for Samsung Galaxy S8, utilizing the exynos 8895 SoC. Support
>>>> is modelled to be as reusable on other devices as possible, requiring
>>>> only a minimal set of changes to boot - a barebox device tree, which in
>>>> this case is basically imported torvalds tree for dreamlte, that is then
>>>> matched from the downstream device tree, provided by s-boot at x0.
>>>>
>>>> For some reason, on certain devices the stack set up by the previous
>>>> bootloader is not enough. Since the idea of this board support is to be
>>>> as generic as possible, setting a fixed stack top via
>>>> ENTRY_FUNCTION_WITHSTACK does not make sense, due to different exynos
>>>> devices having different memory layouts - exynos8895's dram starts at
>>>> 0x80000000, whereas exynos7870's starts at 0x40000000. Instead, set the
>>>> SP as early as possible in the entry C function by taking the memory base
>>>> from the downstream fdt + (SZ_8M - SZ_64K).
>>> naked functions are not support on ARM64, so setting a stack pointer in
>>> C code is always an unsafe operation that could mess up codegen.
>>>
>>> If you need to do this dynamically, this needs to be done in assembly.
>> hm, so I could just have a C entry that messes with fdt, and then jump to
>> the assembly function for SP relocation, after which we go back to C?
> Yes. See __barebox_arm_entry, which does this generically for all boards.
>
>>>> Currently, only a minimal set of features work. An image can be booted by
>>>> barebox by configuring barebox to jump to the address where ramdisk gets
>>>> loaded by s-boot, and packaging that payload as a ramdisk with mkbootimg.
>>> Nice. Would be good to have this info in Documentation/
>> I was gonna do that in a separate patch after the patchset gets merged.
> Great.
>
>>>> +	compat = fdt_getprop(fdt, node, "model", &len);
>>>> +	if (!compat)
>>>> +		return false;
>>> Why compare the model and not the compatible as the compat variable name
>>> would suggest?
>> Because Samsung are more consistent at coming up with model name
>> props than compatibles. For example:
>>
>> compatible = "samsung,X1S EUR OPEN 05\0samsung,EXYNOS990";
>> compatible = "samsung, DREAMLTE KOR rev01", "samsung,EXYNOS8895";
>> compatible = "samsung, J7VE LTE LTN OPEN 00", "samsung,exynos7870";
>>
>> there are inconsistencies in spacing, capitalizing etc etc. But yeah, I will
>> change the variable name to is_model.
> Sounds good. Can you add a comment that compatibles are inconsistent?
> maybe with an example.

Okay.

>
>>>> +static noinline void exynos_continue(void *downstream_fdt)
>>>> +{
>>>> +	void *fdt;
>>>> +	unsigned long membase, memsize;
>>>> +	char *__dtb_start;
>>>> +
>>>> +	/* select device tree dynamically */
>>>> +	if (is_compat(downstream_fdt, "Samsung DREAMLTE")) {
>>>> +		__dtb_start = __dtb_exynos8895_dreamlte_start;
>>>> +	} else {
>>>> +		/* we didn't match any device */
>>>> +		return;
>>>> +	}
>>>> +	fdt = __dtb_start + get_runtime_offset();
>>>> +	fdt_find_mem(fdt, &membase, &memsize);
>>> Ah, so you do need the FDT in uncompressed form..
>> Mhm. I tried taking mem from downstream DT, but it's so broken it
>> doesn't work.
> That's a shame.
>
>>>> +	/*
>>>> +	 * The previous bootloader has a stack set up, but it seems to not be
>>>> +	 * enough as we can't get past the relocation on some devices. Set up
>>>> +	 * a stack determined by the memory node from the downstream fdt.
>>>> +	 */
>>>> +	fdt_find_mem(downstream_fdt, &mem_base, &mem_size);
>>> It's not a good idea to call this here before having set up the C
>>> environment. This makes regressions after compile updates much more
>>> likely. Can't we instead grow down from the start of the barebox binary?
>>>
>>> That's what start_dt_2nd in board-dt-2nd-aarch64.S is doing.
>> iirc this is not my first attempt at barebox, I had some work a few months ago,
>> and the board-dt-2nd wasn't booting. I suppose it's the SP stuff that was borked.
>> I will test it again though and report back.
> Thanks. Two things come to mind that might be worth exploring:
>
> - increment the stack pointer: We are not going to return from the
> barebox entry point, so we do not care if we overwrite old stack frames.
> Just aligning the stack to the next 4K for example might already be
> enough that you could call relocate_to_current_adr(); setup_c(); right
> away without first parsing the device tree
>
> - enable CONFIG_PBL_FULLY_PIC: This is still a bit experimental, but it
> eliminates a lot of relocation entries that are avoidable. It should be
> the default eventually. If aligning the stack is no option and you need
> to parse the DT before calling relocate_to_current_adr(), PBL_FULLY_PIC
> should help with reducing the chance of problems...

I tested the board-dt-2nd-aarch64.S logic and it works. I'll add an
entry.S with it for v2, but stripped out of the efi header stuff.

>
>>>> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
>>>> index 6612a514..a53834f7 100644
>>>> --- a/arch/arm/dts/Makefile
>>>> +++ b/arch/arm/dts/Makefile
>>>> @@ -13,6 +13,7 @@ lwl-$(CONFIG_MACH_BEAGLEPLAY) += k3-am625-beagleplay.dtb.o k3-am625-r5-beaglepla
>>>>  lwl-$(CONFIG_MACH_CLEP7212) += ep7212-clep7212.dtb.o
>>>>  lwl-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
>>>>  lwl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
>>>> +lwl-$(CONFIG_MACH_EXYNOS) += exynos8895-dreamlte.dtb.o
>>> It's on my todo list to add a way to specify device trees externally to
>>> make. Still need to figure out how it will look like though.
>> Yeah, I was thinking that it'd be nice to just compile it directly from
>> dts/src/.
> Ye, we'll have to think about how the X DTs that are built this way and
> bundled into barebox will be selected. The easy way would be just
> including them all into the existing barebox-2nd.fit and have the
> previous stage bootloader select the correct one, but in your case we
> would need custom logic somehow.
>
>>>> +/ {
>>>> +	barebox,disable-deep-probe;
>>> Why not enable it?
>> Honestly, I other devices doing that and didn't dig too deep into what
>> it's meant for. Will test.
> Deep probe means that barebox will recursively probe resources as needed
> instead of returning -EPROBE_DEFER. This can break old board code or
> buggy drivers, so it's disabled for a number of boards in-tree.
>
> I don't assume you'll run into issues with your new subarch here, so you
> can just enable it unconditionally.

I see. Thanks!

Best regards,
Ivaylo

>
> Cheers,
> Ahmad
>



