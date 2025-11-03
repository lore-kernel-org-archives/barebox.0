Delivery-date: Mon, 03 Nov 2025 15:11:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFvH5-00EsN4-1O
	for lore@lore.pengutronix.de;
	Mon, 03 Nov 2025 15:11:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vFvH4-0001TU-TH
	for lore@pengutronix.de; Mon, 03 Nov 2025 15:11:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EjOu31RyElTyf+8Abwp01o2xqo0gTybMc3HuEU0lswA=; b=fGJvPLoGf/a3EW
	MQDrGXVPqVIqtD9z8L8J9bPRSQiy1GblzJcoo1onD1aMTsPUsR8T7KYneLpw4W2q6EVEkMIuGgm7d
	nOjf/qXkxUxek4DeP43QGxPq5C2NvVvRerGhoY55DAd21xx7XAUlqA1IOagwIo3vbHQdPvn/IBzkz
	HRtSlrSuFgeqCZWdyXvJlmOMQMPThY1UD7W6qxQ/liiejcFg2p7tjn0IRzeGqys2vbiSIy7m/ef3M
	+qd7YkJqyrct2LHKD7z6ph+R6UoQhQ2rV3nV4z0waOWcUTfIcKJvTvY48EWf0y5GfWO7Dg4eTmngw
	2y3QmqlgoVknYBTKm6Yg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFvGh-0000000A0BR-0d34;
	Mon, 03 Nov 2025 14:10:47 +0000
Received: from mail-pg1-x536.google.com ([2607:f8b0:4864:20::536])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vFvGe-0000000A0Ah-3LZP
	for barebox@lists.infradead.org;
	Mon, 03 Nov 2025 14:10:46 +0000
Received: by mail-pg1-x536.google.com with SMTP id 41be03b00d2f7-b9a5b5b47bfso833488a12.1
        for <barebox@lists.infradead.org>; Mon, 03 Nov 2025 06:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762179044; x=1762783844; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=EjOu31RyElTyf+8Abwp01o2xqo0gTybMc3HuEU0lswA=;
        b=aSyzXZgIArykOQycTWma0ag7H5qBV/a/9Uclen8YyDmDZFhHUJQsuGM7JOEmVqjpP7
         VQJ/MLadmwtAbiwCnfwHaBND26IJMy0fFYXjMg2BuprMQpxrQ7qUESbDeZbYkczuXMkb
         Ip/IkRmRLVWwkcD91PP2uLxnoZZQ7VHKvxCB3Z7fa5zrFkqG+cWz2sirE2ys6stchLwq
         ojGo/wBeWpaYvehNqIDgfF7eFvfQD7R3CaDah79QA7BGbCKjncjwWVaoZ8vodJmT7bqw
         ILQzSkQwAmcGl0jKjzcnQCU+vCClY+RY4WhkH9jnXSOEK90QB197YPalmkVKI1Gm10lO
         QCxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762179044; x=1762783844;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=EjOu31RyElTyf+8Abwp01o2xqo0gTybMc3HuEU0lswA=;
        b=Np9g8swrYVkcX/dgYthuzJozf0jreppTkGCFyScyysLHF83hIiARmzkAbgG7Pi6O72
         y7ODt2r0cIVdlxcgG27vEcej7IXiNB4K5oSouNwjk0WaWh8bxfJA37jsGpWoqnLNvysD
         qVpAAg9zdkk53HPb3ssEgUGv9Rmu+JSgVU8utvT06OtSzVnHCt+Zj75mXWxEwOKzt+kU
         V96llHXoo64q5awEm8oe1IRQ7m9bIo0pt3VaeIXtXtk5tU4GD7WS9TjvXuIFmgP45/7v
         an8zsOtTkuWdd2QeLnW8SfxtldAbv6gyaLF84sysArrMm5MDLFT3HN0sQ/hwZyH8kDve
         IKZg==
X-Forwarded-Encrypted: i=1; AJvYcCVVas49FWr/R9MLKfTz11LcCcyWoisND+Id3xr0poyR+NdI+PJJrJE4PFEB4FRES0B0ZjWOy4YB@lists.infradead.org
X-Gm-Message-State: AOJu0Yx9H2Of9YEdckOj4/Ym0roxnPhCSqrVuONDnjOpMsRkO6l/Gq+E
	hG/z7wwkLHL3xDR7js4QlHcK/CNXEXiJf8Y9bseJNbELIpBro1u2dDNZzB9l7mplUp6pT8sW1rz
	Ltous9JffANzh/Nl2RW10U7oGLwCToO4ESKIf5bA=
X-Gm-Gg: ASbGncuLU1pcwwWjnMSlhLeLQ1UBKxvGmTE3Qi0k3Y5IksLUeoWrrqDM18jTJMFBwCz
	dEpAvxUNvfDFLEoU2DWHexYq9xAhJIkXZy64k+sSbftdjUys6COjd51/tGA6vbB3DVUCs7YeP4A
	MP9HT0EM0OkS9qQ860eA4LqoTU0hpvGvHv7WUpgXyV2hyQ/DE05cruNfwy+fDKPpYlF1IqAyv5v
	8Pj6DC225dTqZdOMGyjijRHObR6Hc5rP/PDGBMtTV4XlqsO0tt7Jw471q/8J9i9lIgset+eXZ8o
	mWhmZd1Ideejqbym/t3Dg3be6b3XPg==
X-Google-Smtp-Source: AGHT+IHiYlF8khinAQVg7HkblNgIX4lDqITltx+FG5wzY6trSZ6X1PsSEjW4z3+rwtWTVOjmkZrdp+GK4eJKRYIbuKg=
X-Received: by 2002:a17:903:2f8f:b0:252:50ad:4e6f with SMTP id
 d9443c01a7336-2951a4b6405mr181967085ad.54.1762179043749; Mon, 03 Nov 2025
 06:10:43 -0800 (PST)
MIME-Version: 1.0
References: <20251103043833.149013-1-chalianis1@gmail.com> <20251103043833.149013-2-chalianis1@gmail.com>
 <cd9be78d-2a1d-4d8a-966a-f7f2f1e45326@pengutronix.de>
In-Reply-To: <cd9be78d-2a1d-4d8a-966a-f7f2f1e45326@pengutronix.de>
From: anis chali <chalianis1@gmail.com>
Date: Mon, 3 Nov 2025 09:10:32 -0500
X-Gm-Features: AWmQ_bk_UcmN_t7wvRfDt-5z0QEFYyJKYiu4CcJcW9BCdWGKMtd2URYhFQxmz44
Message-ID: <CAL+1fyAt37CXJ33si=TqLW=v+KgOt6Yi_0fHPno4nrBUverKew@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251103_061044_840144_D973EA12 
X-CRM114-Status: GOOD (  19.36  )
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

>> This breaks state for x86-efi, the original user of efi_late_init().

Was not sure to add it to the efi_defconfig

Le lun. 3 nov. 2025 =C3=A0 01:40, Ahmad Fatoum <a.fatoum@pengutronix.de> a =
=C3=A9crit :
>
> Hi,
>
> On 03.11.25 05:38, chalianis1@gmail.com wrote:
> > From: Chali Anis <chalianis1@gmail.com>
> >
> > use the external state config to pass the barebox state.
> >
> > Signed-off-by: Chali Anis <chalianis1@gmail.com>
> > ---
> >  arch/arm/configs/efi_v8_defconfig |  2 ++
> >  efi/payload/init.c                | 50 -------------------------------
>
> This breaks state for x86-efi, the original user of efi_late_init().
>
> >  2 files changed, 2 insertions(+), 50 deletions(-)
> >
> > diff --git a/arch/arm/configs/efi_v8_defconfig b/arch/arm/configs/efi_v=
8_defconfig
> > index 5f946dd51d4a..26682aab304a 100644
> > --- a/arch/arm/configs/efi_v8_defconfig
> > +++ b/arch/arm/configs/efi_v8_defconfig
> > @@ -21,6 +21,8 @@ CONFIG_CONSOLE_RATP=3Dy
> >  CONFIG_PARTITION_DISK_EFI=3Dy
> >  CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=3Dy
> >  CONFIG_STATE=3Dy
> > +CONFIG_EXTERNAL_STATE=3Dy
> > +CONFIG_EXTERNAL_STATE_DTB_PATH=3D"/boot/EFI/barebox/state.dtb"
> >  CONFIG_BOOTCHOOSER=3Dy
> >  CONFIG_RESET_SOURCE=3Dy
> >  CONFIG_MACHINE_ID=3Dy
> > diff --git a/efi/payload/init.c b/efi/payload/init.c
> > index 5b827c57ed1f..63d62395cf3f 100644
> > --- a/efi/payload/init.c
> > +++ b/efi/payload/init.c
> > @@ -376,56 +376,6 @@ static int efi_postcore_init(void)
> >  }
> >  postcore_efi_initcall(efi_postcore_init);
> >
> > -static int efi_late_init(void)
> > -{
> > -     const char *state_desc =3D "/boot/EFI/barebox/state.dtb";
> > -     struct device_node *state_root =3D NULL;
> > -     size_t size;
> > -     void *fdt;
> > -     int ret;
> > -
> > -     if (!IS_ENABLED(CONFIG_STATE))
> > -             return 0;
> > -
> > -     if (!get_mounted_path("/boot")) {
> > -             pr_warn("boot device couldn't be determined%s\n",
> > -                     IS_ENABLED(CONFIG_FS_EFI) ? "" : " without CONFIG=
_FS_EFI");
> > -             return 0;
> > -     }
> > -
> > -     fdt =3D read_file(state_desc, &size);
> > -     if (!fdt) {
> > -             pr_info("unable to read %s: %m\n", state_desc);
> > -             return 0;
> > -     }
> > -
> > -     state_root =3D of_unflatten_dtb(fdt, size);
> > -     if (!IS_ERR(state_root)) {
> > -             struct device_node *np =3D NULL;
> > -             struct state *state;
> > -
> > -             ret =3D barebox_register_of(state_root);
> > -             if (ret)
> > -                     pr_warn("Failed to register device-tree: %pe\n", =
ERR_PTR(ret));
> > -
> > -             np =3D of_find_node_by_alias(state_root, "state");
> > -
> > -             state =3D state_new_from_node(np, false);
> > -             if (IS_ERR(state))
> > -                     return PTR_ERR(state);
> > -
> > -             ret =3D state_load(state);
> > -             if (ret !=3D -ENOMEDIUM)
> > -                     pr_warn("Failed to load persistent state, continu=
ing with defaults, %d\n",
> > -                             ret);
> > -
> > -             return 0;
> > -     }
> > -
> > -     return 0;
> > -}
> > -late_efi_initcall(efi_late_init);
> > -
> >  static int do_efiexit(int argc, char *argv[])
> >  {
> >       if (!BS)
>
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


