Delivery-date: Fri, 28 Jun 2024 14:48:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNB1H-00DfMN-1U
	for lore@lore.pengutronix.de;
	Fri, 28 Jun 2024 14:48:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNB1E-0007vz-Ik
	for lore@pengutronix.de; Fri, 28 Jun 2024 14:48:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SjtvLI8uEJoAe7XnYjgOaHfjVBxFcKyXgRUmhswQSTQ=; b=qFUv9A+S3MDyBt1R5wPTo3TLlv
	2yNRxwHWMprF7IA1VkysSdn3mgfjm0W/6klxgnVng2p2/L4i3pmy9RFxI6ZirOqSRnUDNaJKpEXW0
	A5ONHRYiF50+XLOPtruWxHfHoWf5XVU7rnflmeF9Lenf1jr50kzjoelBzC1jHTzmrAmLu1Pl9ikuZ
	4b6HrbdaOQ/VnjprX7erHqJJMHt/OXjdpFW8IpNMzPshZUTqLXi9+AjBZ/EY4rUOc8nWAi3ScCvlX
	7cyMiQGdt8yIk9J1dAr/KXMluQSSwMXf5cA8F8Qg3fV08JG4MgysrUV94WBLxMjjDihm2iLGSxizK
	y9Dv3uPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNB0i-0000000DjmU-1bZ2;
	Fri, 28 Jun 2024 12:47:28 +0000
Received: from mail-pj1-x102c.google.com ([2607:f8b0:4864:20::102c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNB0f-0000000DjlL-18O2
	for barebox@lists.infradead.org;
	Fri, 28 Jun 2024 12:47:26 +0000
Received: by mail-pj1-x102c.google.com with SMTP id 98e67ed59e1d1-2c927152b4bso378371a91.2
        for <barebox@lists.infradead.org>; Fri, 28 Jun 2024 05:47:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719578844; x=1720183644; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=SjtvLI8uEJoAe7XnYjgOaHfjVBxFcKyXgRUmhswQSTQ=;
        b=DZahJ5sHMge3/mHO8dbLnFtUOrfGGzkEXVDazRCqw3YOfjVnsg1Nbd3bmonTUwbZ1N
         teFgMdKMo8WFsEcCT8/afPPg+lP5lCgIgjvD+WXWFVikxfoF3hOgSxk7cc5ZoEtUIxrz
         FCGdgJDFoca5FghusDs3NLOtxIxBFBFTu03f6vwfH2L6Xj1MpP/r9AHLVBMAsMWm0O0+
         udNRh6/BgARfUFLkqCFoF4rESwTsvSaXhSBiAVlx05IZanWPt2KstxWFngMCg41Eu/qU
         Wi6cm5qc/vEcVo0CYQuiRQk18/5G0DXOdQ14J931MoJk1F6Q53eUUkqXndnoYf9JEn3E
         /Zww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719578844; x=1720183644;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=SjtvLI8uEJoAe7XnYjgOaHfjVBxFcKyXgRUmhswQSTQ=;
        b=tBrSA5MUbwj3ppepaKwf643ycqWi/qfsO9jxL6fxLY3+f9QPNuwswl+uUxT4dKaVUc
         yFbCX26mhZTDpcRFNRzaCNQndtnO2TWjMxLAFfHLmvqbBFN8gntzvCA6qZQifd29vMgf
         vk3mSXs0epEdAdbZgyIwoQ6Id92/lBhUwqhD4+rVl6mEAonrJ22y/qEgqpcQTv+u6ub3
         oewkIrSb9pjDy7NaXpnd2H91vUt/ofEcDaffqSPz55MJjfaoHlJYSuGvP5SJDHk/5EJ4
         7s75yH2bH1qHUbxbynkmCNqCSTG5Mp58FZ5pF8a8SAnf1ZU1e3VyPvy9O8Ygtesjldve
         fCNA==
X-Gm-Message-State: AOJu0Yyg9h4iZQZ6+yGX9I/qc/3fPRnQXvBCttGKK6mNi3C7gxunGs/9
	RvDmntEPM/5RbkeJ9MGzb9M2V09ikGSKmKnDiPNfT00WZu5bvRT4FFjYucxf96aq9Sz0mb3pfAG
	JR3rVaaBnG0CDd4DbhV0nZ1SHhUPtd9uEzL++Tg==
X-Google-Smtp-Source: AGHT+IGC/WDUwgHEo3xyvv2dGTpMlRhS0WBHnrCSWOhD/UtFj2lkqmWmwGtZ1NSwA5SBp/phCpY7hKnHxhTYjVvWizY=
X-Received: by 2002:a17:90b:17c9:b0:2c8:647:1708 with SMTP id
 98e67ed59e1d1-2c861214411mr14245101a91.7.1719578844324; Fri, 28 Jun 2024
 05:47:24 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvS2DWF-xLSCe0y1kib_kOSrdkWPJC6bGm+7Yuv7wxJ3tA@mail.gmail.com>
 <f61c8c68-77f0-400a-b99c-724b7820a44e@pengutronix.de>
In-Reply-To: <f61c8c68-77f0-400a-b99c-724b7820a44e@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 28 Jun 2024 15:47:11 +0300
Message-ID: <CAP1tNvTNzi4Br3LE+yAtkU7vuRDfmfD_hmUj0uFwUL9E9fDOQA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_054725_338508_BB064237 
X-CRM114-Status: GOOD (  13.49  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: rk3568 boot fail with TF-A binary
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Ahmad.

> > I'm trying to use the open source TF-A implementation for the Rockchip
> > rk3568 CPU:
> > https://github.com/ARM-software/arm-trusted-firmware/commit/9fd9f1d024872b440e3906eded28037330b6f422
...
> > Setup Machine ID from EMMC serial: 30948368
>
> Nice! I think this would be cool to have upstream in barebox:
> If the SD/eMMC is the boot medium and there is no SoC machine ID, take the
> boot medium machine id.

This is a useful feature, but I don't know how best to package it as a
patch so that
it can be used from different boards. Can you take it for yourself?
https://github.com/MacroGroup/barebox/blob/macro/arch/arm/boards/diasom-rk3568-evb/board.c#L123

> Assuming this stack trace is accurate, it looks like the crypto extensions
> use may upset the CPU? Do you have CONFIG_DIGEST_SHA256_ARM64_CE enabled?
> Does this issue happen when you disable it?

The error is still here. New log (without CONFIG_DIGEST_SHA256_ARM64_CE) below.

> Did you call rk3588_lowlevel_init() in your entry point?
RK3568 :)
Yes, it called from rk3568_barebox_entry().


Board: Diasom DS-RK3568-EVB
deep-probe: supported due to diasom,ds-rk3568-evb
rockchip-dmc memory-controller.of: Detected memory size: 0x0000000200000000
netconsole: registered as netconsole-1
rk808 rk8090: chip id: 0x8090
vdd_npu: Bringing 500000uV into 850000-850000uV
vdda0v9_image: Bringing 600000uV into 900000-900000uV
vcca1v8_image: Bringing 600000uV into 1800000-1800000uV
rockchip_saradc fe720000.saradc@fe720000.of: registered as aiodev0
Boot source: usb, instance 0
psci psci.of: detected version 1.1
xHCI xHCI0: USB XHCI 1.10
mdio_bus: miibus0: probed
dw_mmc fe2b0000.mmc@fe2b0000.of: registered as mmc0
rk3568-dwcmshc-sdhci fe310000.mmc@fe310000.of: registered as mmc1
mmc1: detected MMC card version 5.1
mmc1: registered mmc1.boot0
mmc1: registered mmc1.boot1
mmc1: registered mmc1
mdio_bus: miibus1: probed
Setup Machine ID from EMMC serial: 30948368
Unknown/Uncategorized exception (ESR 0x02000000) at 0xbf96b7282ba34bf3
elr: 00000000efd7da48 lr : 00000000efd7d7e0
x0 : 00000000afdc1b10 x1 : 00000000afdc1b70
x2 : 0000000000000000 x3 : 0000000000000020
x4 : 0000000000000000 x5 : 00000000efff7dd8
x6 : 00000000ca62c1d6 x7 : 0000000000000000
x8 : 00000000afdc1b68 x9 : 0000000000000000
x10: 0000000000000000 x11: 00000000fffffff6
x12: 00000000fffffff6 x13: 0000000000000020
x14: 0000000000000000 x15: 0000000000000003
x16: 00000000efff7968 x17: 0000000000000003
x18: 00000000efff7ef0 x19: 0000000000000001
x20: 00000000afdc1b30 x21: 00000000afdc1b10
x22: 00000000afdc1b30 x23: 00000000ef600000
x24: 0000000000b35a40 x25: 0000000000080051
x26: 0000000000106858 x27: 00000000effe0000
x28: 0000000000000000 x29: 00000000efff7e40

Call trace:
[<efd7da48>] (sha1_ce_transform+0x64/0x224) from [<efd7d8b0>]
(sha1_ce_final+0xbc/0x114)
[<efd7d8b0>] (sha1_ce_final+0xbc/0x114) from [<efd0297c>]
(machine_id_set_globalvar+0x7c/0x100)
[<efd0297c>] (machine_id_set_globalvar+0x7c/0x100) from [<efd01adc>]
(start_barebox+0x60/0x8c)
[<efd01adc>] (start_barebox+0x60/0x8c) from [<efd7bf1c>]
(barebox_non_pbl_start+0x11c/0x150)
[<efd7bf1c>] (barebox_non_pbl_start+0x11c/0x150) from [<efd0000c>]
(__bare_init_start+0x0/0x14)
[<efd0000c>] (__bare_init_start+0x0/0x14) from [<00b01d8c>] (0xb01d8c)
[<00b01d8c>] (0xb01d8c) from [<00b01640>] (0xb01640)
panic: unhandled exception
### ERROR ### Please RESET the board ###


