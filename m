Delivery-date: Wed, 30 Jul 2025 11:10:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh2pb-005DBt-0n
	for lore@lore.pengutronix.de;
	Wed, 30 Jul 2025 11:10:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uh2pa-0004Ra-7y
	for lore@pengutronix.de; Wed, 30 Jul 2025 11:10:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WITvbZKOSzczrmzkiA3wP6iLHVHoL2jsnvxXZnbLCpQ=; b=cEdIbaiXiQS8+TeSvJAQtXrYR2
	1G68BqjckLMOWnV7IyUeCl9+WP1IMMuFbd72TLVzHuq+rOMaJDeAORgbcoMEyQm+srM4a1PaK+7We
	qCbw3rKIyb5NXipBDAcALzqFgwp5q+6cnuRH64opakPv8kYo+WxkV2U2ZmlJyXbdfGHU4XeExyLXg
	ZqfGtpv9OSSBJ91STlEby+fQIP8NtWpTemkHWUA9vuXx1Iy9WMG/+2ov5VGrNTS7B9V33k1AOcTjF
	QmXAdgp/byTzXS/FJt+BoFFLrmmMRqfJoYJJhETTbn0qIRrPWspQI6lvQVz6Uh99yllyjzSw//T2B
	K/WspGng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh2op-000000014SY-3P03;
	Wed, 30 Jul 2025 09:09:51 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uh2on-000000014SA-3zde
	for barebox@lists.infradead.org;
	Wed, 30 Jul 2025 09:09:51 +0000
Received: by mail-wr1-x42f.google.com with SMTP id ffacd0b85a97d-3b782cca9a0so2783485f8f.1
        for <barebox@lists.infradead.org>; Wed, 30 Jul 2025 02:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1753866588; x=1754471388; darn=lists.infradead.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WITvbZKOSzczrmzkiA3wP6iLHVHoL2jsnvxXZnbLCpQ=;
        b=IO/TE/u1SOjDk/CGCxMh6edVdYPLbWadhzN8yg/2Wd0WkfCT+yYWKQg+sEltv8GvfY
         iIIS+vfRiJMqxKuYL9PLsIaoGixJLhe6EqLlLnWfXbdmZPDutCPGzG0ynoAisPez6foo
         L+8HotXOZbA8gbV5gtDl6kqCz59rIS5BHTm4z+E1riyoY9VFCvuqHp7Jg8w6d4/46fDS
         WUK+sWIjtuQCnTVL3o6MgTRXBLvKo0rU789UWRqlOKLnbMY56nmhiBmkNqA2C1xvQdNn
         qW2g6p9osQaTE2RiTnuhFHW93ej+3ZjU82gF77Dtl5mBV/PEC/V3+CpYQw7/AyDZ5Dh/
         1I5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753866588; x=1754471388;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WITvbZKOSzczrmzkiA3wP6iLHVHoL2jsnvxXZnbLCpQ=;
        b=sFMph8rHH2wvARIQgaj0+kVMi2Eo2L/hg8g8hdcOWt3eHDG0F85gO7ez54DBAXTD+Y
         YHIM3hikifSh2r0rLY8Bb8z4X9Gm0HjSmGtATsKFeCPlmMjZC276vI0HHRFk+kc9T27y
         aYZHS0WO/RQdW4N6T2RMAsaJNGNpAP8VMpcXbbohN4EfSoX8WoolKgnbwtBkNpz6VL8K
         3CKd9k5pYalFajTpVQiTpFVZCi7WnVJnwhKUnuLm+gYcYYdHVAdZzM2vcwUBa3ecnZFC
         mltWdFism6w1vqZGI4LO5zMCeo9MtwDmiDvr1DH9cES005lWl3e2yy1pwmzPR6ClwDBo
         VaAw==
X-Gm-Message-State: AOJu0YzpKq5DcqF3Bg1kyryv3VVa+6JpOhyTkigFqgx2DxYMFDZphehJ
	wT9qKaFB3k8zt2yG2/KHA/BJDyXzBCK0RuvxP8c/ePclu8AVwkY/Cs85
X-Gm-Gg: ASbGncsZg4HzIRecXOv4NNE4wxjhinD8tP5XpE0L+iWXOLuZl337t9QWcEzEYfy4FGY
	R6eIOBar3KxxOu7JwfmFhKI2iR6uopIWxyoqxmL6fxsQwNG7Vl++KeF/ZLlsGJCkY174QyPy45C
	f/D+jbXdhqIR+9Ud+dleRPf/+VmzOqh78xYNIxrMEqR2wMSKY05f1guQ1o3T2nv7yRkn/27SqvZ
	VsHU3u4LGIbaB/jDKhy4h+BWpcnfTF0J6ev3mHHBc48/dO77K95vBVAhC/QhZPH34B0IwK91Mgt
	nHLGc6wzbjcQlD03tx1vA1iNH1sG9vfpJZ5nHARpJ+pRxcl/XUrMq85GBW7PJ6oOnZOsqYvkzM9
	ni9+evBYYg7s/8LAONszPkxQb+28V5yK24lX8yZQeWFsco+MLIqjTeANq3Fs7GwmTFG2OtdEGEV
	/q
X-Google-Smtp-Source: AGHT+IE/2kIYJbKAleUl5B2quWkRUhmke//AxHzunXHS8IFhmbRtHydqqnN3WDq0qeyVS2q7uLHSLQ==
X-Received: by 2002:a5d:5886:0:b0:3a4:eed9:755d with SMTP id ffacd0b85a97d-3b794fc1ab0mr2167925f8f.3.1753866587985;
        Wed, 30 Jul 2025 02:09:47 -0700 (PDT)
Received: from [192.168.1.104] (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b778f04abcsm14845405f8f.48.2025.07.30.02.09.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Jul 2025 02:09:47 -0700 (PDT)
Message-ID: <b5d8f40a-cfd7-436b-844c-f6b1f436fad2@gmail.com>
Date: Wed, 30 Jul 2025 12:09:46 +0300
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org
References: <20250729203659.1858575-1-ivo.ivanov.ivanov1@gmail.com>
 <20250729203659.1858575-4-ivo.ivanov.ivanov1@gmail.com>
 <b5566962-ad86-4fdc-9a4f-f81cbe88c4a4@pengutronix.de>
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
In-Reply-To: <b5566962-ad86-4fdc-9a4f-f81cbe88c4a4@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250730_020950_005386_94D0C14D 
X-CRM114-Status: GOOD (  49.57  )
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

On 7/30/25 11:31, Ahmad Fatoum wrote:
> Hello Ivaylo,
>
> Thanks for your patch.
>
> On 7/29/25 22:36, Ivaylo Ivanov wrote:
>> Phones utilizing an exynos SoC boot android with samsung's proprietary
>> bootloader, called s-boot (s-lk on newer devices). However, not only is
>> it closed source, it also enforces some limitations that prevent us from
>> booting mainline linux cleanly on them, such as an applied overlay device
>> tree, disabled framebuffer refreshing, misaligned kernel image at boot.
> misaligned kernel image might be a bit problematic for barebox too, but
> we can fix it for PBL if needed.
>
> What misalignment are we speaking of?

On exynos 8890 up to exynos990, the bootloader takes a random number via
hwrng in a specific range after 80000000. If I recall correctly, when I was booting
mainline linux without any shim on my galaxy S8 (it was 5 years ago), the kernel
was complaining about misaligment, but I'd need to recreate that to be able
to provide logs. Anyways, I've tested barebox on 4 exynos devices and so far
there haven't been any inconsistencies at boot.

>
>> Therefore, having another stage bootloader, loaded as a linux kernel
>> image by s-boot, is best.
>>
>> Add support for Samsung Galaxy S8, utilizing the exynos 8895 SoC. Support
>> is modelled to be as reusable on other devices as possible, requiring
>> only a minimal set of changes to boot - a barebox device tree, which in
>> this case is basically imported torvalds tree for dreamlte, that is then
>> matched from the downstream device tree, provided by s-boot at x0.
>>
>> For some reason, on certain devices the stack set up by the previous
>> bootloader is not enough. Since the idea of this board support is to be
>> as generic as possible, setting a fixed stack top via
>> ENTRY_FUNCTION_WITHSTACK does not make sense, due to different exynos
>> devices having different memory layouts - exynos8895's dram starts at
>> 0x80000000, whereas exynos7870's starts at 0x40000000. Instead, set the
>> SP as early as possible in the entry C function by taking the memory base
>> from the downstream fdt + (SZ_8M - SZ_64K).
> naked functions are not support on ARM64, so setting a stack pointer in
> C code is always an unsafe operation that could mess up codegen.
>
> If you need to do this dynamically, this needs to be done in assembly.

hm, so I could just have a C entry that messes with fdt, and then jump to
the assembly function for SP relocation, after which we go back to C?

>
>> Barebox has to be packaged as an android boot image:
>>
>> mkbootimg --kernel images/barebox-exynos.img \
>> --ramdisk ramdisk.bin \
>> --dt stock.dtb
>> --cmdline "buildvariant=eng" \
>> --base 0x10000000 \
>> --kernel_offset 0x00008000 \
>> --ramdisk_offset 0x01000000 \
>> --second_offset 0x00f00000 \
>> --tags_offset 0x00000100 \
>> --os_version 9.0.0 \
>> --os_patch_level 2019-10 \
>> --pagesize 2048 \
>> --hash sha1 \
>> --output boot.img
>>
>> And then flashed to the boot partition:
>>
>> heimdall flash --BOOT boot.img
>>
>> Currently, only a minimal set of features work. An image can be booted by
>> barebox by configuring barebox to jump to the address where ramdisk gets
>> loaded by s-boot, and packaging that payload as a ramdisk with mkbootimg.
> Nice. Would be good to have this info in Documentation/

I was gonna do that in a separate patch after the patchset gets merged.

>
>> +postcore_platform_driver(exynos_board_driver);
>> diff --git a/arch/arm/boards/samsung-exynos/lowlevel.c b/arch/arm/boards/samsung-exynos/lowlevel.c
>> new file mode 100644
>> index 00000000..9c4a0297
>> --- /dev/null
>> +++ b/arch/arm/boards/samsung-exynos/lowlevel.c
>> @@ -0,0 +1,78 @@
>> +// SPDX-License-Identifier: GPL-2.0-or-later
>> +/*
>> + * Copyright (C) 2025 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
>> + */
>> +#include <common.h>
>> +#include <pbl.h>
>> +#include <linux/sizes.h>
>> +#include <asm/barebox-arm-head.h>
>> +#include <asm/barebox-arm.h>
>> +#include <asm/sections.h>
>> +#include <asm/cache.h>
>> +#include <asm/mmu.h>
>> +
>> +extern char __dtb_exynos8895_dreamlte_start[];
> As you don't need the DT in PBL, you can embed it in compress form by
> using __dtb_z. This will be especially useful when we start to ship
> multiple device trees.
>
>> +
>> +static bool is_compat(const void *fdt, const char *prefix)
>> +{
>> +	int node, len;
>> +	const char *compat;
>> +
>> +	node = fdt_path_offset(fdt, "/");
>> +	if (node < 0)
>> +		return false;
>> +
>> +	compat = fdt_getprop(fdt, node, "model", &len);
>> +	if (!compat)
>> +		return false;
> Why compare the model and not the compatible as the compat variable name
> would suggest?

Because Samsung are more consistent at coming up with model name
props than compatibles. For example:

compatible = "samsung,X1S EUR OPEN 05\0samsung,EXYNOS990";
compatible = "samsung, DREAMLTE KOR rev01", "samsung,EXYNOS8895";
compatible = "samsung, J7VE LTE LTN OPEN 00", "samsung,exynos7870";

there are inconsistencies in spacing, capitalizing etc etc. But yeah, I will
change the variable name to is_model.

>
>> +
>> +	while (*prefix) {
>> +		if (*compat++ != *prefix++)
>> +			return false;
>> +	}
>> +	return true;
>> +}
>> +
>> +static noinline void exynos_continue(void *downstream_fdt)
>> +{
>> +	void *fdt;
>> +	unsigned long membase, memsize;
>> +	char *__dtb_start;
>> +
>> +	/* select device tree dynamically */
>> +	if (is_compat(downstream_fdt, "Samsung DREAMLTE")) {
>> +		__dtb_start = __dtb_exynos8895_dreamlte_start;
>> +	} else {
>> +		/* we didn't match any device */
>> +		return;
>> +	}
>> +	fdt = __dtb_start + get_runtime_offset();
>> +	fdt_find_mem(fdt, &membase, &memsize);
> Ah, so you do need the FDT in uncompressed form..

Mhm. I tried taking mem from downstream DT, but it's so broken it
doesn't work.

>
>> +
>> +	barebox_arm_entry(membase, memsize, fdt);
>> +}
>> +
>> +ENTRY_FUNCTION(start_exynos, x0, x1, x2)
>> +{
>> +	void *downstream_fdt = (void *)x0;
>> +	unsigned long mem_base, mem_size;
>> +
>> +	if (!downstream_fdt || fdt_check_header(downstream_fdt))
>> +		return;
>> +
>> +	/*
>> +	 * The previous bootloader has a stack set up, but it seems to not be
>> +	 * enough as we can't get past the relocation on some devices. Set up
>> +	 * a stack determined by the memory node from the downstream fdt.
>> +	 */
>> +	fdt_find_mem(downstream_fdt, &mem_base, &mem_size);
> It's not a good idea to call this here before having set up the C
> environment. This makes regressions after compile updates much more
> likely. Can't we instead grow down from the start of the barebox binary?
>
> That's what start_dt_2nd in board-dt-2nd-aarch64.S is doing.

iirc this is not my first attempt at barebox, I had some work a few months ago,
and the board-dt-2nd wasn't booting. I suppose it's the SP stuff that was borked.
I will test it again though and report back.

>
> In future, we should make it easier to reuse the dt-2nd entry pointer,
> maybe with a macro that can be used instead of ENTRY_FUNCTION.
>
>> +	asm volatile("mov sp, %0" : : "r"(mem_base + SZ_8M - SZ_64K));
>> +
>> +	arm_cpu_lowlevel_init();
>> +
>> +	relocate_to_current_adr();
>> +
>> +	setup_c();
>> +
>> +	exynos_continue(downstream_fdt);
>> +}
>> diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
>> index 6612a514..a53834f7 100644
>> --- a/arch/arm/dts/Makefile
>> +++ b/arch/arm/dts/Makefile
>> @@ -13,6 +13,7 @@ lwl-$(CONFIG_MACH_BEAGLEPLAY) += k3-am625-beagleplay.dtb.o k3-am625-r5-beaglepla
>>  lwl-$(CONFIG_MACH_CLEP7212) += ep7212-clep7212.dtb.o
>>  lwl-$(CONFIG_MACH_CM_FX6) += imx6dl-cm-fx6.dtb.o imx6q-cm-fx6.dtb.o imx6q-utilite.dtb.o
>>  lwl-$(CONFIG_MACH_DFI_FS700_M60) += imx6q-dfi-fs700-m60-6q.dtb.o imx6dl-dfi-fs700-m60-6s.dtb.o
>> +lwl-$(CONFIG_MACH_EXYNOS) += exynos8895-dreamlte.dtb.o
> It's on my todo list to add a way to specify device trees externally to
> make. Still need to figure out how it will look like though.

Yeah, I was thinking that it'd be nice to just compile it directly from
dts/src/.

>
>>  lwl-$(CONFIG_MACH_DUCKBILL) += imx28-duckbill.dtb.o
>>  lwl-$(CONFIG_MACH_KINDLE_MX50) += imx50-kindle-d01100.dtb.o imx50-kindle-d01200.dtb.o imx50-kindle-ey21.dtb.o
>>  lwl-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK) += imx51-genesi-efika-sb.dtb.o
>> diff --git a/arch/arm/dts/exynos8895-dreamlte.dts b/arch/arm/dts/exynos8895-dreamlte.dts
>> new file mode 100644
>> index 00000000..36b5271e
>> --- /dev/null
>> +++ b/arch/arm/dts/exynos8895-dreamlte.dts
>> @@ -0,0 +1,13 @@
>> +// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
>> +/*
>> + * Samsung Galaxy S8 (dreamlte/SM-G950F) barebox device tree source
>> + *
>> + * Copyright (c) 2025, Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
>> + */
>> +
>> +/dts-v1/;
>> +#include <arm64/exynos/exynos8895-dreamlte.dts>
>> +
>> +/ {
>> +	barebox,disable-deep-probe;
> Why not enable it?

Honestly, I other devices doing that and didn't dig too deep into what
it's meant for. Will test.

Thanks and best regards,
Ivaylo

>
>
> Cheers,
> Ahmad
>



