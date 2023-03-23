Delivery-date: Thu, 23 Mar 2023 21:02:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfR8O-00CJCO-VJ
	for lore@lore.pengutronix.de; Thu, 23 Mar 2023 21:02:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pfR8O-0000hl-Qk
	for lore@pengutronix.de; Thu, 23 Mar 2023 21:02:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TxYLjUllQaMCrqrgYsysbWCj5OZRCQNJV9r+c1dwMgc=; b=vNr3BIPS3845ELZKofINF/ujul
	zQOYLiO+EDx0o6jeyMol7xG46BtBg5YVqZdgXQmr1umH5Y6EiUgA7k9LCS+FshMchmVaNjlsQQ+12
	/6OUABHTGwX/3DhZtxYbxqUVbWHqd3x9NhL92Gzfsy7qZ8C/54cTJgRqaPA2WZhbZyb3gl7mVhx8h
	28GcJ3ERVrlyGUonSRRbi3z5ebakcYS/ykyQ3o8Qnqs3aWNOQbTEFh5v6yH5jM4wo1s1xAWsGSNe8
	P+3vd+9GewfUf2xsEp9d08YOJQuiVV/tauqEXJccV6kP7OhZWa6gYp5sTmY2uK8diGqO2P2gKhZ+C
	dakT2ZPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pfR71-002siE-2t;
	Thu, 23 Mar 2023 20:00:39 +0000
Received: from mail-oa1-x2c.google.com ([2001:4860:4864:20::2c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pfR6y-002shM-08
	for barebox@lists.infradead.org;
	Thu, 23 Mar 2023 20:00:37 +0000
Received: by mail-oa1-x2c.google.com with SMTP id 586e51a60fabf-17786581fe1so23763010fac.10
        for <barebox@lists.infradead.org>; Thu, 23 Mar 2023 13:00:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679601632;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TxYLjUllQaMCrqrgYsysbWCj5OZRCQNJV9r+c1dwMgc=;
        b=VNTLNLdSIbRYcM7x38M8XsUbAw1uOh4AOBDMuqxX0OKFVsgIlvjiYNMUuGHiKxVxPt
         jXsTF5rCk+VD0lXqefoVxrsTPEuXQYrht9lJ+WSHI8LqoF3zPv6HEb5lZBTa0RTE2lk1
         SdXV1WL2E2MqngTJbrdgeFi/SNp9C5AKGAJyDN7kgeFt0qmJXGvGuUGbq201ad0LVBqZ
         C0fVLC2Xmza/crcsEK8XTx45GGqiSpjIIqiMHUTVV29brIhHYk0FRb7/VWUxQ57310Jt
         T61pb5kz481ZQjMIC65iCgO4mqaquI/chb2HXkZ3UyvTWBQxLwayUhL53S8m9qKNQus1
         j1eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679601632;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TxYLjUllQaMCrqrgYsysbWCj5OZRCQNJV9r+c1dwMgc=;
        b=RYL4vfRcDKtjtRcJMi4pLyP/bBeoNi0srKB3E7Raef37n1jWK2iVwVxCtQGuAuzWma
         9fxlfCUph1ICCBfxBBt5t4F+rsCo0QPtdQ1bJ0151Ha4d6KGk7y8RoOXXELWEkEBP2EJ
         Wb1KBVPrlLwKC+wxXALBZZU4/HUY5jXBTW7oE5v1xrd9DRYELvDZ5W5BDpKgwM/GADjZ
         UvIdSsLNjBhX0hzEztB4W2Tu8dZojhk4iXW7hpexeHUjCOlg/OFFhYYcAT3QRWSmO89R
         7HOLIDmxIZdwE1nEJMg4de8YmIUZX2uiuwINIVJBP6gkcEv/ME9ywM1lm7JwnRmpPCuf
         15BQ==
X-Gm-Message-State: AO0yUKVB3zsWO3zKYF9co7Z/QlKGdRgE1tO9ijm5DtREO3VuTQHSsLbr
	jEpO71YmPlsBEJkq4xsB/Q7VNueb9ZGKTuOWBr/8nFpbsnQ=
X-Google-Smtp-Source: AKy350YWPy234Eo2asbg+Uplc5tOUpe6WqUHKUHRvzHs1qHM2KUt2vtQPpekKTPuycGWHYdNR9HV5Yqv0pvyPY7mkDI=
X-Received: by 2002:a05:6871:279e:b0:179:c3d1:42d0 with SMTP id
 zd30-20020a056871279e00b00179c3d142d0mr191971oab.11.1679601632668; Thu, 23
 Mar 2023 13:00:32 -0700 (PDT)
MIME-Version: 1.0
References: <20230322140728.4096066-1-s.hauer@pengutronix.de>
In-Reply-To: <20230322140728.4096066-1-s.hauer@pengutronix.de>
From: Masahiro YAMADA <mappyland78@gmail.com>
Date: Fri, 24 Mar 2023 04:59:56 +0900
Message-ID: <CAK7LNATzbQYy0JMkRK=Ni9MykzGX-BcLTFhswgf+nNHGzWQ-=A@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230323_130036_099887_43E99180 
X-CRM114-Status: GOOD (  17.17  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: Rockchip: let boards depend on 32/64bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Mar 22, 2023 at 11:09=E2=80=AFPM Sascha Hauer <s.hauer@pengutronix.=
de> wrote:
>
> So far we can enable support for 32bit and 64bit SoCs at the same time
> which results in an unbuildable barebox. This is annoying, let the board
> visibility depend on the selected code model.
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>


What is weird in the current approach is,
none of "make ARCH=3Darm64 allnoconfig"
"make ARCH=3Darm64 allyesconfig" sets CONFIG_64BIT.




I think CONFIG_64BIT should be the highest level option,
which is not selected by anyone, and does not depend on
any other CONFIG option.




config 64BIT
      bool "64bit" if "$(ARCH)" !=3D "arm64"
      default "$(ARCH)" =3D "arm64"


Then, 32bit-only platforms depend on !64BIT.
and 64bit-only platforms depend on 64BIT.


config ARCH_ZYNQ
       bool "zynq (32bit)"
       depends on !64BIT

config ARCH_ZYNQMP
       bool "zynq (64bit)"
       depends on 64BIT















> ---
>  arch/arm/Kconfig               | 2 ++
>  arch/arm/mach-rockchip/Kconfig | 9 ++++++++-
>  2 files changed, 10 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index abe649de49..2c1783d8e9 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -248,6 +248,8 @@ config ARCH_ROCKCHIP
>         select OFTREE
>         select HAVE_PBL_MULTI_IMAGES
>         select HAS_DEBUG_LL
> +       select CPU_SUPPORTS_32BIT_KERNEL
> +       select CPU_SUPPORTS_64BIT_KERNEL
>
>  config ARCH_STM32MP
>         bool "STMicroelectronics STM32MP"
> diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kcon=
fig
> index 4ac75ab947..9b4913d5da 100644
> --- a/arch/arm/mach-rockchip/Kconfig
> +++ b/arch/arm/mach-rockchip/Kconfig
> @@ -30,7 +30,6 @@ config ARCH_RK3288
>  config ARCH_ROCKCHIP_V8
>         bool
>         select CPU_V8
> -       select CPU_SUPPORTS_64BIT_KERNEL
>         select ARM_ATF
>         select RELOCATABLE
>
> @@ -49,6 +48,8 @@ config ARCH_RK3568
>
>  comment "select Rockchip boards:"
>
> +if 32BIT
> +
>  config MACH_RADXA_ROCK
>         select ARCH_RK3188
>         select I2C
> @@ -62,6 +63,10 @@ config MACH_PHYTEC_SOM_RK3288
>         help
>           Say Y here if you are using a RK3288 based Phytecs SOM
>
> +endif
> +
> +if 64BIT
> +
>  config MACH_RK3568_EVB
>         select ARCH_RK3568
>         bool "RK3568 EVB"
> @@ -86,6 +91,8 @@ config MACH_RADXA_ROCK3
>         help
>           Say Y here if you are using a Radxa ROCK3
>
> +endif
> +
>  comment "select board features:"
>
>  config ARCH_ROCKCHIP_ATF
> --
> 2.30.2
>
>


