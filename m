Delivery-date: Mon, 25 Apr 2022 12:27:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nivvt-00EelC-QA
	for lore@lore.pengutronix.de; Mon, 25 Apr 2022 12:27:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nivvq-0004mj-Rp
	for lore@pengutronix.de; Mon, 25 Apr 2022 12:27:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=37XUb133As8Ky3Wg5AG2sPPg27Em9bhAnddl+DOmQbo=; b=AHcFLwdKrWq0Mp/oBxO1mNCDp+
	0OriqXMhr07JzgX1eljEBtBV+fAA2K2cThmE6Jbf5C6AEBCVg4y7mMt8wxPZGTx2MBsqNosQXKf9u
	BHG/9T/983w2QMP0+lgDuZ+CKjgSQjF3bvmZV/FYhoUoQ8m41AF1L6ALLq7jYhLkOryg9nhteeec1
	UcFhDPiddho8uVny36wanvaEdvUybMUMuQ+fpndxMu+YBvrau4l0fxTWJDZ+u/fNlOeCjyRooYSZm
	uIz/aeDtoYdzXc9cjdE5yZeFCwFF9lQFaMf79sZJBD5/IMnSHcsnj7G2MOyvyZ0xGaH8DTTCCZMH4
	nMQrTtSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nivuJ-0097Gu-2Z; Mon, 25 Apr 2022 10:25:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nivuC-0097GT-SE
 for barebox@lists.infradead.org; Mon, 25 Apr 2022 10:25:23 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nivuA-0004Ps-NK; Mon, 25 Apr 2022 12:25:18 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nivuA-0005iR-8i; Mon, 25 Apr 2022 12:25:18 +0200
Date: Mon, 25 Apr 2022 12:25:18 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20220425102518.GH4012@pengutronix.de>
References: <20220422071158.14631-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220422071158.14631-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:25:08 up 25 days, 22:54, 79 users,  load average: 0.11, 0.13, 0.16
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_032521_122190_BD4FA2AE 
X-CRM114-Status: GOOD (  35.01  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] video: omap-fb: Rework to enable COMPILE_TEST option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 22, 2022 at 10:11:58AM +0300, Alexander Shiyan wrote:
> To add a compilation check for the omap-fb driver, move the
> omap-fb.h header to a global location.
> The "omap_add_display" function is used only for legacy boards,
> so we will move it to a common place for such calls (omap_devices.c).
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  arch/arm/boards/archosg9/board.c              |  2 +-
>  .../boards/phytec-phycore-omap4460/board.c    |  5 ++-
>  arch/arm/mach-omap/Makefile                   |  2 +-
>  arch/arm/mach-omap/include/mach/devices.h     |  3 ++
>  arch/arm/mach-omap/omap_devices.c             | 29 +++++++++++++++
>  arch/arm/mach-omap/omap_fb.c                  | 36 -------------------
>  drivers/video/Kconfig                         |  2 +-
>  drivers/video/omap.c                          |  3 +-
>  .../include/mach => include/video}/omap-fb.h  | 10 ++----
>  9 files changed, 41 insertions(+), 51 deletions(-)
>  delete mode 100644 arch/arm/mach-omap/omap_fb.c
>  rename {arch/arm/mach-omap/include/mach => include/video}/omap-fb.h (80%)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
> index 3289cfda3d..597830432b 100644
> --- a/arch/arm/boards/archosg9/board.c
> +++ b/arch/arm/boards/archosg9/board.c
> @@ -5,10 +5,10 @@
>  #include <init.h>
>  #include <asm/armlinux.h>
>  #include <generated/mach-types.h>
> +#include <mach/devices.h>
>  #include <mach/omap4-silicon.h>
>  #include <mach/omap4-devices.h>
>  #include <mach/omap4_rom_usb.h>
> -#include <mach/omap-fb.h>
>  #include <linux/sizes.h>
>  #include <i2c/i2c.h>
>  #include <gpio.h>
> diff --git a/arch/arm/boards/phytec-phycore-omap4460/board.c b/arch/arm/boards/phytec-phycore-omap4460/board.c
> index 9e8b9e56a7..e25ff5eb31 100644
> --- a/arch/arm/boards/phytec-phycore-omap4460/board.c
> +++ b/arch/arm/boards/phytec-phycore-omap4460/board.c
> @@ -10,10 +10,10 @@
>  #include <envfs.h>
>  #include <asm/armlinux.h>
>  #include <generated/mach-types.h>
> +#include <mach/devices.h>
>  #include <mach/omap4-silicon.h>
>  #include <mach/omap4-devices.h>
>  #include <mach/omap4-clock.h>
> -#include <mach/omap-fb.h>
>  #include <mach/sdrc.h>
>  #include <mach/sys_info.h>
>  #include <mach/syslib.h>
> @@ -292,8 +292,7 @@ static int pcm049_devices_init(void)
>  
>  	armlinux_set_architecture(MACH_TYPE_PCM049);
>  
> -	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_OMAP))
> -		omap_add_display(&pcm049_fb_data);
> +	omap_add_display(&pcm049_fb_data);
>  
>  	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
>  		defaultenv_append_directory(defaultenv_phytec_phycore_omap4460);
> diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
> index 36b2aa090e..e81284ec3b 100644
> --- a/arch/arm/mach-omap/Makefile
> +++ b/arch/arm/mach-omap/Makefile
> @@ -15,7 +15,7 @@
>  # GNU General Public License for more details.
>  #
>  #
> -obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o omap_generic.o omap_fb.o
> +obj-$(CONFIG_ARCH_OMAP) += syslib.o omap_devices.o omap_generic.o
>  pbl-$(CONFIG_ARCH_OMAP) += syslib.o
>  obj-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
>  pbl-$(CONFIG_ARCH_OMAP3) += omap3_generic.o auxcr.o
> diff --git a/arch/arm/mach-omap/include/mach/devices.h b/arch/arm/mach-omap/include/mach/devices.h
> index 0f9fdf1ca5..06fd2a8dd3 100644
> --- a/arch/arm/mach-omap/include/mach/devices.h
> +++ b/arch/arm/mach-omap/include/mach/devices.h
> @@ -4,6 +4,7 @@
>  #define __MACH_OMAP_DEVICES_H
>  
>  #include <mach/omap_hsmmc.h>
> +#include <video/omap-fb.h>
>  
>  void omap_add_ram0(resource_size_t size);
>  
> @@ -11,4 +12,6 @@ void omap_add_sram0(resource_size_t base, resource_size_t size);
>  
>  struct device_d *omap_add_uart(int id, unsigned long base);
>  
> +struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata);
> +
>  #endif /* __MACH_OMAP_DEVICES_H */
> diff --git a/arch/arm/mach-omap/omap_devices.c b/arch/arm/mach-omap/omap_devices.c
> index 7c36b8819d..beae59f74d 100644
> --- a/arch/arm/mach-omap/omap_devices.c
> +++ b/arch/arm/mach-omap/omap_devices.c
> @@ -26,3 +26,32 @@ struct device_d *omap_add_uart(int id, unsigned long base)
>  	return add_generic_device("omap-uart", id, NULL, base, 1024,
>  				  IORESOURCE_MEM | IORESOURCE_MEM_8BIT, &serial_plat);
>  }
> +
> +#if defined(CONFIG_DRIVER_VIDEO_OMAP)
> +static struct resource omapfb_resources[] = {
> +	{
> +		.name	= "omap4_dss",
> +		.start	= 0x48040000,
> +		.end	= 0x48040000 + 512 - 1,
> +		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
> +	}, {
> +		.name	= "omap4_dispc",
> +		.start	= 0x48041000,
> +		.end	= 0x48041000 + 3072 - 1,
> +		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
> +	},
> +};
> +
> +struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata)
> +{
> +	return add_generic_device_res("omap_fb", -1,
> +				      omapfb_resources,
> +				      ARRAY_SIZE(omapfb_resources),
> +				      o_pdata);
> +}
> +#else
> +struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata)
> +{
> +	return NULL;
> +}
> +#endif
> diff --git a/arch/arm/mach-omap/omap_fb.c b/arch/arm/mach-omap/omap_fb.c
> deleted file mode 100644
> index 0bd51c5f55..0000000000
> --- a/arch/arm/mach-omap/omap_fb.c
> +++ /dev/null
> @@ -1,36 +0,0 @@
> -// SPDX-License-Identifier: GPL-2.0-only
> -
> -#include <driver.h>
> -#include <common.h>
> -#include <linux/ioport.h>
> -#include <mach/omap-fb.h>
> -
> -#if defined(CONFIG_DRIVER_VIDEO_OMAP)
> -static struct resource omapfb_resources[] = {
> -	{
> -		.name	= "omap4_dss",
> -		.start	= 0x48040000,
> -		.end	= 0x48040000 + 512 - 1,
> -		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
> -	}, {
> -		.name	= "omap4_dispc",
> -		.start	= 0x48041000,
> -		.end	= 0x48041000 + 3072 - 1,
> -		.flags	= IORESOURCE_MEM | IORESOURCE_MEM_32BIT,
> -	},
> -};
> -
> -struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata)
> -{
> -	return add_generic_device_res("omap_fb", -1,
> -				      omapfb_resources,
> -				      ARRAY_SIZE(omapfb_resources),
> -				      o_pdata);
> -}
> -#else
> -struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata)
> -{
> -	return NULL;
> -}
> -#endif
> -EXPORT_SYMBOL(omap_add_display);
> diff --git a/drivers/video/Kconfig b/drivers/video/Kconfig
> index dcdc6c2135..a20b7bbee9 100644
> --- a/drivers/video/Kconfig
> +++ b/drivers/video/Kconfig
> @@ -75,7 +75,7 @@ config DRIVER_VIDEO_S3C24XX
>  
>  config DRIVER_VIDEO_OMAP
>  	bool "OMAP framebuffer driver"
> -	depends on ARCH_OMAP4
> +	depends on ARCH_OMAP4 || COMPILE_TEST
>  	help
>  	  Add support for OMAP Display Controller. Currently this
>  	  driver only supports OMAP4 SoCs in DISPC parallel mode on
> diff --git a/drivers/video/omap.c b/drivers/video/omap.c
> index 62c51a1dfc..ca41ab36fc 100644
> --- a/drivers/video/omap.c
> +++ b/drivers/video/omap.c
> @@ -20,8 +20,7 @@
>  #include <clock.h>
>  #include <linux/err.h>
>  
> -#include <mach/omap4-silicon.h>
> -#include <mach/omap-fb.h>
> +#include <video/omap-fb.h>
>  
>  #include <mmu.h>
>  
> diff --git a/arch/arm/mach-omap/include/mach/omap-fb.h b/include/video/omap-fb.h
> similarity index 80%
> rename from arch/arm/mach-omap/include/mach/omap-fb.h
> rename to include/video/omap-fb.h
> index f727164434..519460f0d5 100644
> --- a/arch/arm/mach-omap/include/mach/omap-fb.h
> +++ b/include/video/omap-fb.h
> @@ -1,7 +1,7 @@
>  /* SPDX-License-Identifier: GPL-2.0-only */
>  
> -#ifndef H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H
> -#define H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H
> +#ifndef OMAP_FB_H
> +#define OMAP_FB_H
>  
>  #include <fb.h>
>  
> @@ -42,8 +42,4 @@ struct omapfb_platform_data {
>  	void (*enable)(int p);
>  };
>  
> -struct device_d;
> -struct device_d *omap_add_display(struct omapfb_platform_data *o_pdata);
> -
> -
> -#endif	/* H_BAREBOX_ARCH_ARM_MACH_OMAP_MACH_FB4_H */
> +#endif /* OMAP_FB_H */
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

