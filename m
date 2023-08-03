Delivery-date: Thu, 03 Aug 2023 07:20:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRQlK-004bFq-Hv
	for lore@lore.pengutronix.de; Thu, 03 Aug 2023 07:20:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qRQlI-0005Bo-RL
	for lore@pengutronix.de; Thu, 03 Aug 2023 07:20:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=O0Mg6YV2wNQlsu7StcVRJBrZXEQlth9AX+ejILPo3hM=; b=F6k8vSSgTCCldfB+fSGQE/bNBA
	WWcYngx5NHcGmMgU0LM7r8UzyeUkmZslXZbRbfmd8Av+FU5p4Uxfoa/ZgcsTRxN+/kSnyaZ898q2f
	SYj9Paq2R3bNeVSgEJUPUfZMlUBAeEmYF0ej2aFHyXmLLCF6m6c/Rk043N0sVBiN7C04oSNRTXYDU
	dZ6cUscATuiv8IGU6F0oxc4xbAuMm0R9HR5IP6ZwB3EgK8yFwpBbdRJcN/b/ilbbG1yNQo+tQREFJ
	DHLxcybpGiKOQ2LbIvwwr6DRrn1oaDVhjfMiTzpWR0AWbc+X3TsNDejLBKjs6MtsvvSrCgDmfdRk3
	vVE1LRzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qRQjn-006g48-10;
	Thu, 03 Aug 2023 05:19:03 +0000
Received: from mail-oo1-xc2d.google.com ([2607:f8b0:4864:20::c2d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qRQjj-006g2p-2E
	for barebox@lists.infradead.org;
	Thu, 03 Aug 2023 05:19:01 +0000
Received: by mail-oo1-xc2d.google.com with SMTP id 006d021491bc7-5607cdb0959so294218eaf.2
        for <barebox@lists.infradead.org>; Wed, 02 Aug 2023 22:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691039937; x=1691644737;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O0Mg6YV2wNQlsu7StcVRJBrZXEQlth9AX+ejILPo3hM=;
        b=Huzkw9cg6WML+aJibFJOKYx7YTaxoCgx8VI05OUqTNGD0ICFVnq8ynbP6GVhdQv0wY
         MHkcSaGVrQRQUqlHqK7RVYUpom/eI5mRXy+3ROaWXruBYyFRaRmuBkq90JAK9zxB+XvY
         v+4BZ9RHd0w9f4rXpYuO5aLk3STE3WN3WAKTN6BUlb4vswo3VE7s5p/vCbz2NsfcbOFu
         aXEFOuP/FwoHkjDTN3cy4E5lqIAF6qlSH9uiZW6o+otUdZ/pvSEcKMimpw746aJn3SUj
         HI4xHicjj6IR+d6z7mRlBDrWkmYaun+5/QeyoOo982fQSnUEeha1AuoGEgYV7qfpc6Ez
         ok0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691039937; x=1691644737;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O0Mg6YV2wNQlsu7StcVRJBrZXEQlth9AX+ejILPo3hM=;
        b=A5yVuTCYVwVG3Qv/Hu6ujNdsZbwqtAZ0C6PX1ngiwGlzmT5aRcSKHqkxw2kKTCPFYI
         UjUbrsfidE/C8cSKlxnNjM5wACM9f5xR/AbmKm/eu4ICygmhMVgMzu/LpfrRhOV4f1i6
         mAQFWz2FLb7q5SBg1dQ6YnZVRU3HohS1ApBdEtmFighDURQiXq1kKhEen+OUhDQ58YpB
         KHnG5kZ5+/YIf8PMRcd4UW9F2li2oYSBrDR8EHmT/HuyJxpX+UtG8xXm8fSRIale1h51
         Yhz+Jn6uE1gYUKafL/Fr3OInZPLoVepMrwBWlFkon8oyvfi/w4on2FTn8J1nmvh6lfPm
         1PQQ==
X-Gm-Message-State: ABy/qLZrFG+RVLQFs68hCLWU7jeb8/Nj5ZX4khJJlpvRKlx+L4OLTk8i
	Ysr2nsM1ox5vM1tA9QoDXHoKHRZ4Q0SH2mEmuKwo46rf1pYhLQ==
X-Google-Smtp-Source: APBJJlE2JqA6NoVtAIzg8raIohuvxqVd4FKJEgtxOKDzcKSJiQ5nGQLOGI0hsJSISFCI9yr+gBGV1H4BZ3HV0TzmgDg=
X-Received: by 2002:a05:6808:f09:b0:3a5:a884:eceb with SMTP id
 m9-20020a0568080f0900b003a5a884ecebmr17781531oiw.57.1691039937283; Wed, 02
 Aug 2023 22:18:57 -0700 (PDT)
MIME-Version: 1.0
References: <20230802162108.1738676-1-a.fatoum@pengutronix.de>
In-Reply-To: <20230802162108.1738676-1-a.fatoum@pengutronix.de>
From: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 3 Aug 2023 08:18:46 +0300
Message-ID: <CAP1tNvQE=22Hbo2e2t=TzUbWfaqpUo4y-Xsfx5-owJtEi3TXqA@mail.gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230802_221859_730772_003B753B 
X-CRM114-Status: GOOD (  16.38  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] scripts: fix pkg-config use for rsatoc/rkimage hosttools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello.
Looks like I did pretty much the same for buildroot:
https://git.busybox.net/buildroot/commit/boot/barebox?id=3D624d50b20cf4bf4a=
67ad6274263f85927660f8c4

=D1=81=D1=80, 2 =D0=B0=D0=B2=D0=B3. 2023=E2=80=AF=D0=B3. =D0=B2 19:22, Ahma=
d Fatoum <a.fatoum@pengutronix.de>:
>
> Source files built for running on the build host can be given extra
> argument via the HOSTCFLAGS variable. This is evaluates in
> scripts/Makefile.host and results in adding $(HOSTCFLAGS_$(target-stem).o=
)
> during each HOSTCC invocation.
>
> We do that correctly at all places, except for two: rsatoc and rkimage
> both use openssl, but they only have HOSTLDLIBS_rsatoc correctly set for
> linking against openssl. HOSTCFLAGS_ however was incorrectly set for
> the targets without the .o suffix and compiling these files only worked,
> because OpenSSL was installed into a directory that's in the default
> include search path. This is not a given, e.g. when building barebox
> through OpenEmbedded inside a container without openssl headers, so
> let's ensure pkg-config is correctly used.
>
> Fixes: 128ad3cbe043 ("scripts: Add rsatoc tool")
> Fixes: 63f612f9e0ea ("ARM: Rockchip: Add rkimage tool")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  scripts/Makefile | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 01b21a61692c..b8dd15cbf798 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -12,7 +12,7 @@ hostprogs-always-y                                    +=
=3D bareboxcrc32
>  hostprogs-always-y                                     +=3D kernel-insta=
ll
>  hostprogs-always-$(CONFIG_QOICONV)                     +=3D qoiconv
>  hostprogs-always-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS)     +=3D rsatoc
> -HOSTCFLAGS_rsatoc =3D `$(PKG_CONFIG) --cflags openssl`
> +HOSTCFLAGS_rsatoc.o =3D `$(PKG_CONFIG) --cflags openssl`
>  HOSTLDLIBS_rsatoc =3D `$(PKG_CONFIG) --libs openssl`
>  hostprogs-always-$(CONFIG_IMD)                         +=3D bareboximd
>  hostprogs-always-$(CONFIG_KALLSYMS)                    +=3D kallsyms
> @@ -28,7 +28,7 @@ hostprogs-always-$(CONFIG_LAYERSCAPE_PBLIMAGE)         =
       +=3D pblimage
>  hostprogs-always-$(CONFIG_STM32_IMAGE)                 +=3D stm32image
>  hostprogs-always-$(CONFIG_RISCV)                       +=3D prelink-risc=
v
>  hostprogs-always-$(CONFIG_RK_IMAGE)                    +=3D rkimage
> -HOSTCFLAGS_rkimage =3D `$(PKG_CONFIG) --cflags openssl`
> +HOSTCFLAGS_rkimage.o =3D `$(PKG_CONFIG) --cflags openssl`
>  HOSTLDLIBS_rkimage =3D `$(PKG_CONFIG) --libs openssl`
>  KBUILD_HOSTCFLAGS +=3D -I$(srctree)/scripts/include/
>  HOSTLDLIBS_mxsimage  =3D `$(PKG_CONFIG) --libs openssl`
> --
> 2.39.2
>
>


