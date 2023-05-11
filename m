Delivery-date: Thu, 11 May 2023 09:28:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px0jH-00DfgS-Vy
	for lore@lore.pengutronix.de; Thu, 11 May 2023 09:28:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1px0jF-0006So-Ti
	for lore@pengutronix.de; Thu, 11 May 2023 09:28:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Lr7bYPa7g+6Sr77ckGASrExlalnLVnyl0cpTsr6t+Vo=; b=DtDLHBTurrWnlQq4Tw62zgQUcz
	kYFgP3txtA3XGoqM95MABzaOfzst4dGqAt7FCJrfYcy4H0TGB4sZtrRCyoqkrjKWKksN10ouQwnAb
	GpLFDg/UicDMvVuD5ypqHVgfVStcW1ifAEiHIn2+RCRidKuYckELMV1WwlJ3gA8btjLcJmmi5fhFd
	AcGbv41jDXgWJqh+4WmyGjLwiqDay/r2jtazkf5E7XPsiuXI96WPM7KYgnxAbWMd7QO2zgmwKf6PL
	8Y5K84eSeEj0YkgmtM4KvXkauWYzrCqaIs26zXdmNhLs+OHOK8FC7dw4OOx3KLwWxo2Lyy+5eRan6
	wTrqcuHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1px0i8-00881y-0W;
	Thu, 11 May 2023 07:27:36 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1px0i5-00880e-03
	for barebox@lists.infradead.org;
	Thu, 11 May 2023 07:27:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1px0i3-0006Mb-Pl; Thu, 11 May 2023 09:27:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1px0i3-0006v4-2Y; Thu, 11 May 2023 09:27:31 +0200
Date: Thu, 11 May 2023 09:27:31 +0200
To: Jules Maselbas <jmaselbas@zdiv.net>
Cc: barebox@lists.infradead.org
Message-ID: <20230511072731.GJ29365@pengutronix.de>
References: <20230510233711.37345-1-jmaselbas@zdiv.net>
 <20230510233711.37345-3-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230510233711.37345-3-jmaselbas@zdiv.net>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230511_002733_075297_4F2C0515 
X-CRM114-Status: GOOD (  18.93  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [RFC PATCH 02/11] sunxi: introduce mach-sunxi
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, May 11, 2023 at 01:37:02AM +0200, Jules Maselbas wrote:
> Add kbuild boilerplate and some early init functions
> ---
>  arch/arm/Kconfig                   | 12 ++++++++++
>  arch/arm/Makefile                  |  1 +
>  arch/arm/mach-sunxi/Kconfig        | 16 +++++++++++++
>  arch/arm/mach-sunxi/Makefile       |  2 ++
>  arch/arm/mach-sunxi/cpu_init.c     | 33 +++++++++++++++++++++++++++
>  arch/arm/mach-sunxi/sunxi.c        |  0
>  images/Makefile                    |  1 +
>  images/Makefile.sunxi              | 13 +++++++++++
>  include/mach/sunxi/init.h          |  6 +++++
>  include/mach/sunxi/sun50i-regs.h   | 36 ++++++++++++++++++++++++++++++
>  include/mach/sunxi/sunxi-pinctrl.h | 13 +++++++++++
>  11 files changed, 133 insertions(+)
>  create mode 100644 arch/arm/mach-sunxi/Kconfig
>  create mode 100644 arch/arm/mach-sunxi/Makefile
>  create mode 100644 arch/arm/mach-sunxi/cpu_init.c
>  create mode 100644 arch/arm/mach-sunxi/sunxi.c
>  create mode 100644 images/Makefile.sunxi
>  create mode 100644 include/mach/sunxi/init.h
>  create mode 100644 include/mach/sunxi/sun50i-regs.h
>  create mode 100644 include/mach/sunxi/sunxi-pinctrl.h
> 
> diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
> index abe649de49..8da03e2703 100644
> --- a/arch/arm/Kconfig
> +++ b/arch/arm/Kconfig
> @@ -144,6 +144,17 @@ config ARCH_SOCFPGA
>  	select COMMON_CLK
>  	select CLKDEV_LOOKUP
>  
> +config ARCH_SUNXI
> +	bool "Allwinner SoCs"
> +	select OFTREE
> +	select OFDEVICE
> +	select COMMON_CLK
> +	select COMMON_CLK_OF_PROVIDER
> +	select CLKDEV_LOOKUP
> +	select GENERIC_GPIO
> +	select GPIOLIB
> +	select PINCTRL
> +
>  config ARCH_VERSATILE
>  	bool "ARM Versatile boards (ARM926EJ-S)"
>  	select GPIOLIB
> @@ -311,6 +322,7 @@ source "arch/arm/mach-omap/Kconfig"
>  source "arch/arm/mach-pxa/Kconfig"
>  source "arch/arm/mach-rockchip/Kconfig"
>  source "arch/arm/mach-socfpga/Kconfig"
> +source "arch/arm/mach-sunxi/Kconfig"
>  source "arch/arm/mach-stm32mp/Kconfig"
>  source "arch/arm/mach-versatile/Kconfig"
>  source "arch/arm/mach-vexpress/Kconfig"
> diff --git a/arch/arm/Makefile b/arch/arm/Makefile
> index a506f1e3a3..bb61392e4c 100644
> --- a/arch/arm/Makefile
> +++ b/arch/arm/Makefile
> @@ -103,6 +103,7 @@ machine-$(CONFIG_ARCH_ROCKCHIP)		+= rockchip
>  machine-$(CONFIG_ARCH_SAMSUNG)		+= samsung
>  machine-$(CONFIG_ARCH_SOCFPGA)		+= socfpga
>  machine-$(CONFIG_ARCH_STM32MP)		+= stm32mp
> +machine-$(CONFIG_ARCH_SUNXI)		+= sunxi
>  machine-$(CONFIG_ARCH_VERSATILE)	+= versatile
>  machine-$(CONFIG_ARCH_VEXPRESS)		+= vexpress
>  machine-$(CONFIG_ARCH_TEGRA)		+= tegra
> diff --git a/arch/arm/mach-sunxi/Kconfig b/arch/arm/mach-sunxi/Kconfig
> new file mode 100644
> index 0000000000..0e8d83fedd
> --- /dev/null
> +++ b/arch/arm/mach-sunxi/Kconfig
> @@ -0,0 +1,16 @@
> +if ARCH_SUNXI
> +
> +config ARCH_TEXT_BASE
> +	hex
> +	default 0x0

This shouldn't be necessary anymore.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


