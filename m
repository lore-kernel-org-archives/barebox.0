Delivery-date: Fri, 28 Jul 2023 07:53:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPGPZ-00D6sz-EC
	for lore@lore.pengutronix.de; Fri, 28 Jul 2023 07:53:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPGPW-0000GP-4u
	for lore@pengutronix.de; Fri, 28 Jul 2023 07:53:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3ub/OM2GKw7Ugt5yACYkuI8UM57Cp30ISIs3Y71tASA=; b=CYy7AyVRqtNo1N0wSuIxuJAQl6
	YrIIGNanbfB4M0fWTiol0ad0CwVOK/sAsDFZsJHPwRMkQm0THb+65TdJRwCu8sxxqQHRLilfEGfeJ
	JfTEZXPXFFP9omfPFpqPHYklj89H/cXUyD5RW7w3ynC9Z77+Z1PK3Sem7hjpFDEi6mHyTBoHPYdiv
	oWQqZCrxqtOce2CJh2S3GiMv2Y3PwQKzL8XLxx64igJBwAYQArUvcW2qPMTKR9uHWV6jdqoruaQfh
	CqCcueNuSvSPIUe7d6KgA0mlF5h/I7IkMRizFaGn1GUVgpuQFQTc1VUNa6b+yW3Y5DpkNvpEWdGue
	gYiF6Nlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGOJ-001lIp-0F;
	Fri, 28 Jul 2023 05:51:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGOD-001lIG-3B
	for barebox@lists.infradead.org;
	Fri, 28 Jul 2023 05:51:52 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPGOC-0000Cn-3h; Fri, 28 Jul 2023 07:51:48 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPGOB-0002Ux-Ql; Fri, 28 Jul 2023 07:51:47 +0200
Date: Fri, 28 Jul 2023 07:51:47 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, Masahiro Yamada <masahiroy@kernel.org>
Message-ID: <20230728055147.GB18491@pengutronix.de>
References: <20230727084812.880438-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230727084812.880438-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_225150_190173_6BCE495C 
X-CRM114-Status: GOOD (  37.74  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] Makefile: allow setting pkg-config binary via
 PKG_CONFIG
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jul 27, 2023 at 10:48:11AM +0200, Ahmad Fatoum wrote:
> Unlike Linux, barebox build system does build both host and
> target tools in the same build, each using a different pkg-config.
> 
> This is done by using `pkg-config` for the host tools and
> `$CROSS_PKG_CONFIG` for the target tools. In Yocto, `pkg-config` is for
> target tools and `pkg-config-native` is for host tools, which we can't
> represent with the current scheme.
> 
> The usual work around that Yocto employs for the kernel is to
> override PKG_CONFIG_PATH to always point into the native sysroot and
> resetting PKG_CONFIG_SYSROOT_DIR, but this breaks build of target tools
> that use pkg-config.
> 
> Fix this by providing a PKG_CONFIG variable that can be overridden
> when necessary.
> 
> This intentionally skips the scripts/kconfig directory to make it easier
> to sync with the kernel. While we should eventually switch that over to
> use PKG_CONFIG as well, Yocto will set PKG_CONFIG_PATH and
> PKG_CONFIG_SYSROOT_DIR appropriately in cm1.bbclass' do_menuconfig, so
> this can wait until the change is done to the kernel and synced back.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/user/barebox.rst | 21 +++++++++++++++------
>  Makefile                       |  3 ++-
>  arch/sandbox/Makefile          |  4 ++--
>  arch/sandbox/os/Makefile       |  4 ++--
>  scripts/Makefile               | 22 +++++++++++-----------
>  scripts/imx/Makefile           |  6 +++---
>  6 files changed, 35 insertions(+), 25 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
> index 7b37ddba77a9..c95adb78bb83 100644
> --- a/Documentation/user/barebox.rst
> +++ b/Documentation/user/barebox.rst
> @@ -300,16 +300,25 @@ so it may be loaded by the boot ROM of the relevant SoCs.
>  
>  In addition to these barebox also builds host and target tools that are useful
>  outside of barebox build: e.g. to manipulate the environment or to load an
> -image over a boot ROM's USB recovery protocol.
> +image over a boot ROM's USB recovery protocol. These tools may link against
> +libraries, which are detected using ``PKG_CONFIG`` and ``CROSS_PKG_CONFIG``
> +for native and cross build respectively. Their default values are::
>  
> -There are two ``ARCH=sandbox`` to make this more straight forward:
> +  PKG_CONFIG=pkg-config
> +  CROSS_PKG_CONFIG=${CROSS_COMPILE}pkg-config
> +
> +These can be overridden using environment or make variables.
> +
> +As use of pkg-config both for host and target tool in the same build can
> +complicate build system integration. There are two ``ARCH=sandbox`` configuration
> +to make this more straight forward:
>  
>  Host Tools
>  ^^^^^^^^^^
>  
>  The ``hosttools_defconfig`` will compile standalone host tools for the
> -host (build) system. To build the USB loaders, ``pkg-config`` needs to know
> -about ``libusb-1.0``.
> +host (build) system. To build the USB loaders, ``PKG_CONFIG`` needs to know
> +about ``libusb-1.0``. This config won't build any target tools.
>  
>  .. code-block:: console
>  
> @@ -322,9 +331,9 @@ Target Tools
>  
>  The ``targettools_defconfig`` will cross-compile standalone target tools for the
>  target system.  To build the USB loaders, ``CROSS_PKG_CONFIG`` needs to know
> -about ``libusb-1.0``. This config won't built any host tools, so it's ok to
> +about ``libusb-1.0``. This config won't build any host tools, so it's ok to
>  set ``CROSS_PKG_CONFIG=pkg-config`` if ``pkg-config`` is primed for target
> -use. The default is ``CROSS_PKG_CONFIG=$(CROSS_COMPILE)pkg-config``. Example:
> +use. Example:
>  
>  .. code-block:: console
>  
> diff --git a/Makefile b/Makefile
> index dd9bd86de03e..acf7b2006765 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -369,9 +369,10 @@ endif
>  
>  KCONFIG_CONFIG	?= .config
>  
> +PKG_CONFIG ?= pkg-config
>  CROSS_PKG_CONFIG ?= $(CROSS_COMPILE)pkg-config
>  
> -export KCONFIG_CONFIG CROSS_PKG_CONFIG
> +export KCONFIG_CONFIG CROSS_PKG_CONFIG PKG_CONFIG
>  
>  # SHELL used by kbuild
>  CONFIG_SHELL := $(shell if [ -x "$$BASH" ]; then echo $$BASH; \
> diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
> index d5ba05ba866f..04fa426b1a61 100644
> --- a/arch/sandbox/Makefile
> +++ b/arch/sandbox/Makefile
> @@ -42,11 +42,11 @@ archprepare: maketools
>  PHONY += maketools
>  
>  ifeq ($(CONFIG_SDL),y)
> -SDL_LIBS := $(shell pkg-config sdl2 --libs)
> +SDL_LIBS := $(shell $(PKG_CONFIG) sdl2 --libs)
>  endif
>  
>  ifeq ($(CONFIG_GPIO_LIBFTDI1),y)
> -FTDI1_LIBS := $(shell pkg-config libftdi1 --libs)
> +FTDI1_LIBS := $(shell $(PKG_CONFIG) libftdi1 --libs)
>  endif
>  
>  ifeq ($(CONFIG_ASAN),y)
> diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
> index ebcbe5833b26..055ce1a316a7 100644
> --- a/arch/sandbox/os/Makefile
> +++ b/arch/sandbox/os/Makefile
> @@ -20,8 +20,8 @@ endif
>  obj-y = common.o tap.o setjmp.o
>  obj-$(CONFIG_MALLOC_LIBC) += libc_malloc.o
>  
> -CFLAGS_sdl.o = $(shell pkg-config sdl2 --cflags)
> +CFLAGS_sdl.o = $(shell $(PKG_CONFIG) sdl2 --cflags)
>  obj-$(CONFIG_SDL) += sdl.o
>  
> -CFLAGS_ftdi.o = $(shell pkg-config libftdi1 --cflags)
> +CFLAGS_ftdi.o = $(shell $(PKG_CONFIG) libftdi1 --cflags)
>  obj-$(CONFIG_GPIO_LIBFTDI1) += ftdi.o
> diff --git a/scripts/Makefile b/scripts/Makefile
> index 72ad9ad7a648..01b21a61692c 100644
> --- a/scripts/Makefile
> +++ b/scripts/Makefile
> @@ -12,8 +12,8 @@ hostprogs-always-y					+= bareboxcrc32
>  hostprogs-always-y					+= kernel-install
>  hostprogs-always-$(CONFIG_QOICONV)			+= qoiconv
>  hostprogs-always-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS)	+= rsatoc
> -HOSTCFLAGS_rsatoc = `pkg-config --cflags openssl`
> -HOSTLDLIBS_rsatoc = `pkg-config --libs openssl`
> +HOSTCFLAGS_rsatoc = `$(PKG_CONFIG) --cflags openssl`
> +HOSTLDLIBS_rsatoc = `$(PKG_CONFIG) --libs openssl`
>  hostprogs-always-$(CONFIG_IMD)				+= bareboximd
>  hostprogs-always-$(CONFIG_KALLSYMS)			+= kallsyms
>  hostprogs-always-$(CONFIG_MIPS)				+= mips-relocs
> @@ -28,18 +28,18 @@ hostprogs-always-$(CONFIG_LAYERSCAPE_PBLIMAGE)		+= pblimage
>  hostprogs-always-$(CONFIG_STM32_IMAGE)			+= stm32image
>  hostprogs-always-$(CONFIG_RISCV)			+= prelink-riscv
>  hostprogs-always-$(CONFIG_RK_IMAGE)			+= rkimage
> -HOSTCFLAGS_rkimage = `pkg-config --cflags openssl`
> -HOSTLDLIBS_rkimage = `pkg-config --libs openssl`
> +HOSTCFLAGS_rkimage = `$(PKG_CONFIG) --cflags openssl`
> +HOSTLDLIBS_rkimage = `$(PKG_CONFIG) --libs openssl`
>  KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
> -HOSTLDLIBS_mxsimage  = `pkg-config --libs openssl`
> -HOSTCFLAGS_omap3-usb-loader.o = `pkg-config --cflags libusb-1.0`
> -HOSTLDLIBS_omap3-usb-loader  = `pkg-config --libs libusb-1.0`
> +HOSTLDLIBS_mxsimage  = `$(PKG_CONFIG) --libs openssl`
> +HOSTCFLAGS_omap3-usb-loader.o = `$(PKG_CONFIG) --cflags libusb-1.0`
> +HOSTLDLIBS_omap3-usb-loader  = `$(PKG_CONFIG) --libs libusb-1.0`
>  hostprogs-always-$(CONFIG_OMAP3_USB_LOADER)		+= omap3-usb-loader
> -HOSTCFLAGS_omap4_usbboot.o = `pkg-config --cflags libusb-1.0`
> -HOSTLDLIBS_omap4_usbboot = -lpthread `pkg-config --libs libusb-1.0`
> +HOSTCFLAGS_omap4_usbboot.o = `$(PKG_CONFIG) --cflags libusb-1.0`
> +HOSTLDLIBS_omap4_usbboot = -lpthread `$(PKG_CONFIG) --libs libusb-1.0`
>  hostprogs-always-$(CONFIG_OMAP4_HOSTTOOL_USBBOOT)	+= omap4_usbboot
> -HOSTCFLAGS_rk-usb-loader.o = `pkg-config --cflags libusb-1.0`
> -HOSTLDLIBS_rk-usb-loader  = `pkg-config --libs libusb-1.0`
> +HOSTCFLAGS_rk-usb-loader.o = `$(PKG_CONFIG) --cflags libusb-1.0`
> +HOSTLDLIBS_rk-usb-loader  = `$(PKG_CONFIG) --libs libusb-1.0`
>  hostprogs-always-$(CONFIG_RK_USB_LOADER)		+= rk-usb-loader
>  
>  userprogs-always-$(CONFIG_BAREBOXENV_TARGET)		+= bareboxenv-target
> diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
> index d0d1f17e10bd..9544974d523f 100644
> --- a/scripts/imx/Makefile
> +++ b/scripts/imx/Makefile
> @@ -3,8 +3,8 @@
>  hostprogs-always-$(CONFIG_ARCH_IMX_IMXIMAGE)	+= imx-image
>  hostprogs-always-$(CONFIG_ARCH_IMX_USBLOADER)	+= imx-usb-loader
>  
> -HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0` -include $(objtree)/include/generated/utsrelease.h
> -HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
> +HOSTCFLAGS_imx-usb-loader.o = `$(PKG_CONFIG) --cflags libusb-1.0` -include $(objtree)/include/generated/utsrelease.h
> +HOSTLDLIBS_imx-usb-loader  = `$(PKG_CONFIG) --libs libusb-1.0`
>  
>  imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0` -include $(objtree)/include/generated/utsrelease.h
>  imx-usb-loader-target-userldlibs += `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
> @@ -16,7 +16,7 @@ HOSTCFLAGS_imx-usb-loader.o += -I$(srctree) -I$(srctree)/include/mach
>  imx-usb-loader-target-userccflags += -I$(srctree) -I$(srctree)/include/mach
>  ifdef CONFIG_ARCH_IMX_IMXIMAGE_SSL_SUPPORT
>  HOSTCFLAGS_imx-image.o += -DIMXIMAGE_SSL_SUPPORT
> -HOSTLDLIBS_imx-image  = `pkg-config --libs openssl`
> +HOSTLDLIBS_imx-image  = `$(PKG_CONFIG) --libs openssl`
>  endif
>  
>  imx-usb-loader-objs := imx-usb-loader.o imx.o
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


