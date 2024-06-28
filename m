Delivery-date: Fri, 28 Jun 2024 14:18:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNAYx-00Deju-1G
	for lore@lore.pengutronix.de;
	Fri, 28 Jun 2024 14:18:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNAYw-00027R-Lf
	for lore@pengutronix.de; Fri, 28 Jun 2024 14:18:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wXlehFlOGxmoNF7pOSEoVf8ySM45nykZO7schIEs1eY=; b=iuQafttcZI6tztOBbRYBN7yyj7
	HIeLctit5YeNzUoXXe6Ul0k+mD/TIqQs6oKUC3Q86lqLSe4kymiZSYb9XgGZ4Dfww96Rq5nVxBY8B
	nBjTm5ICUpfIS3VBSTZWD84i3oLtx7qhMVgljcSlE9GTpV5G9UgsqFnIHnmRpCzxwVcKTEJwl4lCR
	4Gp1ZeGQWS8h1WVSCMSwfT5Vl4d5/PyC8cgzBvYrQJPxvA2fCOJnqHTSrtZbDD3SC6FQ7120UVtRc
	rQ1dCNlovsNnhoJnxg3zyOkT2piOsB7l2qFNEfEz1rj8XYgJzawEFUWxllb0Eu2XFDAv7sS7wsVY4
	tQaxQERA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNAYL-0000000Df5w-3Zop;
	Fri, 28 Jun 2024 12:18:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNAYH-0000000Df4R-3dGc
	for barebox@lists.infradead.org;
	Fri, 28 Jun 2024 12:18:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sNAYF-0001tg-4a; Fri, 28 Jun 2024 14:18:03 +0200
Message-ID: <f61c8c68-77f0-400a-b99c-724b7820a44e@pengutronix.de>
Date: Fri, 28 Jun 2024 14:18:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Alexander Shiyan <eagle.alexander923@gmail.com>,
 Barebox List <barebox@lists.infradead.org>
References: <CAP1tNvS2DWF-xLSCe0y1kib_kOSrdkWPJC6bGm+7Yuv7wxJ3tA@mail.gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <CAP1tNvS2DWF-xLSCe0y1kib_kOSrdkWPJC6bGm+7Yuv7wxJ3tA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_051805_927574_24D678D4 
X-CRM114-Status: GOOD (  21.40  )
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

Hello Alexander,

On 28.06.24 11:39, Alexander Shiyan wrote:
> Hello All.
> 
> I'm trying to use the open source TF-A implementation for the Rockchip
> rk3568 CPU:
> https://github.com/ARM-software/arm-trusted-firmware/commit/9fd9f1d024872b440e3906eded28037330b6f422

Nice, didn't know that there is upstream support now.

> The barebox starts to launch, but an error occurs, the meaning of
> which I don’t know how to interpret.
> If I use Rockchip's RKBIN binary this doesn't happen.
> 
> Has anyone tried running something like this?
> What does this error mean?

We still use the blob at Pengutronix, but would be interested
to switch to upstream TF-A, now that this is available.

> 
> <DDR initialization part skipped>
> rockchip-dmc: rockchip_sdram_size(reg2=1000ea01, reg3=30000031)
> rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 17 cs1_row 17
> bw 2 row_3_4 0
> rockchip-dmc: rk3568_ram0_size() = 4026531840
> Loading phdr 0 to 0x0000000000040000 (98526 bytes)
> Loading phdr 1 to 0x00000000fdcd0000 (112 bytes)
> Loading phdr 2 to 0x0000000000000000 (0 bytes)
> NOTICE:  BL31: v2.11.0(release):v2.11.0-136-ga6e01be25
> NOTICE:  BL31: Built : 06:28:20, Jun 18 2024
> NOTICE:  BL31: Rockchip release version: v1.0
>> rockchip-dmc: rockchip_sdram_size(reg2=1000ea01, reg3=30000031)
> rockchip-dmc: rank 2 cs0_col 10 cs1_col 10 bk 3 cs0_row 17 cs1_row 17
> bw 2 row_3_4 0
> rockchip-dmc: rk3568_ram0_size() = 4026531840
> uncompress.c: memory at 0x00a00000, size 0xef600000
> mmu: enabling MMU, ttb @ 0xeffe0000
> uncompress.c: uncompressing barebox binary at 0x0000000000b55ce0 (size
> 0x000800a8) to 0xefd00000 (uncompressed size: 0x00106310)
> uncompress.c: jumping to uncompressed image at 0x00000000efd00000
> deep-probe: supported due to diasom,ds-rk3568-evb
> Switch to console [cs0]
> 
> barebox 2024.04.0-00177-gce195ae78894-dirty #22 Tue Jun 25 21:09:41 MSK 2024
> 
> Board: Diasom DS-RK3568-EVB
> deep-probe: supported due to diasom,ds-rk3568-evb
> rockchip-dmc memory-controller.of: Detected memory size: 0x0000000200000000
> netconsole: registered as netconsole-1
> rk808 rk8090: chip id: 0x8090
> vdd_npu: Bringing 500000uV into 850000-850000uV
> vdda0v9_image: Bringing 600000uV into 900000-900000uV
> vcca1v8_image: Bringing 600000uV into 1800000-1800000uV
> rockchip_saradc fe720000.saradc@fe720000.of: registered as aiodev0
> Boot source: usb, instance 0
> psci psci.of: detected version 1.1
> xHCI xHCI0: USB XHCI 1.10
> mdio_bus: miibus0: probed
> dw_mmc fe2b0000.mmc@fe2b0000.of: registered as mmc0
> rk3568-dwcmshc-sdhci fe310000.mmc@fe310000.of: registered as mmc1
> mmc1: detected MMC card version 5.1
> mmc1: registered mmc1.boot0
> mmc1: registered mmc1.boot1
> mmc1: registered mmc1
> mdio_bus: miibus1: probed
> Setup Machine ID from EMMC serial: 30948368

Nice! I think this would be cool to have upstream in barebox:
If the SD/eMMC is the boot medium and there is no SoC machine ID, take the
boot medium machine id.

> Unknown/Uncategorized exception (ESR 0x02000000) at 0xbf96b728aba34bf1
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
> x24: 0000000000b35a40 x25: 00000000000800a8
> x26: 0000000000106310 x27: 00000000effe0000
> x28: 0000000000000000 x29: 00000000efff7e40
> 
> Call trace:
> [<efd7da48>] (cmd_parted_help+0xefce25ef/0xefd00281) from [<efd7d8b0>]
> (cmd_parted_help+0xefce2457/0xefd00281)
> [<efd7d8b0>] (cmd_parted_help+0xefce2457/0xefd00281) from [<efd0297c>]
> (machine_id_set_globalvar+0x7c/0x100)

These are completely bogus as one can see from the absurdly large offsets.

> [<efd0297c>] (machine_id_set_globalvar+0x7c/0x100) from [<efd01adc>]
> (start_barebox+0x60/0x8c)
> [<efd01adc>] (start_barebox+0x60/0x8c) from [<efd7bf1c>]
> (cmd_parted_help+0xefce0ac3/0xefd00281)
> [<efd7bf1c>] (cmd_parted_help+0xefce0ac3/0xefd00281) from [<efd0000c>]
> (__bare_init_start+0x0/0x14)
> [<efd0000c>] (__bare_init_start+0x0/0x14) from [<00b01d8c>] (0xb01d8c)
> [<00b01d8c>] (0xb01d8c) from [<00b01640>] (0xb01640)
> panic: unhandled exception
> ### ERROR ### Please RESET the board ###

Assuming this stack trace is accurate, it looks like the crypto extensions
use may upset the CPU? Do you have CONFIG_DIGEST_SHA256_ARM64_CE enabled?
Does this issue happen when you disable it?

Did you call rk3588_lowlevel_init() in your entry point?

Cheers,
Ahmad

> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



