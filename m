Delivery-date: Fri, 28 Jun 2024 16:28:01 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNCa1-00Dhsb-0H
	for lore@lore.pengutronix.de;
	Fri, 28 Jun 2024 16:28:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNCa0-0000rc-8G
	for lore@pengutronix.de; Fri, 28 Jun 2024 16:28:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OaIBrvMd0JOm0wMXFeJIWn60AcF0cytGouwpBJ5uyEQ=; b=nVeRMcEkLxVplH2TWUZofNYNpB
	hjaWtjwFpM1D8iFZegTUTrshnAVdCPUY3jF4BtW4zQ5zQ60jAr18GHoXz3oe3OSMq7o5WBF8aciFu
	Yj59VEHLfRd/g7dfZYrgdwff5/V9IiT4r1JW60oWVMiY4ORF0f85mdVE7b3gbxfXS1ldIWilg3Qo1
	U1wPUfpgIYmVeC4ECrQVGQ4/X2wg//FzeH/HVx9x9blRc7+Omt13mnyfMBeRP8ltvBWF9SHhZ2qtt
	VaarJN8up12OJ9jBV0yhPR7DCvUGo78R6UZ+UfNynxfZtQCVp0kpibJR++BuaFlViSaCwxiAX69rT
	H9ArLctw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCZR-0000000E0Qa-2Fft;
	Fri, 28 Jun 2024 14:27:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCZP-0000000E0Pc-0YAx
	for barebox@lists.infradead.org;
	Fri, 28 Jun 2024 14:27:24 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sNCZN-0000la-Ot; Fri, 28 Jun 2024 16:27:21 +0200
Message-ID: <b2937c4e-b4e4-4e3a-8362-06708d65c464@pengutronix.de>
Date: Fri, 28 Jun 2024 16:27:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>
References: <CAP1tNvS2DWF-xLSCe0y1kib_kOSrdkWPJC6bGm+7Yuv7wxJ3tA@mail.gmail.com>
 <f61c8c68-77f0-400a-b99c-724b7820a44e@pengutronix.de>
 <CAP1tNvTNzi4Br3LE+yAtkU7vuRDfmfD_hmUj0uFwUL9E9fDOQA@mail.gmail.com>
 <b6b0496f-fb0f-487b-8bfb-b901a41acbb8@pengutronix.de>
 <CAP1tNvSVAxR645jqL6YQeJSggiqtmAk8aCZjPo7SDW_2S5r00w@mail.gmail.com>
 <6893ea56-5154-4911-85b3-9ea55522e60f@pengutronix.de>
 <CAP1tNvQkAPysrjiayLGF7zNKGMgrW8FRZiEH1zq-ssY-N7crNQ@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvQkAPysrjiayLGF7zNKGMgrW8FRZiEH1zq-ssY-N7crNQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_072723_197097_1A3A2DEA 
X-CRM114-Status: GOOD (  17.60  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: rk3568 boot fail with TF-A binary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 28.06.24 16:03, Alexander Shiyan wrote:
> Yes.
> Call trace is different, but the barebox still crashes.
> 
> Unknown/Uncategorized exception (ESR 0x02000000) at 0xbf92b728aba34bf3
> elr: 00000000efd7da48 lr : 00000000efd7d7e0
> x0 : 00000000afdc1b10 x1 : 00000000afdc1b70
> x2 : 0000000000000000 x3 : 0000000000000020
> x4 : 0000000000000000 x5 : 00000000efff7dd8
> x6 : 00000000ca62c1d6 x7 : 0000000000000000
> x8 : 00000000afdc1b68 x9 : 0000000000000000
> x10: 0000000000000000 x11: 00000000fffffff6
> x12: 00000000fffffff6 x13: 0000000000000020
> x14: 0000000000000000 x15: 0000000000000003
> x16: 00000000efff7968 x17: 0000000000000003
> x18: 00000000efff7ef0 x19: 0000000000000001
> x20: 00000000afdc1b30 x21: 00000000afdc1b10
> x22: 00000000afdc1b30 x23: 00000000ef600000
> x24: 0000000000b35a40 x25: 0000000000080051
> x26: 0000000000106858 x27: 00000000effe0000
> x28: 0000000000000000 x29: 00000000efff7e40
> 
> Call trace:
> [<efd7da48>] (sha1_ce_transform+0x64/0x224) from [<efd7d8b0>]
> (sha1_ce_final+0xbc/0x114)

sha1_ce_transform is defined in sha1-ce-core.S and that's only built
when CONFIG_DIGEST_SHA1_ARM64_CE is enabled, so I don't understand
how it could be that you disable CONFIG_DIGEST_SHA1_ARM64_CE
(not SHA256) and still run into that error?

Cheers,
Ahmad 

> [<efd7d8b0>] (sha1_ce_final+0xbc/0x114) from [<efd0297c>]
> (machine_id_set_globalvar+0x7c/0x100)
> [<efd0297c>] (machine_id_set_globalvar+0x7c/0x100) from [<efd01adc>]
> (start_barebox+0x60/0x8c)
> [<efd01adc>] (start_barebox+0x60/0x8c) from [<efd7bf1c>]
> (barebox_non_pbl_start+0x11c/0x150)
> [<efd7bf1c>] (barebox_non_pbl_start+0x11c/0x150) from [<efd0000c>]
> (__bare_init_start+0x0/0x14)
> [<efd0000c>] (__bare_init_start+0x0/0x14) from [<00b01d94>] (0xb01d94)
> [<00b01d94>] (0xb01d94) from [<00b01648>] (0xb01648)
> panic: unhandled exception
> ### ERROR ### Please RESET the board ###
> 
> пт, 28 июн. 2024 г. в 16:59, Ahmad Fatoum <a.fatoum@pengutronix.de>:
>>
>> On 28.06.24 15:56, Alexander Shiyan wrote:
>>> I changed the patch to reflect this for rk3568 rather than rk3588.
>>> The patch doesn't help. I tried it with and without the
>>> CONFIG_DIGEST_SHA256_ARM64_CE option.
>>
>> Do you still get a crash when CONFIG_DIGEST_SHA1_ARM64_CE is disabled?
>>
>> Cheers,
>> Ahmad
>>
>>>
>>> ...
>>>>>>> I'm trying to use the open source TF-A implementation for the Rockchip
>>>>>>> rk3568 CPU:
>>>>>>> https://github.com/ARM-software/arm-trusted-firmware/commit/9fd9f1d024872b440e3906eded28037330b6f422
>>> ...
>>>>>> Assuming this stack trace is accurate, it looks like the crypto extensions
>>>>>> use may upset the CPU? Do you have CONFIG_DIGEST_SHA256_ARM64_CE enabled?
>>>>>> Does this issue happen when you disable it?
>>>>>
>>>>> The error is still here. New log (without CONFIG_DIGEST_SHA256_ARM64_CE) below.
>>>>>
>>>>>> Did you call rk3588_lowlevel_init() in your entry point?
>>>>> RK3568 :)
>>>>> Yes, it called from rk3568_barebox_entry().
>>>>>
>>>>>
>>>>> Board: Diasom DS-RK3568-EVB
>>>>> deep-probe: supported due to diasom,ds-rk3568-evb
>>>>> rockchip-dmc memory-controller.of: Detected memory size: 0x0000000200000000
>>>>> netconsole: registered as netconsole-1
>>>>> rk808 rk8090: chip id: 0x8090
>>>>> vdd_npu: Bringing 500000uV into 850000-850000uV
>>>>> vdda0v9_image: Bringing 600000uV into 900000-900000uV
>>>>> vcca1v8_image: Bringing 600000uV into 1800000-1800000uV
>>>>> rockchip_saradc fe720000.saradc@fe720000.of: registered as aiodev0
>>>>> Boot source: usb, instance 0
>>>>> psci psci.of: detected version 1.1
>>>>> xHCI xHCI0: USB XHCI 1.10
>>>>> mdio_bus: miibus0: probed
>>>>> dw_mmc fe2b0000.mmc@fe2b0000.of: registered as mmc0
>>>>> rk3568-dwcmshc-sdhci fe310000.mmc@fe310000.of: registered as mmc1
>>>>> mmc1: detected MMC card version 5.1
>>>>> mmc1: registered mmc1.boot0
>>>>> mmc1: registered mmc1.boot1
>>>>> mmc1: registered mmc1
>>>>> mdio_bus: miibus1: probed
>>>>> Setup Machine ID from EMMC serial: 30948368
>>>>> Unknown/Uncategorized exception (ESR 0x02000000) at 0xbf96b7282ba34bf3
>>>>> elr: 00000000efd7da48 lr : 00000000efd7d7e0
>>>>> x0 : 00000000afdc1b10 x1 : 00000000afdc1b70
>>>>> x2 : 0000000000000000 x3 : 0000000000000020
>>>>> x4 : 0000000000000000 x5 : 00000000efff7dd8
>>>>> x6 : 00000000ca62c1d6 x7 : 0000000000000000
>>>>> x8 : 00000000afdc1b68 x9 : 0000000000000000
>>>>> x10: 0000000000000000 x11: 00000000fffffff6
>>>>> x12: 00000000fffffff6 x13: 0000000000000020
>>>>> x14: 0000000000000000 x15: 0000000000000003
>>>>> x16: 00000000efff7968 x17: 0000000000000003
>>>>> x18: 00000000efff7ef0 x19: 0000000000000001
>>>>> x20: 00000000afdc1b30 x21: 00000000afdc1b10
>>>>> x22: 00000000afdc1b30 x23: 00000000ef600000
>>>>> x24: 0000000000b35a40 x25: 0000000000080051
>>>>> x26: 0000000000106858 x27: 00000000effe0000
>>>>> x28: 0000000000000000 x29: 00000000efff7e40
>>>>>
>>>>> Call trace:
>>>>> [<efd7da48>] (sha1_ce_transform+0x64/0x224) from [<efd7d8b0>]
>>>>> (sha1_ce_final+0xbc/0x114)
>>>>> [<efd7d8b0>] (sha1_ce_final+0xbc/0x114) from [<efd0297c>]
>>>>> (machine_id_set_globalvar+0x7c/0x100)
>>>>> [<efd0297c>] (machine_id_set_globalvar+0x7c/0x100) from [<efd01adc>]
>>>>> (start_barebox+0x60/0x8c)
>>>>> [<efd01adc>] (start_barebox+0x60/0x8c) from [<efd7bf1c>]
>>>>> (barebox_non_pbl_start+0x11c/0x150)
>>>>> [<efd7bf1c>] (barebox_non_pbl_start+0x11c/0x150) from [<efd0000c>]
>>>>> (__bare_init_start+0x0/0x14)
>>>>> [<efd0000c>] (__bare_init_start+0x0/0x14) from [<00b01d8c>] (0xb01d8c)
>>>>> [<00b01d8c>] (0xb01d8c) from [<00b01640>] (0xb01640)
>>>>> panic: unhandled exception
>>>>> ### ERROR ### Please RESET the board ###
>>>>
>>>> I expect that without CONFIG_DIGEST_SHA1_ARM64_CE, the crash goes away?
>>>> If yes, can you try out the patch I just Cc'd you on?
>>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



