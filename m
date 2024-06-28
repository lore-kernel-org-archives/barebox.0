Delivery-date: Fri, 28 Jun 2024 17:19:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNDNv-00Dj2U-0U
	for lore@lore.pengutronix.de;
	Fri, 28 Jun 2024 17:19:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sNDNu-0007l2-1m
	for lore@pengutronix.de; Fri, 28 Jun 2024 17:19:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=14eKoqUGFGmCYat4AHhfOG9LO+SqRNAZTu3NoGLdEFI=; b=HiC6l4sa2z0MY+5EeCEK4N57i7
	kh9/9TOdwAnpJtaKnOqUs0XEJ3CMI8lUf958hXTWRe9NKOyoIZwNXTVG7H7RJUv1z4csjraQW0XIw
	T93FJxnHYkWW6JFMqDQr7Kk1Lji0e20KckVMuePMEBoCoWntrCFbX/Nk7devF+NktFKv6h0DVJSCC
	EEV9c0pidGUb66Z2N51iSwSgJwfn3B453sVbXtJjXyr51ljONlZeIMcg3Y2tAbWYyI/VuBz5DKARo
	BkUDShq3vcar5jWaS/zB8jwnqCzxqP9VWPbLqWX/TPVpPNUG3/CXVUUVU9Q6ps5jeWO6GIamzKDNd
	Ey88ig3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNDNN-0000000EBrt-0Fha;
	Fri, 28 Jun 2024 15:19:01 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNDNJ-0000000EBqh-40D1
	for barebox@lists.infradead.org;
	Fri, 28 Jun 2024 15:18:59 +0000
Received: by mail-pj1-x102e.google.com with SMTP id 98e67ed59e1d1-2c7bf925764so546766a91.0
        for <barebox@lists.infradead.org>; Fri, 28 Jun 2024 08:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719587937; x=1720192737; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=14eKoqUGFGmCYat4AHhfOG9LO+SqRNAZTu3NoGLdEFI=;
        b=YLHoHf/HyfuT9fLrrpP9NpVD7XQIcQ6lf8zBMdmP7q1HxAzpuwKzVAyZwhLU9uZm2v
         Smhl0+LUgskfsXsJMbdQLfpCTR4Vg5mX7ANrywuabMcWSWIkszz+qnSkZDFd9Ktr6ygW
         CRwTmKWBe7IByUqnuyWwhm2hAeKpf+QkoaoBFrhgZDPpMhZsDIFgdCUQQxRVVDVJR2tV
         BW2h3Jci+y9xVA8m2elemeiRrijaQ0mmmUAkFOwiA7TFjNlkaRClXmAWeumZjAJR0C+H
         86rqRuTXU9DAhNLEpQXT0znhXyHfJWyadMkrpuN4tZQ6jVxy8Cm7AWfy1hn/6pPtrPk1
         bq7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719587937; x=1720192737;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=14eKoqUGFGmCYat4AHhfOG9LO+SqRNAZTu3NoGLdEFI=;
        b=bOOEpgHB7E6a3n1I0wJweU+Dp96ap7oKq6nUErIoyX1onJ4IgGqoa5v/Nytu07fFy7
         OtUK5xwqHOJukfnnB5AhlLQuUuAJufT4zTrhCpUNnJ3hSiTc9+MUUdqOGqLB/7kGHdIE
         voYzvKJ9U9ClGgobYUHU9iSUolmRCJ3tqypOcV8WidD4w1jmrMjKKjei6PD+m0pEFAzs
         nWJgWHQSqDdpL+hjhVHXbtVyGW7tfk7AuvG6jPZ8T07WphnibzTp+F7DtzcvW4/M3/7A
         stkgWIJF31xQS6MCxM5zXZSJtUULwBxs10fGPx4qutNkBHM05cNj8ckBeeKNIKmpObIr
         bktA==
X-Gm-Message-State: AOJu0YzA7groD/pvorkOjzUEl+V2gX4SUadt+GrAVFKiDFh+HkoepWVA
	Mh17l1pZh6MLOjL7kn4lrZtcjbVlIFrmMIY3PBz87p/fNwR0lzk3vMemlWNHCcNsakPvWYkNlHf
	KsmVERyEwB3C7DjvBNyNVzGnpRxuaYHe7
X-Google-Smtp-Source: AGHT+IHtiwnBwEuai2DW8re8FWODl9RRbVFWHLVHPQm/U7AUX7qyT9mnPfe7H/ORWEykP4e3tTECdYa3cuanv+ep/Sk=
X-Received: by 2002:a17:90b:38c1:b0:2c8:6862:38dd with SMTP id
 98e67ed59e1d1-2c8686242f3mr15845572a91.11.1719587936905; Fri, 28 Jun 2024
 08:18:56 -0700 (PDT)
MIME-Version: 1.0
References: <CAP1tNvS2DWF-xLSCe0y1kib_kOSrdkWPJC6bGm+7Yuv7wxJ3tA@mail.gmail.com>
 <f61c8c68-77f0-400a-b99c-724b7820a44e@pengutronix.de> <CAP1tNvTNzi4Br3LE+yAtkU7vuRDfmfD_hmUj0uFwUL9E9fDOQA@mail.gmail.com>
 <b6b0496f-fb0f-487b-8bfb-b901a41acbb8@pengutronix.de> <CAP1tNvSVAxR645jqL6YQeJSggiqtmAk8aCZjPo7SDW_2S5r00w@mail.gmail.com>
 <6893ea56-5154-4911-85b3-9ea55522e60f@pengutronix.de> <CAP1tNvQkAPysrjiayLGF7zNKGMgrW8FRZiEH1zq-ssY-N7crNQ@mail.gmail.com>
 <b2937c4e-b4e4-4e3a-8362-06708d65c464@pengutronix.de> <CAP1tNvQTJxpHwJL+SypXQ2G_6M4RL8RW=GuRrqg+tOWrfBbuyg@mail.gmail.com>
 <3026830e-1dec-4568-8beb-6d8d7fd20ce8@pengutronix.de>
In-Reply-To: <3026830e-1dec-4568-8beb-6d8d7fd20ce8@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 28 Jun 2024 18:18:44 +0300
Message-ID: <CAP1tNvTA=tT35HndSR+ngd3ZZ0Wa2S30hGDaSoFGFCCUmgnmdA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240628_081858_021795_AFDA674B 
X-CRM114-Status: GOOD (  25.74  )
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

Yes!
Without both options the board boots OK.

=D0=BF=D1=82, 28 =D0=B8=D1=8E=D0=BD. 2024=E2=80=AF=D0=B3. =D0=B2 18:13, Ahm=
ad Fatoum <a.fatoum@pengutronix.de>:
>
> On 28.06.24 16:55, Alexander Shiyan wrote:
> > This is a part of .config:
> > CONFIG_DIGEST_SHA1_ARM64_CE=3Dy
> > # CONFIG_DIGEST_SHA256_ARM64_CE is not set
>
> If you disable both, you don't get the crash, right?
>
> Cheers,
> Ahmad
>
> >
> > =D0=BF=D1=82, 28 =D0=B8=D1=8E=D0=BD. 2024=E2=80=AF=D0=B3. =D0=B2 17:27,=
 Ahmad Fatoum <a.fatoum@pengutronix.de>:
> >>
> >> On 28.06.24 16:03, Alexander Shiyan wrote:
> >>> Yes.
> >>> Call trace is different, but the barebox still crashes.
> >>>
> >>> Unknown/Uncategorized exception (ESR 0x02000000) at 0xbf92b728aba34bf=
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
> >>
> >> sha1_ce_transform is defined in sha1-ce-core.S and that's only built
> >> when CONFIG_DIGEST_SHA1_ARM64_CE is enabled, so I don't understand
> >> how it could be that you disable CONFIG_DIGEST_SHA1_ARM64_CE
> >> (not SHA256) and still run into that error?
> >>
> >> Cheers,
> >> Ahmad
> >>
> >>> [<efd7d8b0>] (sha1_ce_final+0xbc/0x114) from [<efd0297c>]
> >>> (machine_id_set_globalvar+0x7c/0x100)
> >>> [<efd0297c>] (machine_id_set_globalvar+0x7c/0x100) from [<efd01adc>]
> >>> (start_barebox+0x60/0x8c)
> >>> [<efd01adc>] (start_barebox+0x60/0x8c) from [<efd7bf1c>]
> >>> (barebox_non_pbl_start+0x11c/0x150)
> >>> [<efd7bf1c>] (barebox_non_pbl_start+0x11c/0x150) from [<efd0000c>]
> >>> (__bare_init_start+0x0/0x14)
> >>> [<efd0000c>] (__bare_init_start+0x0/0x14) from [<00b01d94>] (0xb01d94=
)
> >>> [<00b01d94>] (0xb01d94) from [<00b01648>] (0xb01648)
> >>> panic: unhandled exception
> >>> ### ERROR ### Please RESET the board ###
> >>>
> >>> =D0=BF=D1=82, 28 =D0=B8=D1=8E=D0=BD. 2024=E2=80=AF=D0=B3. =D0=B2 16:5=
9, Ahmad Fatoum <a.fatoum@pengutronix.de>:
> >>>>
> >>>> On 28.06.24 15:56, Alexander Shiyan wrote:
> >>>>> I changed the patch to reflect this for rk3568 rather than rk3588.
> >>>>> The patch doesn't help. I tried it with and without the
> >>>>> CONFIG_DIGEST_SHA256_ARM64_CE option.
> >>>>
> >>>> Do you still get a crash when CONFIG_DIGEST_SHA1_ARM64_CE is disable=
d?
> >>>>
> >>>> Cheers,
> >>>> Ahmad
> >>>>
> >>>>>
> >>>>> ...
> >>>>>>>>> I'm trying to use the open source TF-A implementation for the R=
ockchip
> >>>>>>>>> rk3568 CPU:
> >>>>>>>>> https://github.com/ARM-software/arm-trusted-firmware/commit/9fd=
9f1d024872b440e3906eded28037330b6f422
> >>>>> ...
> >>>>>>>> Assuming this stack trace is accurate, it looks like the crypto =
extensions
> >>>>>>>> use may upset the CPU? Do you have CONFIG_DIGEST_SHA256_ARM64_CE=
 enabled?
> >>>>>>>> Does this issue happen when you disable it?
> >>>>>>>
> >>>>>>> The error is still here. New log (without CONFIG_DIGEST_SHA256_AR=
M64_CE) below.
> >>>>>>>
> >>>>>>>> Did you call rk3588_lowlevel_init() in your entry point?
> >>>>>>> RK3568 :)
> >>>>>>> Yes, it called from rk3568_barebox_entry().
> >>>>>>>
> >>>>>>>
> >>>>>>> Board: Diasom DS-RK3568-EVB
> >>>>>>> deep-probe: supported due to diasom,ds-rk3568-evb
> >>>>>>> rockchip-dmc memory-controller.of: Detected memory size: 0x000000=
0200000000
> >>>>>>> netconsole: registered as netconsole-1
> >>>>>>> rk808 rk8090: chip id: 0x8090
> >>>>>>> vdd_npu: Bringing 500000uV into 850000-850000uV
> >>>>>>> vdda0v9_image: Bringing 600000uV into 900000-900000uV
> >>>>>>> vcca1v8_image: Bringing 600000uV into 1800000-1800000uV
> >>>>>>> rockchip_saradc fe720000.saradc@fe720000.of: registered as aiodev=
0
> >>>>>>> Boot source: usb, instance 0
> >>>>>>> psci psci.of: detected version 1.1
> >>>>>>> xHCI xHCI0: USB XHCI 1.10
> >>>>>>> mdio_bus: miibus0: probed
> >>>>>>> dw_mmc fe2b0000.mmc@fe2b0000.of: registered as mmc0
> >>>>>>> rk3568-dwcmshc-sdhci fe310000.mmc@fe310000.of: registered as mmc1
> >>>>>>> mmc1: detected MMC card version 5.1
> >>>>>>> mmc1: registered mmc1.boot0
> >>>>>>> mmc1: registered mmc1.boot1
> >>>>>>> mmc1: registered mmc1
> >>>>>>> mdio_bus: miibus1: probed
> >>>>>>> Setup Machine ID from EMMC serial: 30948368
> >>>>>>> Unknown/Uncategorized exception (ESR 0x02000000) at 0xbf96b7282ba=
34bf3
> >>>>>>> elr: 00000000efd7da48 lr : 00000000efd7d7e0
> >>>>>>> x0 : 00000000afdc1b10 x1 : 00000000afdc1b70
> >>>>>>> x2 : 0000000000000000 x3 : 0000000000000020
> >>>>>>> x4 : 0000000000000000 x5 : 00000000efff7dd8
> >>>>>>> x6 : 00000000ca62c1d6 x7 : 0000000000000000
> >>>>>>> x8 : 00000000afdc1b68 x9 : 0000000000000000
> >>>>>>> x10: 0000000000000000 x11: 00000000fffffff6
> >>>>>>> x12: 00000000fffffff6 x13: 0000000000000020
> >>>>>>> x14: 0000000000000000 x15: 0000000000000003
> >>>>>>> x16: 00000000efff7968 x17: 0000000000000003
> >>>>>>> x18: 00000000efff7ef0 x19: 0000000000000001
> >>>>>>> x20: 00000000afdc1b30 x21: 00000000afdc1b10
> >>>>>>> x22: 00000000afdc1b30 x23: 00000000ef600000
> >>>>>>> x24: 0000000000b35a40 x25: 0000000000080051
> >>>>>>> x26: 0000000000106858 x27: 00000000effe0000
> >>>>>>> x28: 0000000000000000 x29: 00000000efff7e40
> >>>>>>>
> >>>>>>> Call trace:
> >>>>>>> [<efd7da48>] (sha1_ce_transform+0x64/0x224) from [<efd7d8b0>]
> >>>>>>> (sha1_ce_final+0xbc/0x114)
> >>>>>>> [<efd7d8b0>] (sha1_ce_final+0xbc/0x114) from [<efd0297c>]
> >>>>>>> (machine_id_set_globalvar+0x7c/0x100)
> >>>>>>> [<efd0297c>] (machine_id_set_globalvar+0x7c/0x100) from [<efd01ad=
c>]
> >>>>>>> (start_barebox+0x60/0x8c)
> >>>>>>> [<efd01adc>] (start_barebox+0x60/0x8c) from [<efd7bf1c>]
> >>>>>>> (barebox_non_pbl_start+0x11c/0x150)
> >>>>>>> [<efd7bf1c>] (barebox_non_pbl_start+0x11c/0x150) from [<efd0000c>=
]
> >>>>>>> (__bare_init_start+0x0/0x14)
> >>>>>>> [<efd0000c>] (__bare_init_start+0x0/0x14) from [<00b01d8c>] (0xb0=
1d8c)
> >>>>>>> [<00b01d8c>] (0xb01d8c) from [<00b01640>] (0xb01640)
> >>>>>>> panic: unhandled exception
> >>>>>>> ### ERROR ### Please RESET the board ###
> >>>>>>
> >>>>>> I expect that without CONFIG_DIGEST_SHA1_ARM64_CE, the crash goes =
away?
> >>>>>> If yes, can you try out the patch I just Cc'd you on?
> >>>>>
> >>>>
> >>>> --
> >>>> Pengutronix e.K.                           |                        =
     |
> >>>> Steuerwalder Str. 21                       | http://www.pengutronix.=
de/  |
> >>>> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-=
0    |
> >>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-=
5555 |
> >>>>
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


