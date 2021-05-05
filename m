Delivery-date: Wed, 05 May 2021 12:21:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEfE-0007dP-QQ
	for lore@lore.pengutronix.de; Wed, 05 May 2021 12:21:56 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1leEfD-0007sN-Op
	for lore@pengutronix.de; Wed, 05 May 2021 12:21:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=VuFnecbDIb25F44MvIg5xRcghWEeS/Eh5d/9qCM4+J4=; b=Wyxh0YSZ3YqaM262dh7JiSlDJ
	h7WQS160ydy+6At56l7WJR2cUPug9oACGrcfKq64TD3fB4d8wOUVwXR6v92dGywW6fpSaeSCP5CfZ
	0brxFIc4CIF3xbIPheviTfQSQDIlQgHQFBMWpIbx9EGj+h/nHj6EqSLg3bX3F44rJ7wm7ii77W8y0
	MW4/CAcSYz+n6GfCg/ra02uzvSh4ZaCOvg3EqQChiv5OlB/s1p+7BvMZHGLK2gZEXV5xMs9uCdsPp
	Fn4TSck6lXsYkAUf4IHdjCJaVTLwdIh/B6or9modzRW+XD5BqutvrbCXqUCWTlmMLOM7DrWWL0Y5f
	0jHGOgvsg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1leEeB-000uEN-3X; Wed, 05 May 2021 10:20:51 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEbX-000tAK-AX
 for barebox@desiato.infradead.org; Wed, 05 May 2021 10:18:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:Mime-Version:References:In-Reply-To:Message-Id:Subject:Cc:To:
 From:Date:Sender:Reply-To:Content-ID:Content-Description;
 bh=JLoFy4MNf3NJTwTokreNEqRxt0iDhjakw/dkr5YeWOk=; b=AeysYGJgBovZBJESUTD2LXaLnq
 jQfY/eoGLvzc6/AkbBlfvJ//mtCuBxGcoTq5CBrcj5AkrS/iVhFnpjdi9w5Wx4n27y5XCgJUNuSWg
 vo/f59w6xkFRfg2VwWV9X2CrtOEqhXo0pbLo/4MWrQR088QZhXTQM+/CfyMlVQbkyuuv14jNLEQxY
 VRZm1hSmQTmuth8nsLkspxCzOiWkTI3ZAknv83qqnDTc2H+zKzDSmAGYK8gmDyytKexFd+jbHG4Jw
 KQyfWaOzfn735FdDZpUkas6j75bjbJGDmR7/i4aM2tNyRmgUQBRc0LWHYV3sqdhzLaJZ6qdagkIpK
 tWTAq6Yw==;
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1leEbU-004ezJ-ID
 for barebox@lists.infradead.org; Wed, 05 May 2021 10:18:06 +0000
Received: by mail-lj1-x236.google.com with SMTP id w15so1720666ljo.10
 for <barebox@lists.infradead.org>; Wed, 05 May 2021 03:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JLoFy4MNf3NJTwTokreNEqRxt0iDhjakw/dkr5YeWOk=;
 b=Mi1uoUzk276lPTY3gGeIpJGfuX1/0XOEYah25hDbDeOqmtXRzMe075mqdBVIFn+ZCH
 4fUvocEPltENTIcDjRSwA+TkIxQ86QgQMhgWkHUJUy3SCLNOiYpDO+8dF2QGTYrXDWEG
 POZrwCtgJez1DAd32HgzuygizF0MNPRopOAb8AKQ2UmFw6TUCdFHEFNJ0oid35ryTs3h
 mYS0BBng0a9oFTubsjCcLYDSeMeHSJp66gw4wT1i63wQdSx6h/FfQHBujoY+XSkBGD5g
 doEcBYqyvjoF667Itp1Jtx2oKG77GCyfYgYzLQNnSFa7L//GX8WQPrRJzaCo8KQO+3CU
 TPCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JLoFy4MNf3NJTwTokreNEqRxt0iDhjakw/dkr5YeWOk=;
 b=WOu/jmMXGXCLPXQ61a8MIIKra+jSBhr1ap2UwrEjcyKqRL+0mjXEEwA5LOdqUc9g1d
 3qtJfcvozR04+Vsa7Z5eryob83lsHCL+DYjV0+xk4K6KpfOliI5DD5NG15abllmDjvS3
 Tu1XWsd9DDxHVfnIJs1neR2pHdPWGsCdAgA1sG6MFnD69nDlMWxLwusUCOwiOvN4c14z
 bAnANP+e12o0Ywn87vSGy7TBvgfntEold55mZHPVFqQX0gj2v7w9B9btXKYaS0mg+f+a
 LHGXFM7XqhbaEN5nTzYM1SRJx7l5dDeaT2uzKu+G05r+XZ+j/WVDyC+oxdSazOcIFX05
 moTg==
X-Gm-Message-State: AOAM532tRS4FLcNJ5tLRpxSHrd1AZU4aC1R3tddE+B8SOvelvTpyWXjy
 oirn+RBfmg2fij9/1Dq+w6b7IZe3OjM/3w==
X-Google-Smtp-Source: ABdhPJzL80n3/15aH+8OqUM44RYlDj8h2GGKNnX5GgFDno9+jOsi/7TZD/O+4L8vVS3sHn5MlsWSxQ==
X-Received: by 2002:a2e:b8cf:: with SMTP id s15mr20631839ljp.421.1620209883179; 
 Wed, 05 May 2021 03:18:03 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id b11sm502000lfi.292.2021.05.05.03.18.02
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 05 May 2021 03:18:02 -0700 (PDT)
Date: Wed, 5 May 2021 13:18:01 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, rcz@pengutronix.de
Message-Id: <20210505131801.5568b3337cefb36eda073522@gmail.com>
In-Reply-To: <20210427202309.32077-6-a.fatoum@pengutronix.de>
References: <20210427202309.32077-1-a.fatoum@pengutronix.de>
 <20210427202309.32077-6-a.fatoum@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210505_031804_626038_EB17B5F9 
X-CRM114-Status: GOOD (  23.86  )
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
Subject: Re: [PATCH 06/12] RISC-V: erizo: drop mach-erizo directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, 27 Apr 2021 22:23:03 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

Could you please rebase this patchseries on top of pengutronix next branch
and push it to github?

My latest LiteX SoC support patchseries introduces mach-litex/include/mach/=
debug_ll.h.

> With the recent changes, we can now delete mach-erizo. Do so.
> =

> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/riscv/Kconfig.socs                        |  2 +-
>  arch/riscv/Makefile                            | 13 -------------
>  .../include/mach =3D> include/asm}/debug_ll.h    | 18 +++++++-----------
>  arch/riscv/mach-erizo/Makefile                 |  3 ---
>  common/Kconfig                                 |  5 +++++
>  5 files changed, 13 insertions(+), 28 deletions(-)
>  rename arch/riscv/{mach-erizo/include/mach =3D> include/asm}/debug_ll.h =
(57%)
>  delete mode 100644 arch/riscv/mach-erizo/Makefile
> =

> diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
> index 093bca33806c..ea5ae0a6e9b5 100644
> --- a/arch/riscv/Kconfig.socs
> +++ b/arch/riscv/Kconfig.socs
> @@ -3,7 +3,7 @@ menu "SoC selection"
>  config SOC_ERIZO
>  	bool "Erizo SoC"
>  	depends on ARCH_RV32I
> -	select HAS_DEBUG_LL
> +	select HAS_ASM_DEBUG_LL
>  	select HAS_NMON
>  	select USE_COMPRESSED_DTB
>  	select RISCV_M_MODE
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index 09a94d69b220..0b1278936d91 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -19,8 +19,6 @@ LDFLAGS_pbl +=3D $(riscv-ldflags-y)
>  cflags-y +=3D $(riscv-cflags-y)
>  LDFLAGS_barebox +=3D -nostdlib
>  =

> -machine-$(CONFIG_SOC_ERIZO)	:=3D erizo
> -
>  LDFLAGS_barebox +=3D $(riscv-ldflags-y)
>  =

>  ifndef CONFIG_MODULES
> @@ -31,21 +29,10 @@ endif
>  =

>  KBUILD_BINARY :=3D barebox.bin
>  =

> -machdirs :=3D $(patsubst %,arch/riscv/mach-%/,$(machine-y))
> -
> -KBUILD_CPPFLAGS +=3D $(patsubst %,-I$(srctree)/%include,$(machdirs))
> -
>  archprepare: maketools
>  =

>  PHONY +=3D maketools
>  =

> -ifneq ($(machine-y),)
> -MACH  :=3D arch/riscv/mach-$(machine-y)/
> -else
> -MACH  :=3D
> -endif
> -
> -common-y +=3D $(MACH)
>  common-y +=3D arch/riscv/boards/
>  common-y +=3D arch/riscv/cpu/
>  common-y +=3D arch/riscv/lib/
> diff --git a/arch/riscv/mach-erizo/include/mach/debug_ll.h b/arch/riscv/i=
nclude/asm/debug_ll.h
> similarity index 57%
> rename from arch/riscv/mach-erizo/include/mach/debug_ll.h
> rename to arch/riscv/include/asm/debug_ll.h
> index a20acfcdfb79..755ed09786d5 100644
> --- a/arch/riscv/mach-erizo/include/mach/debug_ll.h
> +++ b/arch/riscv/include/asm/debug_ll.h
> @@ -1,18 +1,10 @@
>  /* SPDX-License-Identifier: GPL-2.0-only */
>  /*
>   * Copyright (C) 2017 Antony Pavlov <antonynpavlov@gmail.com>
> - *
> - * This file is part of barebox.
> - *
> - * This program is distributed in the hope that it will be useful,
> - * but WITHOUT ANY WARRANTY; without even the implied warranty of
> - * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> - * GNU General Public License for more details.
> - *
>   */
>  =

> -#ifndef __MACH_ERIZO_DEBUG_LL__
> -#define __MACH_ERIZO_DEBUG_LL__
> +#ifndef __ASM_DEBUG_LL__
> +#define __ASM_DEBUG_LL__
>  =

>  /** @file
>   *  This File contains declaration for early output support
> @@ -20,6 +12,8 @@
>  =

>  #include <linux/kconfig.h>
>  =

> +#ifdef CONFIG_DEBUG_ERIZO
> +
>  #define DEBUG_LL_UART_ADDR	0x90000000
>  #define DEBUG_LL_UART_SHIFT	2
>  #define DEBUG_LL_UART_IOSIZE32
> @@ -30,4 +24,6 @@
>  =

>  #include <asm/debug_ll_ns16550.h>
>  =

> -#endif /* __MACH_ERIZO_DEBUG_LL__ */
> +#endif
> +
> +#endif /* __ASM_DEBUG_LL__ */
> diff --git a/arch/riscv/mach-erizo/Makefile b/arch/riscv/mach-erizo/Makef=
ile
> deleted file mode 100644
> index d9c51e74c379..000000000000
> --- a/arch/riscv/mach-erizo/Makefile
> +++ /dev/null
> @@ -1,3 +0,0 @@
> -# just to build a built-in.o. Otherwise compilation fails when no o-file=
s is
> -# created.
> -obj- +=3D dummy.o
> diff --git a/common/Kconfig b/common/Kconfig
> index b10fb45b722d..6d7a1c6b0494 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1342,6 +1342,11 @@ config DEBUG_RPI3_MINI_UART
>  	help
>  	  Say Y here if you want low-level debugging support on
>  	  RaspberryPi 3 board mini UART.
> +
> +config DEBUG_ERIZO
> +	bool "Erizo ns16550 port"
> +	depends on SOC_ERIZO
> +
>  endchoice
>  =

>  config DEBUG_IMX_UART_PORT
> -- =

> 2.29.2
> =



-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

