Delivery-date: Fri, 28 Jun 2024 16:56:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sND16-00DiT8-1d
	for lore@lore.pengutronix.de;
	Fri, 28 Jun 2024 16:56:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sND15-0004ax-H9
	for lore@pengutronix.de; Fri, 28 Jun 2024 16:56:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C6d5hny5y+T67ts686qK5X7fIBN/rIqRqe2s4HFtuRk=; b=O7ndQZ5sAMDhpkOPGFOsjbf5U5
	7tG+0JOXI+3pdm7HJh7Av8+g8wVvTGzcfGUkkVYd83WKk0qAQGBjKlMDa9ppuRExLmw3hGVO77SlF
	buFcpXf5F3uWC+6QmJGEaWTwZCT/wV5FzBorwzgqHss0yuAb5PDvqxrDh8BVcYLgM2lZqVwHRSCk2
	WgSmu/QbNMytP2wmt/1i0yJjEbVfVSeQBSTHhMhenAXZw/NWByPvSLpsRDjLDAbwFyNk69w9Ek10f
	CdRuOcqhrfIwDwuO/SYqPSitd75XDX5mQR2yjlJWpyaloq0byuOQAtbTSr/N5iplJohWYjpdgTs/q
	9XWc0wOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sND0Y-0000000E6d5-2z0K;
	Fri, 28 Jun 2024 14:55:26 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sND0U-0000000E6c6-2R0R
	for barebox@lists.infradead.org;
	Fri, 28 Jun 2024 14:55:24 +0000
Received: by mail-pj1-x1034.google.com with SMTP id 98e67ed59e1d1-2c7c61f7ee3so489774a91.1
        for <barebox@lists.infradead.org>; Fri, 28 Jun 2024 07:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719586522; x=1720191322; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C6d5hny5y+T67ts686qK5X7fIBN/rIqRqe2s4HFtuRk=;
        b=jk3c2GKmK/agoc0nKgV+5lA+aNTEZju7Yt+kk8WRpUs3SRCvXfbJprL2W1yuo82N0s
         rZP/lyWhYy59sjUP+JjB8M7B71XwyWa/DymH7FyIRph2wyDGpuO+GoVadxEkTOP6NZ/5
         6RLfCiWrrNnBRqeqEJLvWbc/gOuJxKDi6wv+7rTWXnzTrW5slvSaAmRRlJKXMT+OQtP+
         X5A4ng1oKb7ik52Jmqk+hla6IX7giWaL4CcCUhFgbXZTqfKmn+3yQakAWAmXu9bTA/gt
         ni5zGGUZKpJN2CzakJWYuP3IJQ0mMlprWv2GUedLh8Hms9/Vej8T/8+m3k1xzNiQUJVK
         kN3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719586522; x=1720191322;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C6d5hny5y+T67ts686qK5X7fIBN/rIqRqe2s4HFtuRk=;
        b=HMW9S+AG+aRnB1ldntiobI6YdOFM2o+ldxGn5aaAVFiI+zN1o0cgyZQKcukgckfN6x
         LmczvuTww7roWvNx9ERBF39orCfqyyAfmq3GDbVCCR1PUhbFjsuBLqQxlSzEloiHVTZ/
         McN3iYPIz33hE1BXiSI1AZqqeqBw5+rQ5rZ+Yb6+KxPPD7QyEu3IxqSLMP8EahsaMnq7
         pQ0YebjXaG8/hgZ7hVr+LU64cimUotCb1dfMPcj7KESa4SBaqKRpm7om2+Q13iRX78zu
         z1UIVpS7bfUbonUJZW3trI/dKOVzM246PteNCprx2DbF2puJ5DKFomp+T5B7sdxgvd1q
         0uyQ==
X-Gm-Message-State: AOJu0YyCzO9RUyPDoa1WSJJR9iO19px3Ybdt5WDyFBIwmgSq3KH6dky0
	MsuwPn8OTkZHIn1JSzJ+ouT1/OxUwp1fcq4sT294QZRQqwoL0663TX7lufC64gwPC0ihyMwsLSn
	y2tSFW9mAK8UoNRLL3TW3AqFY8og=
X-Google-Smtp-Source: AGHT+IFUJPFWFqj0RqCH6+hPh/4nPwTKPnpO9BcmbMglwHkXSfrXFkPScgNqQJGQSBv/IZ34KC5iNFTdu+kVFgC/riw=
X-Received: by 2002:a17:90b:3758:b0:2c2:cd03:4758 with SMTP id
 98e67ed59e1d1-2c86127e1efmr13489242a91.1.1719586521398; Fri, 28 Jun 2024
 07:55:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvS2DWF-xLSCe0y1kib_kOSrdkWPJC6bGm+7Yuv7wxJ3tA@mail.gmail.com>
 <f61c8c68-77f0-400a-b99c-724b7820a44e@pengutronix.de> <CAP1tNvTNzi4Br3LE+yAtkU7vuRDfmfD_hmUj0uFwUL9E9fDOQA@mail.gmail.com>
 <b6b0496f-fb0f-487b-8bfb-b901a41acbb8@pengutronix.de> <CAP1tNvSVAxR645jqL6YQeJSggiqtmAk8aCZjPo7SDW_2S5r00w@mail.gmail.com>
 <6893ea56-5154-4911-85b3-9ea55522e60f@pengutronix.de> <CAP1tNvQkAPysrjiayLGF7zNKGMgrW8FRZiEH1zq-ssY-N7crNQ@mail.gmail.com>
 <b2937c4e-b4e4-4e3a-8362-06708d65c464@pengutronix.de>
In-Reply-To: <b2937c4e-b4e4-4e3a-8362-06708d65c464@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 28 Jun 2024 17:55:08 +0300
Message-ID: <CAP1tNvQTJxpHwJL+SypXQ2G_6M4RL8RW=GuRrqg+tOWrfBbuyg@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_075522_654826_2CDBF00D 
X-CRM114-Status: GOOD (  24.09  )
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

This is a part of .config:
CONFIG_DIGEST_SHA1_ARM64_CE=3Dy
# CONFIG_DIGEST_SHA256_ARM64_CE is not set

=D0=BF=D1=82, 28 =D0=B8=D1=8E=D0=BD. 2024=E2=80=AF=D0=B3. =D0=B2 17:27, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> On 28.06.24 16:03, Alexander Shiyan wrote:
> > Yes.
> > Call trace is different, but the barebox still crashes.
> >
> > Unknown/Uncategorized exception (ESR 0x02000000) at 0xbf92b728aba34bf3
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
>
> sha1_ce_transform is defined in sha1-ce-core.S and that's only built
> when CONFIG_DIGEST_SHA1_ARM64_CE is enabled, so I don't understand
> how it could be that you disable CONFIG_DIGEST_SHA1_ARM64_CE
> (not SHA256) and still run into that error?
>
> Cheers,
> Ahmad
>
> > [<efd7d8b0>] (sha1_ce_final+0xbc/0x114) from [<efd0297c>]
> > (machine_id_set_globalvar+0x7c/0x100)
> > [<efd0297c>] (machine_id_set_globalvar+0x7c/0x100) from [<efd01adc>]
> > (start_barebox+0x60/0x8c)
> > [<efd01adc>] (start_barebox+0x60/0x8c) from [<efd7bf1c>]
> > (barebox_non_pbl_start+0x11c/0x150)
> > [<efd7bf1c>] (barebox_non_pbl_start+0x11c/0x150) from [<efd0000c>]
> > (__bare_init_start+0x0/0x14)
> > [<efd0000c>] (__bare_init_start+0x0/0x14) from [<00b01d94>] (0xb01d94)
> > [<00b01d94>] (0xb01d94) from [<00b01648>] (0xb01648)
> > panic: unhandled exception
> > ### ERROR ### Please RESET the board ###
> >
> > =D0=BF=D1=82, 28 =D0=B8=D1=8E=D0=BD. 2024=E2=80=AF=D0=B3. =D0=B2 16:59,=
 Ahmad Fatoum <a.fatoum@pengutronix.de>:
> >>
> >> On 28.06.24 15:56, Alexander Shiyan wrote:
> >>> I changed the patch to reflect this for rk3568 rather than rk3588.
> >>> The patch doesn't help. I tried it with and without the
> >>> CONFIG_DIGEST_SHA256_ARM64_CE option.
> >>
> >> Do you still get a crash when CONFIG_DIGEST_SHA1_ARM64_CE is disabled?
> >>
> >> Cheers,
> >> Ahmad
> >>
> >>>
> >>> ...
> >>>>>>> I'm trying to use the open source TF-A implementation for the Roc=
kchip
> >>>>>>> rk3568 CPU:
> >>>>>>> https://github.com/ARM-software/arm-trusted-firmware/commit/9fd9f=
1d024872b440e3906eded28037330b6f422
> >>> ...
> >>>>>> Assuming this stack trace is accurate, it looks like the crypto ex=
tensions
> >>>>>> use may upset the CPU? Do you have CONFIG_DIGEST_SHA256_ARM64_CE e=
nabled?
> >>>>>> Does this issue happen when you disable it?
> >>>>>
> >>>>> The error is still here. New log (without CONFIG_DIGEST_SHA256_ARM6=
4_CE) below.
> >>>>>
> >>>>>> Did you call rk3588_lowlevel_init() in your entry point?
> >>>>> RK3568 :)
> >>>>> Yes, it called from rk3568_barebox_entry().
> >>>>>
> >>>>>
> >>>>> Board: Diasom DS-RK3568-EVB
> >>>>> deep-probe: supported due to diasom,ds-rk3568-evb
> >>>>> rockchip-dmc memory-controller.of: Detected memory size: 0x00000002=
00000000
> >>>>> netconsole: registered as netconsole-1
> >>>>> rk808 rk8090: chip id: 0x8090
> >>>>> vdd_npu: Bringing 500000uV into 850000-850000uV
> >>>>> vdda0v9_image: Bringing 600000uV into 900000-900000uV
> >>>>> vcca1v8_image: Bringing 600000uV into 1800000-1800000uV
> >>>>> rockchip_saradc fe720000.saradc@fe720000.of: registered as aiodev0
> >>>>> Boot source: usb, instance 0
> >>>>> psci psci.of: detected version 1.1
> >>>>> xHCI xHCI0: USB XHCI 1.10
> >>>>> mdio_bus: miibus0: probed
> >>>>> dw_mmc fe2b0000.mmc@fe2b0000.of: registered as mmc0
> >>>>> rk3568-dwcmshc-sdhci fe310000.mmc@fe310000.of: registered as mmc1
> >>>>> mmc1: detected MMC card version 5.1
> >>>>> mmc1: registered mmc1.boot0
> >>>>> mmc1: registered mmc1.boot1
> >>>>> mmc1: registered mmc1
> >>>>> mdio_bus: miibus1: probed
> >>>>> Setup Machine ID from EMMC serial: 30948368
> >>>>> Unknown/Uncategorized exception (ESR 0x02000000) at 0xbf96b7282ba34=
bf3
> >>>>> elr: 00000000efd7da48 lr : 00000000efd7d7e0
> >>>>> x0 : 00000000afdc1b10 x1 : 00000000afdc1b70
> >>>>> x2 : 0000000000000000 x3 : 0000000000000020
> >>>>> x4 : 0000000000000000 x5 : 00000000efff7dd8
> >>>>> x6 : 00000000ca62c1d6 x7 : 0000000000000000
> >>>>> x8 : 00000000afdc1b68 x9 : 0000000000000000
> >>>>> x10: 0000000000000000 x11: 00000000fffffff6
> >>>>> x12: 00000000fffffff6 x13: 0000000000000020
> >>>>> x14: 0000000000000000 x15: 0000000000000003
> >>>>> x16: 00000000efff7968 x17: 0000000000000003
> >>>>> x18: 00000000efff7ef0 x19: 0000000000000001
> >>>>> x20: 00000000afdc1b30 x21: 00000000afdc1b10
> >>>>> x22: 00000000afdc1b30 x23: 00000000ef600000
> >>>>> x24: 0000000000b35a40 x25: 0000000000080051
> >>>>> x26: 0000000000106858 x27: 00000000effe0000
> >>>>> x28: 0000000000000000 x29: 00000000efff7e40
> >>>>>
> >>>>> Call trace:
> >>>>> [<efd7da48>] (sha1_ce_transform+0x64/0x224) from [<efd7d8b0>]
> >>>>> (sha1_ce_final+0xbc/0x114)
> >>>>> [<efd7d8b0>] (sha1_ce_final+0xbc/0x114) from [<efd0297c>]
> >>>>> (machine_id_set_globalvar+0x7c/0x100)
> >>>>> [<efd0297c>] (machine_id_set_globalvar+0x7c/0x100) from [<efd01adc>=
]
> >>>>> (start_barebox+0x60/0x8c)
> >>>>> [<efd01adc>] (start_barebox+0x60/0x8c) from [<efd7bf1c>]
> >>>>> (barebox_non_pbl_start+0x11c/0x150)
> >>>>> [<efd7bf1c>] (barebox_non_pbl_start+0x11c/0x150) from [<efd0000c>]
> >>>>> (__bare_init_start+0x0/0x14)
> >>>>> [<efd0000c>] (__bare_init_start+0x0/0x14) from [<00b01d8c>] (0xb01d=
8c)
> >>>>> [<00b01d8c>] (0xb01d8c) from [<00b01640>] (0xb01640)
> >>>>> panic: unhandled exception
> >>>>> ### ERROR ### Please RESET the board ###
> >>>>
> >>>> I expect that without CONFIG_DIGEST_SHA1_ARM64_CE, the crash goes aw=
ay?
> >>>> If yes, can you try out the patch I just Cc'd you on?
> >>>
> >>
> >> --
> >> Pengutronix e.K.                           |                          =
   |
> >> Steuerwalder Str. 21                       | http://www.pengutronix.de=
/  |
> >> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0 =
   |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-55=
55 |
> >>
> >
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>


