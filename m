Delivery-date: Fri, 28 Jun 2024 16:04:10 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNCCw-00Dh6i-17
	for lore@lore.pengutronix.de;
	Fri, 28 Jun 2024 16:04:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNCCv-0005n8-Cj
	for lore@pengutronix.de; Fri, 28 Jun 2024 16:04:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YMIy6TS/rjAf3qcYzYRlfPd4Vm0nUqfI8j0lpdhA+fY=; b=Z4hvbZ1AFP3BrutdjJ9KyvYBk6
	tP0NDZa5/EJ2J6bm+iFuY8fQYWUzMNAjgjPQXi+HszORMfCI+1+eKmdmucw1ZQf7ronh8a7fv3X74
	gI6/Dbnw1kULr9Q1k3GrT4FMhdDd3rPX1jOnVgH0HmO17qkVcEd4NG33jVPDPNIVshlvYcJQsUJpc
	titWTGc9e0jxbwrIvULM03P5HZTOGoQ8g3X74mwW1z0Z5fBPt25cbDs+NbHZKLSz2U5GfI7ziPWoc
	zYuPUCAjg7zqwpN3ykxaJP6VsV6ccZRwG5WiGJZY9ybtYh6TrCu4RWse5zSUs1YFzsm7UHvfmrARV
	x4mGUQPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCCQ-0000000Duo1-0hLg;
	Fri, 28 Jun 2024 14:03:38 +0000
Received: from mail-pl1-x62a.google.com ([2607:f8b0:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNCCL-0000000Dumk-41AR
	for barebox@lists.infradead.org;
	Fri, 28 Jun 2024 14:03:35 +0000
Received: by mail-pl1-x62a.google.com with SMTP id d9443c01a7336-1fab03d2f23so5341875ad.0
        for <barebox@lists.infradead.org>; Fri, 28 Jun 2024 07:03:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719583413; x=1720188213; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YMIy6TS/rjAf3qcYzYRlfPd4Vm0nUqfI8j0lpdhA+fY=;
        b=K7ixoSVnIKJiwTiDvaWtG55LJuMcuwmcSFwu3dtuF80i8C1ttFCZ9r0aStyuOT8tkg
         C1+3F8kq5JzY7Egspa0OVbYgV5bDLLWAuRDocpI7XTnBT22hA/MzWzZ+xFLNJI7+9+MQ
         KOh2mMdWsxXVFZNSqQLvlw77TnPiS0Fx14rzBpstoaRWTWXHBL27RZPHn0oG55zDkraB
         K3InAwmdatt7seAniWozmKQ8BihKVRQusMzH70P1EOs9TcgfGGLsJjqG5ifpRaABEu90
         Bd0AbZAKLvwus3SDIJdgMmXxFmO4eVTfEEHVAlClaRzUvFMtLVQYL0Gc5Z1OkvhZ9ye3
         7ZbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719583413; x=1720188213;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YMIy6TS/rjAf3qcYzYRlfPd4Vm0nUqfI8j0lpdhA+fY=;
        b=eNJthdtCr/A1krEyqzQcNqIZkmG7JIZXAgwTN5BMfZ8mHQfE92ouuOT/bGiccfk7Ae
         7CwyJLkLSRkBBT0Mdpa72c7WSnJCS2LHtDfQ6x9IGGxLJkzDFOu88ZEbr0BbWFyuaBaZ
         z/Hq+ublbiZUQeg6mjxISLn02ymoa3/BlpxOboekSY5jCtudT2zfc2qpJVmeGzsBNjec
         EUyAKLQKWNWTBjT4YWGKPtFaJ+AqwZX+KwAtNDPJymI0YK/c8rL0KUpxoNQopcdRw+Du
         CUz5+QD0TTS8CXA+qRPeME4Brhb4yqk4KGfJkb8Nc0+GuMBUsNzdKN5r5XbtGJBhP8j1
         CN+Q==
X-Gm-Message-State: AOJu0YxTBl2Yt5Yc96ep7IOw4ec9UObal2WY1B9VGYiQU4PuoiZoQS0A
	P7nkGar6Wgo1E0o9u4TPq8aPpd3psxLL/VZZ7YpEF68xTTDwlKFYMnfYbsX1Ltl/h6bOUTSc5Pt
	m3v3B51QZR2vNasv4wuUM+e5uB08HF9s2kUo=
X-Google-Smtp-Source: AGHT+IG1q+sqYdDfD7vUF66Yv984BkJaZwPpfsxqka54woaKvanS8T27A1CPxKQgAGP+zfK81tYYn7qsQgcx2aUpkhI=
X-Received: by 2002:a17:90b:3ec3:b0:2c2:d163:d761 with SMTP id
 98e67ed59e1d1-2c85067faa2mr12343261a91.47.1719583412672; Fri, 28 Jun 2024
 07:03:32 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvS2DWF-xLSCe0y1kib_kOSrdkWPJC6bGm+7Yuv7wxJ3tA@mail.gmail.com>
 <f61c8c68-77f0-400a-b99c-724b7820a44e@pengutronix.de> <CAP1tNvTNzi4Br3LE+yAtkU7vuRDfmfD_hmUj0uFwUL9E9fDOQA@mail.gmail.com>
 <b6b0496f-fb0f-487b-8bfb-b901a41acbb8@pengutronix.de> <CAP1tNvSVAxR645jqL6YQeJSggiqtmAk8aCZjPo7SDW_2S5r00w@mail.gmail.com>
 <6893ea56-5154-4911-85b3-9ea55522e60f@pengutronix.de>
In-Reply-To: <6893ea56-5154-4911-85b3-9ea55522e60f@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 28 Jun 2024 17:03:20 +0300
Message-ID: <CAP1tNvQkAPysrjiayLGF7zNKGMgrW8FRZiEH1zq-ssY-N7crNQ@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_070334_024448_B1492E8E 
X-CRM114-Status: GOOD (  20.71  )
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

Yes.
Call trace is different, but the barebox still crashes.

Unknown/Uncategorized exception (ESR 0x02000000) at 0xbf92b728aba34bf3
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
[<efd0000c>] (__bare_init_start+0x0/0x14) from [<00b01d94>] (0xb01d94)
[<00b01d94>] (0xb01d94) from [<00b01648>] (0xb01648)
panic: unhandled exception
### ERROR ### Please RESET the board ###

=D0=BF=D1=82, 28 =D0=B8=D1=8E=D0=BD. 2024=E2=80=AF=D0=B3. =D0=B2 16:59, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> On 28.06.24 15:56, Alexander Shiyan wrote:
> > I changed the patch to reflect this for rk3568 rather than rk3588.
> > The patch doesn't help. I tried it with and without the
> > CONFIG_DIGEST_SHA256_ARM64_CE option.
>
> Do you still get a crash when CONFIG_DIGEST_SHA1_ARM64_CE is disabled?
>
> Cheers,
> Ahmad
>
> >
> > ...
> >>>>> I'm trying to use the open source TF-A implementation for the Rockc=
hip
> >>>>> rk3568 CPU:
> >>>>> https://github.com/ARM-software/arm-trusted-firmware/commit/9fd9f1d=
024872b440e3906eded28037330b6f422
> > ...
> >>>> Assuming this stack trace is accurate, it looks like the crypto exte=
nsions
> >>>> use may upset the CPU? Do you have CONFIG_DIGEST_SHA256_ARM64_CE ena=
bled?
> >>>> Does this issue happen when you disable it?
> >>>
> >>> The error is still here. New log (without CONFIG_DIGEST_SHA256_ARM64_=
CE) below.
> >>>
> >>>> Did you call rk3588_lowlevel_init() in your entry point?
> >>> RK3568 :)
> >>> Yes, it called from rk3568_barebox_entry().
> >>>
> >>>
> >>> Board: Diasom DS-RK3568-EVB
> >>> deep-probe: supported due to diasom,ds-rk3568-evb
> >>> rockchip-dmc memory-controller.of: Detected memory size: 0x0000000200=
000000
> >>> netconsole: registered as netconsole-1
> >>> rk808 rk8090: chip id: 0x8090
> >>> vdd_npu: Bringing 500000uV into 850000-850000uV
> >>> vdda0v9_image: Bringing 600000uV into 900000-900000uV
> >>> vcca1v8_image: Bringing 600000uV into 1800000-1800000uV
> >>> rockchip_saradc fe720000.saradc@fe720000.of: registered as aiodev0
> >>> Boot source: usb, instance 0
> >>> psci psci.of: detected version 1.1
> >>> xHCI xHCI0: USB XHCI 1.10
> >>> mdio_bus: miibus0: probed
> >>> dw_mmc fe2b0000.mmc@fe2b0000.of: registered as mmc0
> >>> rk3568-dwcmshc-sdhci fe310000.mmc@fe310000.of: registered as mmc1
> >>> mmc1: detected MMC card version 5.1
> >>> mmc1: registered mmc1.boot0
> >>> mmc1: registered mmc1.boot1
> >>> mmc1: registered mmc1
> >>> mdio_bus: miibus1: probed
> >>> Setup Machine ID from EMMC serial: 30948368
> >>> Unknown/Uncategorized exception (ESR 0x02000000) at 0xbf96b7282ba34bf=
3
> >>> elr: 00000000efd7da48 lr : 00000000efd7d7e0
> >>> x0 : 00000000afdc1b10 x1 : 00000000afdc1b70
> >>> x2 : 0000000000000000 x3 : 0000000000000020
> >>> x4 : 0000000000000000 x5 : 00000000efff7dd8
> >>> x6 : 00000000ca62c1d6 x7 : 0000000000000000
> >>> x8 : 00000000afdc1b68 x9 : 0000000000000000
> >>> x10: 0000000000000000 x11: 00000000fffffff6
> >>> x12: 00000000fffffff6 x13: 0000000000000020
> >>> x14: 0000000000000000 x15: 0000000000000003
> >>> x16: 00000000efff7968 x17: 0000000000000003
> >>> x18: 00000000efff7ef0 x19: 0000000000000001
> >>> x20: 00000000afdc1b30 x21: 00000000afdc1b10
> >>> x22: 00000000afdc1b30 x23: 00000000ef600000
> >>> x24: 0000000000b35a40 x25: 0000000000080051
> >>> x26: 0000000000106858 x27: 00000000effe0000
> >>> x28: 0000000000000000 x29: 00000000efff7e40
> >>>
> >>> Call trace:
> >>> [<efd7da48>] (sha1_ce_transform+0x64/0x224) from [<efd7d8b0>]
> >>> (sha1_ce_final+0xbc/0x114)
> >>> [<efd7d8b0>] (sha1_ce_final+0xbc/0x114) from [<efd0297c>]
> >>> (machine_id_set_globalvar+0x7c/0x100)
> >>> [<efd0297c>] (machine_id_set_globalvar+0x7c/0x100) from [<efd01adc>]
> >>> (start_barebox+0x60/0x8c)
> >>> [<efd01adc>] (start_barebox+0x60/0x8c) from [<efd7bf1c>]
> >>> (barebox_non_pbl_start+0x11c/0x150)
> >>> [<efd7bf1c>] (barebox_non_pbl_start+0x11c/0x150) from [<efd0000c>]
> >>> (__bare_init_start+0x0/0x14)
> >>> [<efd0000c>] (__bare_init_start+0x0/0x14) from [<00b01d8c>] (0xb01d8c=
)
> >>> [<00b01d8c>] (0xb01d8c) from [<00b01640>] (0xb01640)
> >>> panic: unhandled exception
> >>> ### ERROR ### Please RESET the board ###
> >>
> >> I expect that without CONFIG_DIGEST_SHA1_ARM64_CE, the crash goes away=
?
> >> If yes, can you try out the patch I just Cc'd you on?
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


