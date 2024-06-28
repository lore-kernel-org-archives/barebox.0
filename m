Delivery-date: Fri, 28 Jun 2024 15:57:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNC6p-00Dh4D-1B
	for lore@lore.pengutronix.de;
	Fri, 28 Jun 2024 15:57:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNC6o-0003sR-Mg
	for lore@pengutronix.de; Fri, 28 Jun 2024 15:57:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:Cc:To:Subject:
	Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lanLVEfxQ4yJc9TnC/Phi41gxfCNnKJzsdPVPT+5DbA=; b=jm9zT6jgWg/DALfTWpeN3PtvmN
	tcnhrl3plmf8SClVejKLmTDRM4zn5rSWocXbDfKEG7pbTCoCKHeW5SnZafd8IwsgTHBaaNWAGrI/F
	xsWIJ7TTlTTQvLSKvk7h3f7PqhhOUJC78f1dPThjLFAeYyOLaRI9/CibOfqaFCoBFNo9Rf+nP3e6U
	sIR4BK/0WfwLA3raljxKVNi8/FN+3TKu1MIiW+jKVb2RiFmAi08IKbcYiwO8P+fB7cuZQ6lvIqCUJ
	ZC4XHmPXIf+tv/hForwcwtctsY9OHq2vFG1/ytZx6P0sbba3NrYSNS8varGXpb8bIEYRgft4I9yKB
	Vwmx/kZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNC6D-0000000Dt7s-48vi;
	Fri, 28 Jun 2024 13:57:13 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNC6B-0000000Dt7H-0hVW
	for barebox@lists.infradead.org;
	Fri, 28 Jun 2024 13:57:12 +0000
Received: by mail-pj1-x1031.google.com with SMTP id 98e67ed59e1d1-2c7c61f7ee3so439477a91.1
        for <barebox@lists.infradead.org>; Fri, 28 Jun 2024 06:57:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719583030; x=1720187830; darn=lists.infradead.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lanLVEfxQ4yJc9TnC/Phi41gxfCNnKJzsdPVPT+5DbA=;
        b=exo1oT8irWCpIHuM5O100mcQLY1GxFiqyt+h+toTSotzXn9hKC9c1BNFmVvUcVB3Ez
         UetgKJWgZQ1fmcndHbgNOdv/L05iUnKixVA0jHf9Q54McH0dPCkoF5/3lGvAFx50LE6M
         Ua1cFCpVHwxwiZj4d5m1jxyuZ7bc/+7WfoF7+9/xBclpAZhmDVKkPI5YpIO1Ie10P9qg
         XtBnVOaUOFKIG8+i5IM+nvHPFeYSXDEEeJtd/k0pq7LF9aDW67IYv7u3GLnxnGSx/E/x
         /itxhU8k4Wh5bn+9dAsxFi0c1UvbbZNqqreMBsVjSWm9JWzKmjiD+jHkYqOYTU3K7Jfq
         YUGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719583030; x=1720187830;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lanLVEfxQ4yJc9TnC/Phi41gxfCNnKJzsdPVPT+5DbA=;
        b=HrEh+5/LSB5CxvXJevcLdQ3p7IJQgWOyYZgR4n62HKaCOz7N8+fxGMwtr+3wsorfYz
         4qpxI9uKSfq4qyiDreV2EisSTcv0Fuqs28pltvBOxzugPRM9gHRP0hHharNZc/zG5iyy
         AMnfKiToHn1yfo9sG8KYwqdHZOWoMnsVy4E8mE2i5l5zL/3OUbOgeMTmvG6sDelvyJSZ
         +MJZQgaS/b31mTI6/zXnsdM+Ggi+8xwYm+PVZKNnGfAkaKYNH2hGUkOj+8c7fKe0qhnw
         00wnWAeOcFTl3QCzL275ZlxF0UDE8svOCXaPUq939g0IamgrxeIg57UjIgH35kEVbyNz
         Jfxg==
X-Gm-Message-State: AOJu0YwJ26NlqcX/n8pAINpV7O/rsy9Vm5fuvS3Sl6PAMIL+YCvSgvPW
	GB/YsuaTyQWPMggV8u85yFAr5Fdtj0PV+WN5JIbX2cBdCO1961sN8kAPAZUnwkx/NiSGoOCwJGX
	SuWMVsEAKT/aF2U8cZFFzuX6eyAL3u0zpwZ8=
X-Google-Smtp-Source: AGHT+IE7ZrG+E/iToB3U7/pWs2uzXQQQHugKXhPZe/QtC9MCpN4lL8DJLYf6jHqHvnbj19fqs64Y3GAE1Wj695tYgqs=
X-Received: by 2002:a17:90a:cf86:b0:2c2:ee5c:35a4 with SMTP id
 98e67ed59e1d1-2c861131399mr14923920a91.0.1719583030126; Fri, 28 Jun 2024
 06:57:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvS2DWF-xLSCe0y1kib_kOSrdkWPJC6bGm+7Yuv7wxJ3tA@mail.gmail.com>
 <f61c8c68-77f0-400a-b99c-724b7820a44e@pengutronix.de> <CAP1tNvTNzi4Br3LE+yAtkU7vuRDfmfD_hmUj0uFwUL9E9fDOQA@mail.gmail.com>
 <b6b0496f-fb0f-487b-8bfb-b901a41acbb8@pengutronix.de>
In-Reply-To: <b6b0496f-fb0f-487b-8bfb-b901a41acbb8@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 28 Jun 2024 16:56:57 +0300
Message-ID: <CAP1tNvSVAxR645jqL6YQeJSggiqtmAk8aCZjPo7SDW_2S5r00w@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_065711_228701_E679C43A 
X-CRM114-Status: GOOD (  15.95  )
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

I changed the patch to reflect this for rk3568 rather than rk3588.
The patch doesn't help. I tried it with and without the
CONFIG_DIGEST_SHA256_ARM64_CE option.

...
> >>> I'm trying to use the open source TF-A implementation for the Rockchip
> >>> rk3568 CPU:
> >>> https://github.com/ARM-software/arm-trusted-firmware/commit/9fd9f1d024872b440e3906eded28037330b6f422
...
> >> Assuming this stack trace is accurate, it looks like the crypto extensions
> >> use may upset the CPU? Do you have CONFIG_DIGEST_SHA256_ARM64_CE enabled?
> >> Does this issue happen when you disable it?
> >
> > The error is still here. New log (without CONFIG_DIGEST_SHA256_ARM64_CE) below.
> >
> >> Did you call rk3588_lowlevel_init() in your entry point?
> > RK3568 :)
> > Yes, it called from rk3568_barebox_entry().
> >
> >
> > Board: Diasom DS-RK3568-EVB
> > deep-probe: supported due to diasom,ds-rk3568-evb
> > rockchip-dmc memory-controller.of: Detected memory size: 0x0000000200000000
> > netconsole: registered as netconsole-1
> > rk808 rk8090: chip id: 0x8090
> > vdd_npu: Bringing 500000uV into 850000-850000uV
> > vdda0v9_image: Bringing 600000uV into 900000-900000uV
> > vcca1v8_image: Bringing 600000uV into 1800000-1800000uV
> > rockchip_saradc fe720000.saradc@fe720000.of: registered as aiodev0
> > Boot source: usb, instance 0
> > psci psci.of: detected version 1.1
> > xHCI xHCI0: USB XHCI 1.10
> > mdio_bus: miibus0: probed
> > dw_mmc fe2b0000.mmc@fe2b0000.of: registered as mmc0
> > rk3568-dwcmshc-sdhci fe310000.mmc@fe310000.of: registered as mmc1
> > mmc1: detected MMC card version 5.1
> > mmc1: registered mmc1.boot0
> > mmc1: registered mmc1.boot1
> > mmc1: registered mmc1
> > mdio_bus: miibus1: probed
> > Setup Machine ID from EMMC serial: 30948368
> > Unknown/Uncategorized exception (ESR 0x02000000) at 0xbf96b7282ba34bf3
> > elr: 00000000efd7da48 lr : 00000000efd7d7e0
> > x0 : 00000000afdc1b10 x1 : 00000000afdc1b70
> > x2 : 0000000000000000 x3 : 0000000000000020
> > x4 : 0000000000000000 x5 : 00000000efff7dd8
> > x6 : 00000000ca62c1d6 x7 : 0000000000000000
> > x8 : 00000000afdc1b68 x9 : 0000000000000000
> > x10: 0000000000000000 x11: 00000000fffffff6
> > x12: 00000000fffffff6 x13: 0000000000000020
> > x14: 0000000000000000 x15: 0000000000000003
> > x16: 00000000efff7968 x17: 0000000000000003
> > x18: 00000000efff7ef0 x19: 0000000000000001
> > x20: 00000000afdc1b30 x21: 00000000afdc1b10
> > x22: 00000000afdc1b30 x23: 00000000ef600000
> > x24: 0000000000b35a40 x25: 0000000000080051
> > x26: 0000000000106858 x27: 00000000effe0000
> > x28: 0000000000000000 x29: 00000000efff7e40
> >
> > Call trace:
> > [<efd7da48>] (sha1_ce_transform+0x64/0x224) from [<efd7d8b0>]
> > (sha1_ce_final+0xbc/0x114)
> > [<efd7d8b0>] (sha1_ce_final+0xbc/0x114) from [<efd0297c>]
> > (machine_id_set_globalvar+0x7c/0x100)
> > [<efd0297c>] (machine_id_set_globalvar+0x7c/0x100) from [<efd01adc>]
> > (start_barebox+0x60/0x8c)
> > [<efd01adc>] (start_barebox+0x60/0x8c) from [<efd7bf1c>]
> > (barebox_non_pbl_start+0x11c/0x150)
> > [<efd7bf1c>] (barebox_non_pbl_start+0x11c/0x150) from [<efd0000c>]
> > (__bare_init_start+0x0/0x14)
> > [<efd0000c>] (__bare_init_start+0x0/0x14) from [<00b01d8c>] (0xb01d8c)
> > [<00b01d8c>] (0xb01d8c) from [<00b01640>] (0xb01640)
> > panic: unhandled exception
> > ### ERROR ### Please RESET the board ###
>
> I expect that without CONFIG_DIGEST_SHA1_ARM64_CE, the crash goes away?
> If yes, can you try out the patch I just Cc'd you on?


