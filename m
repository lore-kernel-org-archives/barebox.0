Delivery-date: Mon, 03 Nov 2025 16:29:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFwUp-00Etjx-2t
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 16:29:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFwUp-0003hy-1o
	for lore@pengutronix.de; Mon, 03 Nov 2025 16:29:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tX1lWQp3S+snphFV/3aYPvD1pYyV59sDbt21bwLgB+g=; b=u8jXnUiMdcEAlG
	viQ1xik5oFQZX3IMx2aL2qb0jIWZEzRFa1DgkSO7rNfK4AIrqJHC8xat8D8OecvoWIJNXlOVQHeDZ
	JdLjS9tMWXd25g9XsVUHNMs37pSMr4C3SxdJGtSDb2ZLuyBxnw1cC4FYrEJhYjbBqIIsoKJhhbNF1
	QPqGafPYWcihZ6gshcz06cTSzEe1Jh+ISZfuNaaBDEsrQZmIzAlbuydm+y6QA9P3xtLFpU/pWTbuj
	NoqhReB2cZixvtnrEvtflnZbe724iAneeuPt+dvzChMhxJO18qDfjNsZm71WsiUp63hDR0F/LJeMN
	BVrxS/GfL1NyrFvT/KOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFwUO-0000000A9m3-3zQv;
	Mon, 03 Nov 2025 15:29:00 +0000
Received: from mail-pl1-x634.google.com ([2607:f8b0:4864:20::634])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFwUL-0000000A9l5-3Xhe
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 15:28:59 +0000
Received: by mail-pl1-x634.google.com with SMTP id d9443c01a7336-2958db8ae4fso14279675ad.2
        for <barebox@lists.infradead.org>; Mon, 03 Nov 2025 07:28:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762183737; x=1762788537; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tX1lWQp3S+snphFV/3aYPvD1pYyV59sDbt21bwLgB+g=;
        b=jSOCjTzGXpsFHlDPzhPgZT9CZA3fexqWXCFGoWYscuBkLdVWxk18tjN7JLDziN3x47
         kHBaociv9fsa4pjsKLd2Ryz+/XsCAlomhMirCQeHCgwVcgVGCLHT6XRqRvTP99h8jLBs
         N3T94oNDMSbmp3zkZac7izUTCokycGkAxmVmuTm1L0A5rVlXaA9KrjaRTwfEbwPSbIud
         2g1kkKwu3n8qXG23VIhSsqS2g+e6Y18ED/EOV8CHOFohXYAQwwoNb4j/NTsWrXhiaCBR
         GJfblshqG8yckiXoZSMcpRUvCMCBEM0SAnHrcFN5LEzNLwEMnR6zuSSaYHySVctv2blf
         RBQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762183737; x=1762788537;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tX1lWQp3S+snphFV/3aYPvD1pYyV59sDbt21bwLgB+g=;
        b=ISPfZZqxLpZ6PYyc1oyiUFFNAALhRE41cBsoBAhc1Ln9F2Gzb8Y1cHlSyThUdThA/B
         zujsfpULNHy1Xwg//tKAAGau6qa7wZjNEZLRJbuEDprQK7wvlu1eXc6AZkfIR6aukVAc
         znElRnqVMjJQH0g9l98qHyGVmFy/IzolY0x9mZvMjIzKwCZgAo0XCv5qsuEIlONSnjmu
         a94pKhnm4C7Cj4viUMCbZXzWrMcLLL2+7hzto7l5OGLqzRh3y0WqPB+rnZRjrXihkcoB
         YUyikGqMFCgQdkfoyDRXoXVqvLCNEZ5HvZOCgvQmdKbD7F7vDX/UJq9WHsF2h+ghXnNk
         LpGA==
X-Forwarded-Encrypted: i=1; AJvYcCXvyQSAez0owMI2GiOf92PdhlfHhbhriQs7Wuh03FDeGl04kfOqIQS6p6wPbJ0zNa7qmHWXEloH@lists.infradead.org
X-Gm-Message-State: AOJu0YxeZM2eOO/S5kkqU3y/eAjTl7TQ3mw0CCbQgPUTgeWtTZWbvbqE
	UI0m6cuDx8rXnJhJ5a9muXg9i+Nukm0KbJeH5HBszrlrIG9ltmN1SLNbjBHWGRX6tGE8PK6fQ9x
	iQ3AzBPagd46im6iGgBiGLu/C03c1ZOA=
X-Gm-Gg: ASbGncvUylpi1eopV/ltn2s+v7UYiSe9k5eWAWxlkFWhGfW32j7x7sXqkplRY52AtLj
	OfIIaNT0uBATYk77g0KuH6a69yldDS/T+/dqbJng0lv5OUSxIuDJsux6YX9Uv5TUYG55p+aGxAH
	mA5w3hhGbTALuCXi5RYQtK5NHhW8mxyWpoEfrxmmZ+sEJF8RmjS2eoboHVWGIp3Nndb5by2Yrb/
	piA/YcbEhJ8QM/2xb1FJlxHRBmQx+tRjMEgXmnZBQx6yuj85N2BFW2soetsTN0BqjfaMDHCR4yM
X-Google-Smtp-Source: AGHT+IGo07RxkHi6Gby2LWxQPwR+xQV9pMiv9NAM5Z6H4hB0086WGhF8ESRLop+zGHdO79zQuBiBtQ0cvEvQIi1VK+E=
X-Received: by 2002:a17:903:2312:b0:24c:7b94:2f53 with SMTP id
 d9443c01a7336-2951a420e44mr149206765ad.6.1762183736753; Mon, 03 Nov 2025
 07:28:56 -0800 (PST)
MIME-Version: 1.0
References: <20251103043833.149013-1-chalianis1@gmail.com> <20251103043833.149013-2-chalianis1@gmail.com>
 <cd9be78d-2a1d-4d8a-966a-f7f2f1e45326@pengutronix.de> <CAL+1fyAt37CXJ33si=TqLW=v+KgOt6Yi_0fHPno4nrBUverKew@mail.gmail.com>
 <2e640c65-0a84-4fce-86a7-c94694b0c9f6@pengutronix.de>
In-Reply-To: <2e640c65-0a84-4fce-86a7-c94694b0c9f6@pengutronix.de>
From: anis chali <chalianis1@gmail.com>
Date: Mon, 3 Nov 2025 10:28:45 -0500
X-Gm-Features: AWmQ_blcaPyH5fBt2WgoKB6liMuhiruIi4zyV6-GglqfMjQ3gdIDDj66QRm7zIQ
Message-ID: <CAL+1fyBg7k=dgQQpC7dOFApoTWN3ncpEmOV2cCF-maksmSKb8g@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_072857_885466_991426F7 
X-CRM114-Status: GOOD (  23.23  )
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] efi: payload: refactor to use the external barebox
 state driver.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

> generally speaking, we try not to break existing users and if we do, an
> entry should be added to the migration guide explaining what backward
> incompatibility was introduced.

Okay I understand, for people using the default efi_defconfig or just
adds fragments on top of it, it will be transparent but otherwise yes
there will be a breakage.

Thanks.

Cheers.
Anis.

Le lun. 3 nov. 2025 =C3=A0 09:24, Ahmad Fatoum <a.fatoum@pengutronix.de> a =
=C3=A9crit :
>
> Hi,
>
> On 11/3/25 3:10 PM, anis chali wrote:
> >>> This breaks state for x86-efi, the original user of efi_late_init().
> >
> > Was not sure to add it to the efi_defconfig
>
> generally speaking, we try not to break existing users and if we do, an
> entry should be added to the migration guide explaining what backward
> incompatibility was introduced.
>
> Cheers,
> Ahmad
>
> >
> > Le lun. 3 nov. 2025 =C3=A0 01:40, Ahmad Fatoum <a.fatoum@pengutronix.de=
> a =C3=A9crit :
> >>
> >> Hi,
> >>
> >> On 03.11.25 05:38, chalianis1@gmail.com wrote:
> >>> From: Chali Anis <chalianis1@gmail.com>
> >>>
> >>> use the external state config to pass the barebox state.
> >>>
> >>> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> >>> ---
> >>>  arch/arm/configs/efi_v8_defconfig |  2 ++
> >>>  efi/payload/init.c                | 50 -----------------------------=
--
> >>
> >> This breaks state for x86-efi, the original user of efi_late_init().
> >>
> >>>  2 files changed, 2 insertions(+), 50 deletions(-)
> >>>
> >>> diff --git a/arch/arm/configs/efi_v8_defconfig b/arch/arm/configs/efi=
_v8_defconfig
> >>> index 5f946dd51d4a..26682aab304a 100644
> >>> --- a/arch/arm/configs/efi_v8_defconfig
> >>> +++ b/arch/arm/configs/efi_v8_defconfig
> >>> @@ -21,6 +21,8 @@ CONFIG_CONSOLE_RATP=3Dy
> >>>  CONFIG_PARTITION_DISK_EFI=3Dy
> >>>  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> >>>  CONFIG_STATE=3Dy
> >>> +CONFIG_EXTERNAL_STATE=3Dy
> >>> +CONFIG_EXTERNAL_STATE_DTB_PATH=3D"/boot/EFI/barebox/state.dtb"
> >>>  CONFIG_BOOTCHOOSER=3Dy
> >>>  CONFIG_RESET_SOURCE=3Dy
> >>>  CONFIG_MACHINE_ID=3Dy
> >>> diff --git a/efi/payload/init.c b/efi/payload/init.c
> >>> index 5b827c57ed1f..63d62395cf3f 100644
> >>> --- a/efi/payload/init.c
> >>> +++ b/efi/payload/init.c
> >>> @@ -376,56 +376,6 @@ static int efi_postcore_init(void)
> >>>  }
> >>>  postcore_efi_initcall(efi_postcore_init);
> >>>
> >>> -static int efi_late_init(void)
> >>> -{
> >>> -     const char *state_desc =3D "/boot/EFI/barebox/state.dtb";
> >>> -     struct device_node *state_root =3D NULL;
> >>> -     size_t size;
> >>> -     void *fdt;
> >>> -     int ret;
> >>> -
> >>> -     if (!IS_ENABLED(CONFIG_STATE))
> >>> -             return 0;
> >>> -
> >>> -     if (!get_mounted_path("/boot")) {
> >>> -             pr_warn("boot device couldn't be determined%s\n",
> >>> -                     IS_ENABLED(CONFIG_FS_EFI) ? "" : " without CONF=
IG_FS_EFI");
> >>> -             return 0;
> >>> -     }
> >>> -
> >>> -     fdt =3D read_file(state_desc, &size);
> >>> -     if (!fdt) {
> >>> -             pr_info("unable to read %s: %m\n", state_desc);
> >>> -             return 0;
> >>> -     }
> >>> -
> >>> -     state_root =3D of_unflatten_dtb(fdt, size);
> >>> -     if (!IS_ERR(state_root)) {
> >>> -             struct device_node *np =3D NULL;
> >>> -             struct state *state;
> >>> -
> >>> -             ret =3D barebox_register_of(state_root);
> >>> -             if (ret)
> >>> -                     pr_warn("Failed to register device-tree: %pe\n"=
, ERR_PTR(ret));
> >>> -
> >>> -             np =3D of_find_node_by_alias(state_root, "state");
> >>> -
> >>> -             state =3D state_new_from_node(np, false);
> >>> -             if (IS_ERR(state))
> >>> -                     return PTR_ERR(state);
> >>> -
> >>> -             ret =3D state_load(state);
> >>> -             if (ret !=3D -ENOMEDIUM)
> >>> -                     pr_warn("Failed to load persistent state, conti=
nuing with defaults, %d\n",
> >>> -                             ret);
> >>> -
> >>> -             return 0;
> >>> -     }
> >>> -
> >>> -     return 0;
> >>> -}
> >>> -late_efi_initcall(efi_late_init);
> >>> -
> >>>  static int do_efiexit(int argc, char *argv[])
> >>>  {
> >>>       if (!BS)
> >>
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
> >
>
> --
> Pengutronix e.K.                  |                             |
> Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
>


