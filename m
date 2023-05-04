Delivery-date: Thu, 04 May 2023 11:50:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puVbP-004Pet-J6
	for lore@lore.pengutronix.de; Thu, 04 May 2023 11:50:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puVbN-0006XL-AP
	for lore@pengutronix.de; Thu, 04 May 2023 11:50:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7AYqKVVwczFBobA5SEFJL7gcu/35JIgt+hCydKdS8NY=; b=x/wCpxp24Fnek21Eds7kcyLkNw
	/wgvR4Wc04w61LnViu3r3iI80YZ3QiqVQ+q6QzWz4EI+0UTbU/H87D+/EB+qqyhYWBGxejK6APzwg
	QVN9YXLHjlM6IcrAJuc/WTWMvHiiG0HJ0DMpVDW0xGqT12etemuzCN4gZAhPDmoGrACpkZkx3kdiD
	o0oOwNPaMIFBhITWqZcj/iXNO6v7nGJqUx6gKRIMcTHtuKDXDEmTxejjsS3jiCBa6Yvb47+zegvvJ
	R3mtHSZQ0via2l9jvNRKJD8fHzoJUYBnI3qpXowVtW4isuUk1c2FdwZJifD3AtA2GRybEtGSJ6309
	UWH8D61w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puVaE-007KeE-36;
	Thu, 04 May 2023 09:49:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puVaB-007Kcq-0U
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 09:49:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puVa9-0006Cq-5H; Thu, 04 May 2023 11:49:01 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puVa8-0004ZM-Jk; Thu, 04 May 2023 11:49:00 +0200
Date: Thu, 4 May 2023 11:49:00 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230504094900.GN29365@pengutronix.de>
References: <20230504053300.4516-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230504053300.4516-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_024903_187119_0C75C469 
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: clps711x: Remove unused file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 04, 2023 at 08:33:00AM +0300, Alexander Shiyan wrote:
> The file devices.h is no longer in use and was mistakenly left in the tree.
> Let's delete it.
> 
> Fixes: c7d771e1ab9b ("ARM: clps711x: Switch to devicetree usage")
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/mach-clps711x/devices.c | 127 -------------------------------
>  1 file changed, 127 deletions(-)
>  delete mode 100644 arch/arm/mach-clps711x/devices.c

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
> deleted file mode 100644
> index a1a261412b..0000000000
> --- a/arch/arm/mach-clps711x/devices.c
> +++ /dev/null
> @@ -1,127 +0,0 @@
> -/*
> - * Copyright (C) 2012 Alexander Shiyan <shc_work@mail.ru>
> - *
> - * This program is free software; you can redistribute it and/or
> - * modify it under the terms of the GNU General Public License as
> - * published by the Free Software Foundation; either version 2 of
> - * the License, or (at your option) any later version.
> - */
> -
> -#include <common.h>
> -#include <init.h>
> -#include <linux/sizes.h>
> -
> -#include <asm/io.h>
> -#include <asm/memory.h>
> -
> -#include <mach/clps711x/clps711x.h>
> -#include <mach/clps711x/devices.h>
> -
> -static int clps711x_mem_init(void)
> -{
> -	ulong memsize = get_ram_size((ulong *)SDRAM0_BASE, SZ_64M);
> -
> -	arm_add_mem_device("ram0", SDRAM0_BASE, memsize);
> -
> -	return 0;
> -}
> -mem_initcall(clps711x_mem_init);
> -
> -inline static void _clps711x_setup_memcfg(int bank, u32 addr, u32 val)
> -{
> -	u32 tmp = readl(addr);
> -
> -	tmp &= ~(0xff << (bank * 8));
> -	tmp |= val << (bank * 8);
> -
> -	writel(tmp, addr);
> -}
> -
> -void clps711x_setup_memcfg(int bank, u32 val)
> -{
> -	switch (bank) {
> -	case 0 ... 3:
> -		_clps711x_setup_memcfg(bank, MEMCFG1, val);
> -		break;
> -	case 4 ... 5:
> -		_clps711x_setup_memcfg(bank - 4, MEMCFG2, val);
> -		break;
> -	}
> -}
> -
> -static struct resource uart0_resources[] = {
> -	DEFINE_RES_MEM(UARTDR1, SZ_128),
> -};
> -
> -static struct resource uart1_resources[] = {
> -	DEFINE_RES_MEM(UARTDR2, SZ_128),
> -};
> -
> -void clps711x_add_uart(unsigned int id)
> -{
> -	switch (id) {
> -	case 0:
> -		add_generic_device_res("clps711x-uart", 0, uart0_resources,
> -				       ARRAY_SIZE(uart0_resources), NULL);
> -		break;
> -	case 1:
> -		add_generic_device_res("clps711x-uart", 1, uart1_resources,
> -				       ARRAY_SIZE(uart1_resources), NULL);
> -		break;
> -	}
> -}
> -
> -static struct resource gpio0_resources[] = {
> -	DEFINE_RES_MEM(PADR, SZ_1),
> -	DEFINE_RES_MEM(PADDR, SZ_1),
> -};
> -
> -static struct resource gpio1_resources[] = {
> -	DEFINE_RES_MEM(PBDR, SZ_1),
> -	DEFINE_RES_MEM(PBDDR, SZ_1),
> -};
> -
> -static struct resource gpio2_resources[] = {
> -	DEFINE_RES_MEM(PCDR, SZ_1),
> -	DEFINE_RES_MEM(PCDDR, SZ_1),
> -};
> -
> -static struct resource gpio3_resources[] = {
> -	DEFINE_RES_MEM(PDDR, SZ_1),
> -	DEFINE_RES_MEM(PDDDR, SZ_1),
> -};
> -
> -static struct resource gpio4_resources[] = {
> -	DEFINE_RES_MEM(PEDR, SZ_1),
> -	DEFINE_RES_MEM(PEDDR, SZ_1),
> -};
> -
> -static __init int clps711x_gpio_init(void)
> -{
> -	add_generic_device_res("clps711x-gpio", 0, gpio0_resources,
> -			       ARRAY_SIZE(gpio0_resources), NULL);
> -	add_generic_device_res("clps711x-gpio", 1, gpio1_resources,
> -			       ARRAY_SIZE(gpio1_resources), NULL);
> -	add_generic_device_res("clps711x-gpio", 2, gpio2_resources,
> -			       ARRAY_SIZE(gpio2_resources), NULL);
> -	add_generic_device_res("clps711x-gpio", 3, gpio3_resources,
> -			       ARRAY_SIZE(gpio3_resources), NULL);
> -	add_generic_device_res("clps711x-gpio", 4, gpio4_resources,
> -			       ARRAY_SIZE(gpio4_resources), NULL);
> -
> -	return 0;
> -}
> -coredevice_initcall(clps711x_gpio_init);
> -
> -static __init int clps711x_syscon_init(void)
> -{
> -	/* SYSCON1, SYSFLG1 */
> -	add_generic_device("syscon", 1, NULL, SYSCON1, SZ_128,
> -			   IORESOURCE_MEM, NULL);
> -	/* SYSCON2, SYSFLG2 */
> -	add_generic_device("syscon", 2, NULL, SYSCON2, SZ_128,
> -			   IORESOURCE_MEM, NULL);
> -
> -	return 0;
> -}
> -postcore_initcall(clps711x_syscon_init);
> -- 
> 2.39.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


