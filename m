Delivery-date: Mon, 03 May 2021 13:21:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWdu-0002ui-QT
	for lore@lore.pengutronix.de; Mon, 03 May 2021 13:21:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ldWdt-0004la-Th
	for lore@pengutronix.de; Mon, 03 May 2021 13:21:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CSvCXn3lqhoWOOn7FaW3fHr1QXvSJtTrz6Unwif1FUg=; b=Pvz/VILiBangUv8g6fVHlHHoL
	XbI3Jnb6hiDcZeraLQ03CBE7bzdMZr35kfCh4dutq9qIxcDJ0IaucqblFSpOt/ApUE3BoZRS1140V
	rkp3qkmmLKSWZFOTtBGI9xWnVOCo86RL3683/abh49E7xZMNzVapJVIbbVYu+b/3yjm8jMWQ1OR7V
	seGuNtlUCRV9v6osFwZqAHtQ6LVTKXv6EJ2jSfE875ShF6Hj8ef9by3akxUk6seCO7AAxqVstSbun
	6Jl0Ms3Dh71POstUZ2Vq4mFvLq6o2Y+Hs5nmd2oMad6JxTd0n6r11UW6kEqB1zrLBjIxTJUT0K/tz
	Z8AzfwexQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ldWcJ-00Djox-PX; Mon, 03 May 2021 11:20:00 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWa8-00Djid-G8
 for barebox@desiato.infradead.org; Mon, 03 May 2021 11:18:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=In-Reply-To:Content-Type:MIME-Version
 :References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=OtZ0bHMjKVDMy3HEnS2TyqMP0MHMJ8YiZe06YymUFx8=; b=FbT1tk/F6J4uEDC9ophx8n88qi
 ttLsOXbmgx1+ojyDuYxQ6fj3mwmupuq4ECMAU2VXs/MTP0/ZiE9lrKMcDXXwRTOH/SLIEsrKZmiMa
 Q78gCnNvRewTokNxtKrx1sEFEuwwKn+xZiQBpdb+TLuNxX2jJtONA7BiPPPP6bwWzRO73Z9b1E+2Q
 gWFpzFrUcH+fJBi98Mgrc8ZoO/NsXYUF1q2dssp87SGCUO7OXDYALUnsKUP3UiFZExegSxD3rGpN+
 QkVhLSFIWWvNY53b9fq3dBP+HCxfMj1SHh18lagpP3h3dIo4mK6VeYvkHrj+yxFghKve1grZDaTxK
 kitVymMw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ldWa5-0030RT-Os
 for barebox@lists.infradead.org; Mon, 03 May 2021 11:17:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWa4-0004Kf-I7; Mon, 03 May 2021 13:17:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ldWa4-0000zZ-8a; Mon, 03 May 2021 13:17:40 +0200
Date: Mon, 3 May 2021 13:17:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20210503111740.GZ19819@pengutronix.de>
References: <20210425063517.120260-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210425063517.120260-1-antonynpavlov@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 13:17:31 up 74 days, 14:41, 100 users,  load average: 0.11, 0.18,
 0.25
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210503_041741_830595_C38E6858 
X-CRM114-Status: GOOD (  23.65  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] MIPS: qemu-malta: use generic syscon reset driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Apr 25, 2021 at 09:35:17AM +0300, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  arch/mips/configs/qemu-malta_defconfig |  2 ++
>  arch/mips/dts/qemu-malta.dts           | 13 +++++++++++
>  arch/mips/mach-malta/Makefile          |  1 -
>  arch/mips/mach-malta/reset.c           | 31 --------------------------
>  4 files changed, 15 insertions(+), 32 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
> index b9994f392c..ab3abb7a2a 100644
> --- a/arch/mips/configs/qemu-malta_defconfig
> +++ b/arch/mips/configs/qemu-malta_defconfig
> @@ -75,6 +75,8 @@ CONFIG_DRIVER_VIDEO_BOCHS_PCI=y
>  CONFIG_GPIO_MALTA_FPGA_I2C=y
>  CONFIG_PCI=y
>  CONFIG_PCI_DEBUG=y
> +CONFIG_SYSCON_REBOOT_MODE=y
> +CONFIG_POWER_RESET_SYSCON=y
>  CONFIG_FS_CRAMFS=y
>  CONFIG_FS_TFTP=y
>  CONFIG_FS_FAT=y
> diff --git a/arch/mips/dts/qemu-malta.dts b/arch/mips/dts/qemu-malta.dts
> index 32e473cac0..2d6f4a0ca3 100644
> --- a/arch/mips/dts/qemu-malta.dts
> +++ b/arch/mips/dts/qemu-malta.dts
> @@ -27,6 +27,19 @@
>  		clock-frequency = <1843200>;
>  	};
>  
> +	fpga_regs: system-controller@1f000000 {
> +		compatible = "mti,malta-fpga", "syscon", "simple-mfd";
> +		reg = <0x1f000000 0x600>;
> +		native-endian;
> +
> +		reboot {
> +			compatible = "syscon-reboot";
> +			regmap = <&fpga_regs>;
> +			offset = <0x500>;
> +			mask = <0x42>;
> +		};
> +	};
> +
>  	gpio: gpio@1f000b00 {
>  		compatible = "mti,malta-fpga-i2c-gpio";
>  		gpio-controller;
> diff --git a/arch/mips/mach-malta/Makefile b/arch/mips/mach-malta/Makefile
> index 0c5a7018d4..7d56f215b0 100644
> --- a/arch/mips/mach-malta/Makefile
> +++ b/arch/mips/mach-malta/Makefile
> @@ -1,2 +1 @@
> -obj-y += reset.o
>  obj-$(CONFIG_PCI) += pci.o
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
> -- 
> 2.31.1
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

