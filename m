Delivery-date: Thu, 09 Jun 2022 16:17:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzIy7-008nv2-Kz
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 16:17:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzIy6-0007F6-4E
	for lore@pengutronix.de; Thu, 09 Jun 2022 16:17:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=AEPF4L1WBFN65XnOoOfi3QYMSp6NJpvmw0/iCtZklQY=; b=uwp5oQV42f4rAxbTABuGcvn+dC
	EUe6UtGs0pjYG16m8AjnXJsa7b1Vopcs5gzPnNS1cHAvQemhPypmSrmr9Lud4QBUuOk2jvz2m2iRA
	7NhdXLFcOHj8hP7wAUJgDu0xu0tYghxZtr6isaEdcgwFt53+k0T9uaXGMcUwgGmbFHsNZDJmeMiTa
	gcUt24Wo6K2NFuUIymnQD6zf6U7U2oeQsUDZRZw/SjJeGGEMLFnsbP/ZboBq96lQrRycgUsuPJ6XM
	Aa+qD3QykJv8hZV1XQeMJZGkAnU2kwyirCEUFbQ0YT8kfi8yruyeo4Elf+ErwwULgK4j6+bDTB5lt
	lcY7jimQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzIwv-002R4g-Bj; Thu, 09 Jun 2022 14:15:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzIwl-002R2o-RZ
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 14:15:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzIwk-0006o8-LI; Thu, 09 Jun 2022 16:15:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzIwk-0005RX-CO; Thu, 09 Jun 2022 16:15:38 +0200
Date: Thu, 9 Jun 2022 16:15:38 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220609141538.GX1615@pengutronix.de>
References: <20220609094300.24818-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609094300.24818-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_071539_932942_807D1463 
X-CRM114-Status: GOOD (  21.65  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: OMAP: watchdog: Fix compiler errors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 09, 2022 at 12:43:00PM +0300, Alexander Shiyan wrote:
> Fix for "ARM: OMAP: Rework watchdog code" commit.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/myirtech-x335x/lowlevel.c | 2 +-
>  arch/arm/mach-omap/Makefile               | 2 +-
>  arch/arm/mach-omap/omap_generic.c         | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

BTW I accept patches generated with git commit --fixup=xxx for commits
sitting in next.

Sascha

> 
> diff --git a/arch/arm/boards/myirtech-x335x/lowlevel.c b/arch/arm/boards/myirtech-x335x/lowlevel.c
> index 4d32d2da1e..c394253320 100644
> --- a/arch/arm/boards/myirtech-x335x/lowlevel.c
> +++ b/arch/arm/boards/myirtech-x335x/lowlevel.c
> @@ -69,7 +69,7 @@ ENTRY_FUNCTION(start_am33xx_myirtech_sram, bootinfo, r1, r2)
>  
>  	fdt = __dtb_z_am335x_myirtech_myd_start;
>  
> -	omap_watchdog_disable(IOMEM((AM33XX_WDT_BASE));
> +	omap_watchdog_disable(IOMEM(AM33XX_WDT_BASE));
>  
>  	mpupll = MPUPLL_M_800;
>  	if (am33xx_get_cpu_rev() == AM335X_ES2_1) {
> diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> index 88c6b1d594..6b42196b23 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -16,7 +16,7 @@
>  #
>  #
>  obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o omap_generic.o
> -pbl-$(CONFIG_ARCH_OMAP) += syslib.o
> +pbl-$(CONFIG_ARCH_OMAP) += syslib.o omap_generic.o
>  obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
>  pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
>  obj-$(CONFIG_ARCH_OMAP4) += omap4_generic.o omap4_clock.o
> diff --git a/arch/arm/mach-omap/omap_generic.c b/arch/arm/mach-omap/omap_generic.c
> index c0f8cea999..6bb26a6ef0 100644
> --- a/arch/arm/mach-omap/omap_generic.c
> +++ b/arch/arm/mach-omap/omap_generic.c
> @@ -85,7 +85,7 @@ void omap_watchdog_disable(const void __iomem *wdt)
>  	do {
>  	} while (__raw_readl(wdt + OMAP_WDT_WWPS));
>  
> -	__raw_writel(WDT_DISABLE_CODE2, wdt + WSPR);
> +	__raw_writel(WDT_DISABLE_CODE2, wdt + OMAP_WDT_WSPR);
>  }
>  
>  #ifdef CONFIG_BOOTM
> -- 
> 2.32.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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

