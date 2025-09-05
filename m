Delivery-date: Fri, 05 Sep 2025 04:23:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uuM7D-008HG6-0z
	for lore@lore.pengutronix.de;
	Fri, 05 Sep 2025 04:23:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uuM7C-0000QV-2U
	for lore@pengutronix.de; Fri, 05 Sep 2025 04:23:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BmQhj6KhGn5daHQGzgk3wjm2OuswnkL3mP+svVzkFZ8=; b=fQHiWio6+5B3GEwaD6xgKFr++F
	HneT1wu5aX6km8QVVX9a4T9dpw8fCBSbgqdTpgq8ZUtNwIpoU3s5rBJsP/YhTxPKh+zxZnWvywWmY
	VrxC2PxOr1Gxq3nAlvYwibh3dWgINFLp8efIBwfPLLrk7dSt6Y53S9w7I5L69/3LUIp58No6OAzxq
	Hge+N81KPXA2omo72Ou0oRcYDHo+sQeOBoYuUGro+Sq9VcWEtXOEiLcP0AD+8E5fWLa/Wlg3RumsQ
	KZsVWQ2KKBwL7ATd3ANkgZTQ2RSLQByLevQ6AM1ZO6+JX1E/UXRDDqHZVBjqPnwgdm+M6tl+RDqOm
	j0z6Qr8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuM6j-0000000G5zV-1Qwl;
	Fri, 05 Sep 2025 02:23:21 +0000
Received: from mail-qt1-x830.google.com ([2607:f8b0:4864:20::830])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uuK8O-0000000FQRN-3zik
	for barebox@lists.infradead.org;
	Fri, 05 Sep 2025 00:16:58 +0000
Received: by mail-qt1-x830.google.com with SMTP id d75a77b69052e-4b3415bfb26so12820851cf.3
        for <barebox@lists.infradead.org>; Thu, 04 Sep 2025 17:16:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757031416; x=1757636216; darn=lists.infradead.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=BmQhj6KhGn5daHQGzgk3wjm2OuswnkL3mP+svVzkFZ8=;
        b=lJorAQqQVNCruEuXVPnCk275MZzZI3XfMbJz9IySamWCUKaue24FDX/BVI7VoXySnL
         HdvBkFECVqz3XR8DI4Mf9XZ3p1taE9Zu4hr0qls0o+ok8GHjLpq9FhgT2S91xqvVkDZR
         /dKSXRagZG1kYpqMoDQHWF9qw6LnfO+JOoZwu2ZinqrwRsF8YFOkFsXCmrw1OQgRrCpu
         bkX1a2FvpY9YH6rvCBFInGk3svbUCIu3J1+UeXwOAjhCYq9Nu3YqX6USztkYQ5Jst3Tt
         773juX4rPO8pl/8Fm5KlV5TpBnxVHCaMVQoQbF5J8kpZK9ZliTVMZiNv5FIWVJpQUWdQ
         DpZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757031416; x=1757636216;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BmQhj6KhGn5daHQGzgk3wjm2OuswnkL3mP+svVzkFZ8=;
        b=PCXeeMUk+DDcvddLzA9SxeFhr1rTngzMBs58j7rz9bPaH1poxzzw4nv+3Br6KSYwx+
         AICIe7V0C17UntcUpkJ10FgyPv9lfY6nJJM3CxYRVu7fe3BQq9SWy6uBu2LaCNnbGK5z
         9Xf56YOfmM23O6mm3XXGJ47n6tC1O5rw2LyANJMooYVELJkF2PKdSpuPnTzMvHVOTeCH
         eBn7VT8h8701GVAc2h8ii4/xUOzWmvhd6w6tOWCizp7REKPTpQ7u6RmDIEt0OY+nCUde
         mdej0kZol0wdyXMv3aNpMQ8RoS8eMqjeFHebJ6ghcp6IYV2nXC3CIjm0qhPVuYoADQm2
         YLZA==
X-Gm-Message-State: AOJu0YyiVmQ3nQKltGkvATY39bPgw383kp5T3M5fUcju/KqIP3XuvrnR
	D0nntZr20H2oxAIQUvdV01e9Bbujp4K2G191qF/PbDBOsXP4gfvh6FjM1P4kosfzEa4=
X-Gm-Gg: ASbGncvO61PWn85Jm1PbLPfORg49Og1vVZwy57r3toh/gS3sivL6cpsMETC7KQ/aJQK
	E9M7NifLXl9gex9og7Q2kXCJEPQX1MglLH2p6YvpJyeMMC7Tx2p8GcQL1ASI0S9iAJQGs4WxKHF
	s4bis/dQdeMbCEIFG9lKLGoi3yAiUGXbrwM50RJx0X7gVI1IQOd74ex5kt7Fo/1+qJnAq2JfBEl
	e/LmNYUHP3ercJnYoZn3z88dBMXichUP58HWyKHkKIyiM56at8VR9LYpJqEwa2rGpZ+zBPk6loH
	C7BFVbmrtxgNE9XmgGRtGZMOP4zLOY9eF5K8PlenXNfPx8ZV7tWyMDoS44uCD2u1Ih+Aih5pWqI
	I/lZs/4EkaH/cTvycgBD5YMGUbrhbVlyza//2IzBhzdMdxqhNTg3RsAPx81VtISmJjgMIm8g429
	LaY+W/wO1BBTC8zhqpiRQu3X7g/CHskO97DY3h5+JErSCQm90LbLoOZeUeWGA=
X-Google-Smtp-Source: AGHT+IEQ7888yHZD30W25Kibpab2xW46z1eXzn3HGA4OJyvFIiW0gRJ5iHlDy/jlzCLX6GvMuzMbXA==
X-Received: by 2002:a05:622a:5cf:b0:4b5:b28e:f0ee with SMTP id d75a77b69052e-4b5b28ef66cmr82154211cf.51.1757031415702;
        Thu, 04 Sep 2025 17:16:55 -0700 (PDT)
Received: from ?IPv6:2607:fa49:8c41:2600:7886:9dcb:acfa:ae3b? ([2607:fa49:8c41:2600:7886:9dcb:acfa:ae3b])
        by smtp.gmail.com with ESMTPSA id d75a77b69052e-4b48f7a37c6sm38058981cf.47.2025.09.04.17.16.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Sep 2025 17:16:55 -0700 (PDT)
Message-ID: <892fde210361fd699c91fd27410a01b84c6d94c7.camel@gmail.com>
From: anis chali <chalianis1@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
Date: Thu, 04 Sep 2025 20:16:53 -0400
In-Reply-To: <c7d7bfa9-c165-4ad0-a4a2-76c0de24c56c@pengutronix.de>
References: <20250831035542.1623695-1-chalianis1@gmail.com>
	 <20250831035542.1623695-4-chalianis1@gmail.com>
	 <c7d7bfa9-c165-4ad0-a4a2-76c0de24c56c@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.44.4-0ubuntu2 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250904_171657_011423_ED3E3A9D 
X-CRM114-Status: GOOD (  24.99  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 4/7] arm: efi: add a generic efi machine.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi,

> Thinking about it, this doesn't really fit into the existing model.
> We have CONFIG_EFI_PAYLOAD, which when enabled gives _all_ images
> an EFI stub.
>=20
> I think it's better to just give CPU_V7 and CPU_V8 prompts.
Don't understand.

> Then they can be enabled for the barebones EFI-only use case alongside
> CONFIG_EFI_PAYLOAD. CONFIG_EFI_PAYLOAD should have its depends on
> COMPILE_TEST removed as last patch in your series then I think (or
> before last if you add a dedicated efi_defconfig).
So we keep a specific kconfig variant that will be selected using efi_defco=
nfig
file and not merging the multi_v8_defconfig with the efi_payload config in =
the makefile
Is it what you mean?
will this defconfig serve only arm64 or should we think about it more globa=
lly to=20
be used with what ever cpu or arch and in that case maybe we can just keep =
the same=20
startegy than merguing between configs and this time we will take the efi_p=
ayload config
and add the selected arch from the environment variable ARCH???

especially the efi payload is not more than an application compiled on a gi=
ven architecture and
and is loadable by efi, so it should never change the hardware state and st=
ay hardware agnostic.

>=20
> +	bool "EFI on ARM64"
> >=20
>=20
> Generally, we should call it EFI payload to differentiate from
> EFI loader (firmware)
Ack,  will change it for "Arm 64 EFI Payload", but maybe see think it with =
what I just said
before.

> Symbol doesn't exist on ARM.
>=20
> +	select HAVE_EFI_PAYLOAD
> >=20
>=20
> Already selected by CPU_64
Ack
=20
> +	select EFI_PAYLOAD
> > +	select BOOTM_FITIMAGE
> >=20
>=20
> select means it can't be deselected, which is not needed here.
Ok, it makes sense, bootm fit is not required.

>=20
> +    select CLOCKSOURCE_EFI
> > +    select DRIVER_VIDEO_EFI_GOP
> >=20
>=20
> It's reasonable to disable GOP if the device is headless anyway.
> You can give the DRIVER_VIDEO_EFI_GOP a default y though if you like,
> because many (most?) users will likely want to use GOP.
Ok, will make it as just default but not select with kconfig.
=20
> Point is moot with above suggested change though.
>=20
> +	depends on 64BIT
> > +	default y if ARCH_MULTIARCH
> >=20
>=20
Ack.

Maybe if you have a couple of minutes to just summarize what need to be don=
e
and have some plan for efi payload stuff, it is very apperciated the time y=
ou
spend supporting, I didn't know anything about barebox a few weeks ago, but=
 I=20
noticed that it is really a very good quality code, maintainable, it will a=
n
excellent replacement for all the efi payloads, it could also be an excelle=
nt choice
if we need to build the same software stack on different and mixed closed a=
rchitectures=20
products where the efi is the only supported bootloader.

Cheers,

Anis C.


