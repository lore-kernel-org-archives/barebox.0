Delivery-date: Wed, 28 Apr 2021 06:40:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbc0B-0007M6-7x
	for lore@lore.pengutronix.de; Wed, 28 Apr 2021 06:40:43 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lbc0A-0002cd-9H
	for lore@pengutronix.de; Wed, 28 Apr 2021 06:40:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VzUps7dtdRezLK3n1rn8jwjNg1z9ffPdIas+lN/N8Ao=; b=cOVfYOJyWL5TItxl5pXeq6ta+
	UZzJhUxfiZDXQNK3lrZQFTstwuBqAY5lmdE9axdjSwnnW5tkPsSMR9ywv4nwqS0AKDWL3O/n9cT0b
	m8jBpq/mNSKZP+F/kDHC14ce9UZak15cN1QCKXiX/lIGyFaG/f1TVWEUsdZqwtOfiFNocOKTGcSCf
	/QIlIgxhOq8OiyQ4mQEwFu4S3Yv8vjatdTwS+iGIT5Q1XiJro09PNT8wVwPRoUztFgk8ynd0jhznK
	wH/oz0YPU0qV1CbRtZ3ci7XK5lVhzPbgaSfM9U0d0dp4u9FKy7pnYpO/7rAFBjHqXpcUqTPfXdejQ
	Mq3kTYDvQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lbbzH-002lWX-8Z; Wed, 28 Apr 2021 04:39:47 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbbzA-002lWB-QT
 for barebox@desiato.infradead.org; Wed, 28 Apr 2021 04:39:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:To:From:
 Date:Sender:Reply-To:Cc:Content-ID:Content-Description;
 bh=5EYXSuyHkAHPoSLSucFT+pSZVW0DIU9kNY3dwxw5rGE=; b=SFwJmIkBYH09rer4P1i8IV6rTX
 RvrecIPPgBwUjzAOw73BI12m5sfDwtKB0F3uHafBTr+sJPD6BOv6pFFIkXentDLfQqpJX0HH50tnR
 S2/7rXokONvVPu5oVvyiMGfZQArnbR6qHjU349O1j+G8CAcyAoNAT33LezSkxkuLIm3Za+vG3SgYM
 9dyHszxpf+8mE44zV3caH15WMvDfhUBoNAWvg3siFL8FRgJZPIY7fVgaJWZbu7gW2NO++0qOULf0T
 RG5lAQiBKz5r6uc7OjUN1a5iEEGm70YE5Nhvgirf8DtocqixRzp3ya9QQNSJR5DTtVtMGcL3GMp6a
 DRRsMOpA==;
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lbbz8-00HB0N-6X
 for barebox@lists.infradead.org; Wed, 28 Apr 2021 04:39:39 +0000
Received: by mail-lf1-x12b.google.com with SMTP id h36so42910397lfv.7
 for <barebox@lists.infradead.org>; Tue, 27 Apr 2021 21:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=5EYXSuyHkAHPoSLSucFT+pSZVW0DIU9kNY3dwxw5rGE=;
 b=HcUJ7BxZ2OCwqA6GG1IqW4VxPBoNvdS1B4h2QImQhXh43J066mjRXBI9ZxFG06hcb9
 jNFxi6tEGZYG0xdCDzPgrkA4hir7kY/soXQ9vePwBO+Fj6vF/WNXs53Y1/JhDPOa0zv0
 rSs4s6ISSHJI+DlxThD/c6j4NgA7SV3WvInGHPaYTX2i80a8gAAGPw2WudUH6cWQxC77
 Tji5oBYcUQxm9w2qAD2vi3yGM0yKXgQGmd8BMCd4MWsQQW3NxpFIi/DwfLw0WaQw9Tev
 FL3NnrKf0di0PFe6ePcwSzLbv0qULVJhFMUV3cEbMUwmNPvrBSzs7UGkFngfaeBeWlip
 xd8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5EYXSuyHkAHPoSLSucFT+pSZVW0DIU9kNY3dwxw5rGE=;
 b=gvGO9+rX09J/C+MjV7PFt0sf5DIn9oM/HiXKqiwxNh+FjVpUFn5ebTxbGhHHmHDUJ/
 yBwCDJYGbZ5Fvg0aa8XmB7Cwj2wROwhrzNuvJg0NeZnf1JDjjybG5IgefH08QxJYNll/
 c9dFm94/YgJMm9VGrdpZ4dXz4X7PF9qMaei+oenwIAnS29rvq9qCNdcPYeJePX9FPPt3
 KzL2EgNX1ofARfrrk5v/7SZE09I0MutxYioHmSaSYwJzcMpCfwimPoTEVMf9lWXHPRHX
 /wt/fC9vYTk1tCtUNgtxELl7cgipzNd5lR/ITyqVaqaUvJAft6yrzfyCL6lN8iL/JldJ
 hyvA==
X-Gm-Message-State: AOAM532LjWjCF2J7nem9KxTFuutrL/Mp/xi0bYfW91c2jzfuudAXszE0
 /ndEsr/JhV9sSf0zj0pRGW93H3qlag7Iag==
X-Google-Smtp-Source: ABdhPJw/d0chNxtwBvWH+sGahIjiipCKvx5e4xRF8Hc4BRD3RBVWxJGVaHihkXicp/gmd2+oID03AQ==
X-Received: by 2002:ac2:4c85:: with SMTP id d5mr19038388lfl.79.1619584775329; 
 Tue, 27 Apr 2021 21:39:35 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id h9sm42639lfu.305.2021.04.27.21.39.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 27 Apr 2021 21:39:35 -0700 (PDT)
Date: Wed, 28 Apr 2021 07:39:33 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Message-Id: <20210428073933.0580c287725269c8641a265a@gmail.com>
In-Reply-To: <20210425063517.120260-1-antonynpavlov@gmail.com>
References: <20210425063517.120260-1-antonynpavlov@gmail.com>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210427_213938_261603_7D57B7DD 
X-CRM114-Status: GOOD (  15.96  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] MIPS: qemu-malta: use generic syscon reset driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, 25 Apr 2021 09:35:17 +0300
Antony Pavlov <antonynpavlov@gmail.com> wrote:

ping

> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/configs/qemu-malta_defconfig |  2 ++
>  arch/mips/dts/qemu-malta.dts           | 13 +++++++++++
>  arch/mips/mach-malta/Makefile          |  1 -
>  arch/mips/mach-malta/reset.c           | 31 --------------------------
>  4 files changed, 15 insertions(+), 32 deletions(-)
> =

> diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/q=
emu-malta_defconfig
> index b9994f392c..ab3abb7a2a 100644
> --- a/arch/mips/configs/qemu-malta_defconfig
> +++ b/arch/mips/configs/qemu-malta_defconfig
> @@ -75,6 +75,8 @@ CONFIG_DRIVER_VIDEO_BOCHS_PCI=3Dy
>  CONFIG_GPIO_MALTA_FPGA_I2C=3Dy
>  CONFIG_PCI=3Dy
>  CONFIG_PCI_DEBUG=3Dy
> +CONFIG_SYSCON_REBOOT_MODE=3Dy
> +CONFIG_POWER_RESET_SYSCON=3Dy
>  CONFIG_FS_CRAMFS=3Dy
>  CONFIG_FS_TFTP=3Dy
>  CONFIG_FS_FAT=3Dy
> diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
> index 32e473cac0..2d6f4a0ca3 100644
> --- a/arch/mips/dts/qemu-malta.dts
> +++ b/arch/mips/dts/qemu-malta.dts
> @@ -27,6 +27,19 @@
>  		clock-frequency =3D <1843200>;
>  	};
>  =

> +	fpga_regs: system-controller@1f000000 {
> +		compatible =3D "mti,malta-fpga", "syscon", "simple-mfd";
> +		reg =3D <0x1f000000 0x600>;
> +		native-endian;
> +
> +		reboot {
> +			compatible =3D "syscon-reboot";
> +			regmap =3D <&fpga_regs>;
> +			offset =3D <0x500>;
> +			mask =3D <0x42>;
> +		};
> +	};
> +
>  	gpio: gpio@1f000b00 {
>  		compatible =3D "mti,malta-fpga-i2c-gpio";
>  		gpio-controller;
> diff --git a/arch/mips/mach-malta/Makefile b/arch/mips/mach-malta/Makefile
> index 0c5a7018d4..7d56f215b0 100644
> --- a/arch/mips/mach-malta/Makefile
> +++ b/arch/mips/mach-malta/Makefile
> @@ -1,2 +1 @@
> -obj-y +=3D reset.o
>  obj-$(CONFIG_PCI) +=3D pci.o
> diff --git a/arch/mips/mach-malta/reset.c b/arch/mips/mach-malta/reset.c
> deleted file mode 100644
> index ad0de2741b..0000000000
> --- a/arch/mips/mach-malta/reset.c
> +++ /dev/null
> @@ -1,31 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> -/*
> - * Copyright (C) 2011 Antony Pavlov <antonynpavlov@gmail.com>
> - */
> -
> -/**
> - * @file
> - * @brief Resetting an malta board
> - */
> -
> -#include <common.h>
> -#include <io.h>
> -#include <init.h>
> -#include <restart.h>
> -#include <mach/hardware.h>
> -
> -static void __noreturn malta_restart_soc(struct restart_handler *rst)
> -{
> -	__raw_writel(GORESET, (char *)SOFTRES_REG);
> -
> -	hang();
> -	/*NOTREACHED*/
> -}
> -
> -static int restart_register_feature(void)
> -{
> -	restart_handler_register_fn("soc", malta_restart_soc);
> -
> -	return 0;
> -}
> -coredevice_initcall(restart_register_feature);
> -- =

> 2.31.1
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

