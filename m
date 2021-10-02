Delivery-date: Sat, 02 Oct 2021 11:46:16 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWbay-0004Dp-GL
	for lore@lore.pengutronix.de; Sat, 02 Oct 2021 11:46:16 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWbax-0004Lb-2f
	for lore@pengutronix.de; Sat, 02 Oct 2021 11:46:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O5MKQSbZP6W/69MhamY18UFcfmLgkoYWkA8MB17uLd0=; b=Wg4AEV60X239Ku
	A9C8LJs5Tx7qFunxNfj9qnjpXxqfF5S/pZjCDL9isQUL3MZgzRIGz2ZEbOVIJz4cTJ6qYzzeaWsqO
	PQtCw2LSK5hm4eQZhqimj3MzFUliqTGRrEAzD/6FaqRXMAmFfQIZ7hatiefYiOC6O+csJHdVUrnNl
	02MHkY5jXLQsb5x/UBfyNzh+ct2vJPJ/HbPS6TvitX9FObcXYRt0xB9A/n0s1fp0O/iTYJFq4AwBf
	8GsR2zGASvdfcNrKb/t8kh6pUsgUEmg2EdHKJJlAbEqcZWlLgFZZTVnWRcXxqV+N0HZDb8gO8Qfu1
	IsgRTope1iGeyYXktc+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWbZi-0021JP-4e; Sat, 02 Oct 2021 09:44:58 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWbZc-0021J2-TD
 for barebox@lists.infradead.org; Sat, 02 Oct 2021 09:44:54 +0000
Received: by mail-lf1-x12f.google.com with SMTP id y23so9292838lfb.0
 for <barebox@lists.infradead.org>; Sat, 02 Oct 2021 02:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=exhK6rwyKbGualjVy6kliDlzBi5+EC7sINvZqceoVhs=;
 b=mX2iMn/cy1UPWEyGtKgVRGmqiYKGKtXOOHy+8UJoEZLJ3PhNlqPi2MI0zW/NAiOiXK
 cowcsewb4GXRxiIXNEIJJH2OE0YLWoAiJ+oZIEaveJwb+BK7D1o9pVN2wsWix1zkSyM9
 FU+Z31MuCWagfIbfla8zEkb5ASOe3s/oyD74VqtT4FKI1E6AfxGM2si4/zQ239Qjgm0P
 01scMlvGK3RhGIwRkC1o6m5FIsNiYIk3grVaVsDX3DUPoLBlYkItuy9Aj/5JKyPTFm6p
 p+gDQlcbICGEAzu2vwzOxt9eXZXM1OtTz4KrI0Uom0pE+llHond+SrCe/8twvXefPn/+
 Z2SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=exhK6rwyKbGualjVy6kliDlzBi5+EC7sINvZqceoVhs=;
 b=1jv9ZdwojAgt5KpKCJXsGKgXUr44H7Ckw/Of5Gn5VHi9xMpbLu9auuSTCkHztEjCL2
 g2FhGF6wXDNzSm9TUiHrkVTbEHp1hfVoHiVi3CRJsfoi4u3CuS92gDxcWXWu+MzwrTqo
 n2dvjkN5pVVg8uNP3YWgtnfDdr4qyKfnGzZ1ruNUzOmaEWB2JnG/34kI+wce9s6vjevZ
 Jnn/mPiPtOuQwf3/zwg2U9mFFwnBEoPUpCN5X1s3aiEw56Nnem18+bUtZlNO74f5O/LR
 G0wAhYENNUukEEhrpnXtPCqlFeorz2Z6uPu7OdQzMRH78S/EFRhaGa2d2dVGC0x8J4tm
 u3lw==
X-Gm-Message-State: AOAM5329wvoKrNbDIaMNtKfi31FC5gdpEtnMLgZKS7yBI+HM+Bh52vMq
 sHYCHT0Y6srQSLQI0quLEGY=
X-Google-Smtp-Source: ABdhPJxyzc6Y29F7L7ZF7DL7/0Ej60c5QPpuZh5fd74lEKiuQuzx/Ay1hLLW5Jw1kdPXHpBcnzqbVA==
X-Received: by 2002:a05:651c:211a:: with SMTP id
 a26mr2914578ljq.148.1633167889935; 
 Sat, 02 Oct 2021 02:44:49 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id l2sm998015lfe.1.2021.10.02.02.44.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 02 Oct 2021 02:44:49 -0700 (PDT)
Date: Sat, 2 Oct 2021 12:44:47 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>, Ahmad Fatoum
 <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Message-Id: <20211002124447.74a231c6c07697e9042b905e@gmail.com>
In-Reply-To: <20211002084850.GA24834@pengutronix.de>
References: <20211001142453.4a3c0ba9bd7bb909125e2a5f@gmail.com>
 <20211002084850.GA24834@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211002_024452_992434_348C2C7E 
X-CRM114-Status: GOOD (  32.49  )
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
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,PTX_BROKEN_RDNS,RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: 'of_compatible' and 'model' imd records are unusable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sat, 2 Oct 2021 10:48:50 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

Hi Sascha!

> On Fri, Oct 01, 2021 at 02:24:53PM +0300, Antony Pavlov wrote:
> > Hi all!
> > =

> > I have cloned barebox c67ada0024da (v2021.08.0) and found that
> > 'of_compatible' and 'model' imd records are unusable.
> > =

> > E.g.
> > =

> > barebox$ make ARCH=3Darm CROSS_COMPILE=3Daarch64-linux-gnu- imx_v8_defc=
onfig
> > barebox$ make ARCH=3Darm CROSS_COMPILE=3Daarch64-linux-gnu-
> > ...
> > images built:
> > barebox-nxp-imx8mm-evk.img
> > barebox-prt-prt8mm.img
> > barebox-nxp-imx8mp-evk.img
> > barebox-nxp-imx8mq-evk.img
> > barebox-zii-imx8mq-dev.img
> > barebox-phytec-phycore-imx8mq.img
> > =

> > barebox$ ./scripts/bareboximd images/barebox-nxp-imx8mm-evk.img
> > build: #1 Fri Oct 1 10:16:30 UTC 2021
> > buildsystem version: =

> > crc32: 0x00000000
> > release: 2021.08.0
> > barebox$ =

> > =

> > There is no 'of_compatible' and 'model' imd records in bareboximd outpu=
t.
> > =

> > So there is no chance to imd_find_type(..., IMD_TYPE_OF_COMPATIBLE)
> > (see common/bbu.c) in a barebox image file.
> > =

> > scripts/gen-dtb-s puts IMD_TYPE_OF_COMPATIBLE and IMD_TYPE_MODEL
> > records into barebox_imd_0 section.
> > =

> > BAREBOX_IMD macro (include/asm-generic/barebox.lds.h)
> > does not KEEP barebox_imd_0 section":
> =

> This is done on purpose because otherwise...
> =

> > =

> > #define BAREBOX_IMD                             \
> >         STRUCT_ALIGN();                         \
> >         KEEP(*(.barebox_imd_start))             \
> >         KEEP(*(.barebox_imd_1*))                \
> >         *(.barebox_imd_0*)                      \
> >         KEEP(*(.barebox_imd_end))
> > =

> > KEEPing barebox_imd_0 leads to several 'of_compatible' and 'model' reco=
rds
> > in one barebox image file, e.g.:
> =

> ...exactly this would happen.
> =

> To get the of_compatible and model imd tags in an image you have to put
> IMD_USED_OF() explicitly into the entry function of the image handling
> this compatible, there's no way for the build process to know which
> image handles which device tree. See below for an example which adds the
> tags for the boards you are currently compiling.

There are two remarks:

1. It looks like we still able to automatically add of_compatible and model=
 imd tags.
Please see my message http://lists.infradead.org/pipermail/barebox/2021-Oct=
ober/037412.html

2. I have no lowlevel.c board files on MIPS :(

Can we automaticaly generate of_compatible and model imd tags for most of t=
he boards
and explicitly generate tags with IMD_USED_OF() just for selected boards?

-- =

Best regards,
=A0 Antony Pavlov


> =

> Sascha
> =

> --------------------------------8<-------------------------
> =

> From 456d90992fe0b9f4258b693a946f8d13ba5b0b4c Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Sat, 2 Oct 2021 10:45:04 +0200
> Subject: [PATCH] ARM: i.MX8m: Add of_compatible imd tags for i.MX8 boards
> =

> The build process has to be manually told which image is compatible to
> which device tree. Add the IMD_USED_OF() calls to the i.MX8m based
> boards.
> =

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/arm/boards/nxp-imx8mm-evk/lowlevel.c        | 3 +++
>  arch/arm/boards/nxp-imx8mp-evk/lowlevel.c        | 3 +++
>  arch/arm/boards/nxp-imx8mq-evk/lowlevel.c        | 3 +++
>  arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c | 3 +++
>  arch/arm/boards/zii-imx8mq-dev/lowlevel.c        | 4 ++++
>  5 files changed, 16 insertions(+)
> =

> diff --git a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c b/arch/arm/boards/=
nxp-imx8mm-evk/lowlevel.c
> index 4bd29c2269..c2f6206cfd 100644
> --- a/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mm-evk/lowlevel.c
> @@ -21,6 +21,7 @@
>  #include <mfd/bd71837.h>
>  #include <soc/imx8m/ddr.h>
>  #include <soc/fsl/fsl_udc.h>
> +#include <image-metadata.h>
>  =

>  extern char __dtb_imx8mm_evk_start[];
>  =

> @@ -177,5 +178,7 @@ ENTRY_FUNCTION(start_nxp_imx8mm_evk, r0, r1, r2)
>  	relocate_to_current_adr();
>  	setup_c();
>  =

> +	IMD_USED_OF(imx8mm_evk);
> +
>  	nxp_imx8mm_evk_start();
>  }
> diff --git a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c b/arch/arm/boards/=
nxp-imx8mp-evk/lowlevel.c
> index 3298ded586..5732ccc645 100644
> --- a/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mp-evk/lowlevel.c
> @@ -4,6 +4,7 @@
>  #include <common.h>
>  #include <debug_ll.h>
>  #include <firmware.h>
> +#include <image-metadata.h>
>  #include <asm/mmu.h>
>  #include <asm/cache.h>
>  #include <asm/sections.h>
> @@ -189,5 +190,7 @@ ENTRY_FUNCTION(start_nxp_imx8mp_evk, r0, r1, r2)
>  	relocate_to_current_adr();
>  	setup_c();
>  =

> +	IMD_USED_OF(imx8mp_evk);
> +
>  	nxp_imx8mp_evk_start();
>  }
> diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/=
nxp-imx8mq-evk/lowlevel.c
> index 564621abef..92cc22e022 100644
> --- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> +++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
> @@ -2,6 +2,7 @@
>  =

>  #include <common.h>
>  #include <firmware.h>
> +#include <image-metadata.h>
>  #include <linux/sizes.h>
>  #include <mach/generic.h>
>  #include <asm/barebox-arm-head.h>
> @@ -106,5 +107,7 @@ ENTRY_FUNCTION(start_nxp_imx8mq_evk, r0, r1, r2)
>  	relocate_to_current_adr();
>  	setup_c();
>  =

> +	IMD_USED_OF(imx8mq_evk);
> +
>  	nxp_imx8mq_evk_start();
>  }
> diff --git a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c b/arch/arm/=
boards/protonic-imx8m/lowlevel-prt8mm.c
> index 3b8b53b36e..24d98fe6c9 100644
> --- a/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
> +++ b/arch/arm/boards/protonic-imx8m/lowlevel-prt8mm.c
> @@ -2,6 +2,7 @@
>  =

>  #include <asm/barebox-arm.h>
>  #include <common.h>
> +#include <image-metadata.h>
>  #include <debug_ll.h>
>  #include <firmware.h>
>  #include <mach/atf.h>
> @@ -118,5 +119,7 @@ ENTRY_FUNCTION(start_prt_prt8mm, r0, r1, r2)
>  	relocate_to_current_adr();
>  	setup_c();
>  =

> +	IMD_USED_OF(imx8mm_prt8mm);
> +
>  	prt_prt8mm_start();
>  }
> diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/=
zii-imx8mq-dev/lowlevel.c
> index 311e61fb1d..cf53fb2def 100644
> --- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
> +++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
> @@ -6,6 +6,7 @@
>  =

>  #include <common.h>
>  #include <firmware.h>
> +#include <image-metadata.h>
>  #include <linux/sizes.h>
>  #include <mach/generic.h>
>  #include <asm/barebox-arm-head.h>
> @@ -200,5 +201,8 @@ ENTRY_FUNCTION(start_zii_imx8mq_dev, r0, r1, r2)
>  	relocate_to_current_adr();
>  	setup_c();
>  =

> +	IMD_USED_OF(imx8mq_zii_ultra_rmb3);
> +	IMD_USED_OF(imx8mq_zii_ultra_zest);
> +
>  	zii_imx8mq_dev_start();
>  }
> -- =

> 2.30.2
> =

> =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

