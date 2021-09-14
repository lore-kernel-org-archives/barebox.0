Delivery-date: Tue, 14 Sep 2021 15:22:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ8OF-00020H-HK
	for lore@lore.pengutronix.de; Tue, 14 Sep 2021 15:22:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQ8OD-0007YO-VW
	for lore@pengutronix.de; Tue, 14 Sep 2021 15:22:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CFMnNDWEGN/Vksam9K22kR0ePGMQypB0EFKBMyZFXCY=; b=j2eflvPIW62U4Q
	+BUD8hkTBwgMSj+DH6kTkz7mKlLzt4hHOCFQlMDUoDTpmuh9IETvQjuSktcd7aMV/tf1cTeLS2SEC
	pGrHRjfM8hi6B09ckGFqHH83EFhhrR7IZhTSRAng6l3oTzO4mprOeqYIaO0DmhmVrg17XJ+W5/Sy0
	zIQ7rj2E8AWy8d9VIiw+LbJ/7wxZ7zm/9wnGgwdcnSMEidyD+RFKjtyJNxkMG8FH7FnjX/HEQiLxM
	j5hsmwLnEBaw+jVHJYtOUTCxfjPqdOhRQHbzD+1JUzEbSmg/iL+IcAq08/z8clAkHC3k8laAJ7/Uu
	/y7WIwTmSY+sJciT/oUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQ8MX-005r3n-CP; Tue, 14 Sep 2021 13:20:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQ8MO-005r2C-Jr
 for barebox@lists.infradead.org; Tue, 14 Sep 2021 13:20:32 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQ8ML-0007C0-4M; Tue, 14 Sep 2021 15:20:25 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQ8MK-0005yB-JJ; Tue, 14 Sep 2021 15:20:24 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ejo@pengutronix.de, rhi@pengutronix.de, uol@pengutronix.de,
 renaud.barbier@abaco.com
Date: Tue, 14 Sep 2021 15:20:16 +0200
Message-Id: <20210914132016.22572-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210914132016.22572-1-a.fatoum@pengutronix.de>
References: <20210914132016.22572-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210914_062028_861630_E34FE527 
X-CRM114-Status: GOOD (  25.34  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] scripts: allow building USB loader tools for target as
 well
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We currently build the USB loader tools only for the host (build) system,
but it can be useful to cross compile them as well for the target.

We already have some target tools, but support for those is easier,
because they don't link against libraries. We use pkg-config to get
cc and ld flags, but we always assume that pkg-config is for the host
system and there is no well-defined way to request pkg-config for the
target system.

Support this by introducing a new CROSS_PKG_CONFIG. This will be
consulted only for target tools and default to
$(CROSS_COMPILE)pkgconfig.

Users can override it as necessary, for example, with Yocto, pkg-config
will be for the cross environment, so target tools can now be built
with:

  export ARCH=sandbox CROSS_COMPILE=aarch64-linux-gnu-
  export CROSS_PKG_CONFIG=pkg-config scripts
  make targettools_defconfig
  make scripts

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronxi.de>
---
 Documentation/user/barebox.rst             | 45 ++++++++++++++++++++++
 Makefile                                   | 10 ++++-
 arch/sandbox/configs/targettools_defconfig |  9 +++++
 scripts/.gitignore                         |  2 +
 scripts/Kconfig                            | 29 ++++++++++++++
 scripts/Makefile                           |  9 ++++-
 scripts/imx/.gitignore                     |  1 +
 scripts/imx/Makefile                       | 10 +++++
 scripts/imx/imx-target.c                   |  1 +
 scripts/imx/imx-usb-loader-target.c        |  1 +
 scripts/omap3-usb-loader-target.c          |  1 +
 scripts/omap4_usbboot-target.c             |  1 +
 12 files changed, 117 insertions(+), 2 deletions(-)
 create mode 100644 arch/sandbox/configs/targettools_defconfig
 create mode 100644 scripts/imx/imx-target.c
 create mode 100644 scripts/imx/imx-usb-loader-target.c
 create mode 100644 scripts/omap3-usb-loader-target.c
 create mode 100644 scripts/omap4_usbboot-target.c

diff --git a/Documentation/user/barebox.rst b/Documentation/user/barebox.rst
index 503f0b979777..b6b7a57af300 100644
--- a/Documentation/user/barebox.rst
+++ b/Documentation/user/barebox.rst
@@ -262,3 +262,48 @@ the usage for a particular command. barebox has tab completion which will comple
 your command. Arguments to commands are also completed depending on the command. If
 a command expects a file argument only files will be offered as completion. Other
 commands will only complete devices or devicetree nodes.
+
+Building barebox tools
+----------------------
+
+The normal barebox build results in one or more barebox images (cf. :ref:`multi_image`)
+and a number of tools built from its ``scripts/`` directory.
+
+Most tools are used for the barebox build itself: e.g. the device tree compiler,
+the Kconfig machinery and the different image formatting tools that wrap barebox,
+so it may be loaded by the boot ROM of the relevant SoCs.
+
+In addition to these barebox also builds host and target tools that are useful
+outside of barebox build: e.g. to manipulate the environment or to load an
+image over a boot ROM's USB recovery protocol.
+
+There are two ``ARCH=sandbox`` to make this more straight forward:
+
+Host Tools
+^^^^^^^^^^
+
+The ``hosttools_defconfig`` will compile standalone host tools for the
+host (build) system. To build the USB loaders, ``pkg-config`` needs to know
+about ``libusb-1.0``.
+
+.. code-block:: console
+
+  export ARCH=sandbox
+  make hosttools_defconfig
+  make scripts
+
+Target Tools
+^^^^^^^^^^^^
+
+The ``targettools_defconfig`` will cross-compile standalone target tools for the
+target system.  To build the USB loaders, ``CROSS_PKG_CONFIG`` needs to know
+about ``libusb-1.0``. This config won't built any host tools, so it's ok to
+set ``CROSS_PKG_CONFIG=pkg-config`` if ``pkg-config`` is primed for target
+use. The default is ``CROSS_PKG_CONFIG=$(CROSS_COMPILE)pkg-config``. Example:
+
+.. code-block:: console
+
+  export ARCH=sandbox CROSS_COMPILE=aarch64-linux-gnu-
+  export CROSS_PKG_CONFIG=pkg-config
+  make targettools_defconfig
+  make scripts
diff --git a/Makefile b/Makefile
index 74e4893f02c8..77ece120f0c7 100644
--- a/Makefile
+++ b/Makefile
@@ -362,6 +362,8 @@ endif
 
 KCONFIG_CONFIG	?= .config
 
+CROSS_PKG_CONFIG ?= $(CROSS_COMPILE)pkg-config
+
 export KCONFIG_CONFIG
 
 # SHELL used by kbuild
@@ -1126,11 +1128,17 @@ CLEAN_DIRS  += $(MODVERDIR)
 CLEAN_FILES +=	barebox System.map stickypage.bin include/generated/barebox_default_env.h \
                 .tmp_version .tmp_barebox* barebox.bin barebox.map \
 		.tmp_kallsyms* barebox.ldr compile_commands.json \
-		scripts/bareboxenv-target barebox-flash-image \
+		barebox-flash-image \
 		barebox.srec barebox.s5p barebox.ubl barebox.zynq \
 		barebox.uimage barebox.spi barebox.kwb barebox.kwbuart \
 		barebox.efi barebox.canon-a1100.bin
 
+CLEAN_FILES +=	\
+		scripts/bareboxenv-target scripts/kernel-install-target \
+		scripts/bareboxcrc32-target scripts/bareboximd-target \
+		scripts/omap3-usb-loader-target scripts/omap4_usbboot-target \
+		scripts/imx-usb-loader-target
+
 # Directories & files removed with 'make mrproper'
 MRPROPER_DIRS  += include/config usr/include include/generated Documentation/commands
 MRPROPER_FILES += .config .config.old .version .old_version \
diff --git a/arch/sandbox/configs/targettools_defconfig b/arch/sandbox/configs/targettools_defconfig
new file mode 100644
index 000000000000..cba0de4a2aaa
--- /dev/null
+++ b/arch/sandbox/configs/targettools_defconfig
@@ -0,0 +1,9 @@
+CONFIG_IMD=y
+CONFIG_IMD_TARGET=y
+CONFIG_KERNEL_INSTALL_TARGET=y
+CONFIG_BAREBOXENV_TARGET=y
+CONFIG_BAREBOXCRC32_TARGET=y
+CONFIG_COMPILE_HOST_TOOLS=y
+CONFIG_ARCH_IMX_USBLOADER_TARGET=y
+CONFIG_CONFIG_OMAP3_USB_LOADER_TARGET=y
+CONFIG_OMAP4_HOSTTOOL_USBBOOT_TARGET=y
diff --git a/scripts/.gitignore b/scripts/.gitignore
index 9577d568edd0..0b461ea7ff8a 100644
--- a/scripts/.gitignore
+++ b/scripts/.gitignore
@@ -27,7 +27,9 @@ mxsboot
 mxs-usb-loader
 /omap3-usb-loader
 omap4_usbboot
+omap4_usbboot-target
 omap3-usb-loader
+omap3-usb-loader-target
 mips-relocs
 rsatoc
 stm32image
diff --git a/scripts/Kconfig b/scripts/Kconfig
index f7ed775fbc66..e0adb5c4a311 100644
--- a/scripts/Kconfig
+++ b/scripts/Kconfig
@@ -69,4 +69,33 @@ config BAREBOXCRC32_TARGET
 	  'bareboxcrc32' is a userspacetool to generate the crc32 checksums the same way
 	  barebox does. Say yes here to build it for the target.
 
+config HAS_TARGET_LIBUSB_1_0
+	def_bool $(success,$(CROSS_PKG_CONFIG) --exists libusb-1.0)
+	help
+	  Ensure $(CROSS_PKG_CONFIG) is set to a valid pkg-config
+	  binary that knows about libusb-1.0 compiled for the
+	  target architecture.
+
+config ARCH_IMX_USBLOADER_TARGET
+	depends on HAS_TARGET_LIBUSB_1_0
+	bool "imx-usb-loader for target"
+	help
+	  Say Y here to build the imx-usb-loader tool for the target.
+	  The cross toolchain needs libusb-1.0 to compile this tool.
+
+config CONFIG_OMAP3_USB_LOADER_TARGET
+	bool "omap3 USB loader for target"
+	depends on HAS_TARGET_LIBUSB_1_0
+	help
+	  Say Y here to build the omap3 usb loader tool for the target.
+	  The cross toolchain needs libusb-1.0 to compile this tool.
+
+
+config OMAP4_HOSTTOOL_USBBOOT_TARGET
+	bool "omap4 usbboot for target"
+	depends on HAS_TARGET_LIBUSB_1_0
+	help
+	  Say Y here to build the omap4 usb loader tool for the target.
+	  The cross toolchain needs libusb-1.0 to compile this tool.
+
 endmenu
diff --git a/scripts/Makefile b/scripts/Makefile
index eb0f5c5805bb..d97f00d9a792 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -41,8 +41,15 @@ userprogs-always-$(CONFIG_BAREBOXENV_TARGET)		+= bareboxenv-target
 userprogs-always-$(CONFIG_KERNEL_INSTALL_TARGET)	+= kernel-install-target
 userprogs-always-$(CONFIG_BAREBOXCRC32_TARGET)		+= bareboxcrc32-target
 userprogs-always-$(CONFIG_IMD_TARGET)			+= bareboximd-target
+userprogs-always-$(CONFIG_OMAP3_USB_LOADER_TARGET)	+= omap3-usb-loader-target
+userprogs-always-$(CONFIG_OMAP4_HOSTTOOL_USBBOOT)	+= omap4_usbboot-target
 
-userccflags += -I $(srctree)/$(src)/include
+omap3-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
+omap3-usb-loader-target-userldlibs += `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
+omap4_usbboot-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
+omap4_usbboot-target-userldlibs += -lpthread `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
+
+userccflags += -I $(srctree)/$(src)/include -isystem $(srctree)/scripts/include
 
 subdir-y			+= mod
 subdir-y			+= imx
diff --git a/scripts/imx/.gitignore b/scripts/imx/.gitignore
index 84e6f2b40617..341aec9ee435 100644
--- a/scripts/imx/.gitignore
+++ b/scripts/imx/.gitignore
@@ -1,2 +1,3 @@
 imx-usb-loader
+imx-usb-loader-target
 imx-image
diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index 029f9ca9f8af..a7f487a0452c 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -4,13 +4,23 @@ hostprogs-always-$(CONFIG_ARCH_IMX_USBLOADER)	+= imx-usb-loader
 HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
 HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
 
+imx-usb-loader-target-userccflags += `$(CROSS_PKG_CONFIG) --cflags libusb-1.0`
+imx-usb-loader-target-userldlibs += `$(CROSS_PKG_CONFIG) --libs libusb-1.0`
+
 HOSTCFLAGS_imx.o = -I$(srctree)/arch/arm/mach-imx/include
+imx-target-userccflags += -I$(srctree)/arch/arm/mach-imx/include
 HOSTCFLAGS_imx-image.o = -I$(srctree) -I$(srctree)/arch/arm/mach-imx/include
 HOSTCFLAGS_imx-usb-loader.o += -I$(srctree) -I$(srctree)/arch/arm/mach-imx/include
+imx-usb-loader-target-userccflags += -I$(srctree) -I$(srctree)/arch/arm/mach-imx/include
 ifdef CONFIG_ARCH_IMX_IMXIMAGE_SSL_SUPPORT
 HOSTCFLAGS_imx-image.o += -DIMXIMAGE_SSL_SUPPORT
 HOSTLDLIBS_imx-image  = `pkg-config --libs openssl`
 endif
 
 imx-usb-loader-objs := imx-usb-loader.o imx.o
+imx-usb-loader-target-objs := imx-usb-loader-target.o imx-target.o
 imx-image-objs := imx-image.o imx.o
+
+userprogs-always-$(CONFIG_ARCH_IMX_USBLOADER_TARGET)	+= imx-usb-loader-target
+
+userccflags += -I $(srctree)/$(src)/include -isystem $(srctree)/scripts/include
diff --git a/scripts/imx/imx-target.c b/scripts/imx/imx-target.c
new file mode 100644
index 000000000000..4062eed6f60f
--- /dev/null
+++ b/scripts/imx/imx-target.c
@@ -0,0 +1 @@
+#include "imx.c"
diff --git a/scripts/imx/imx-usb-loader-target.c b/scripts/imx/imx-usb-loader-target.c
new file mode 100644
index 000000000000..f2050aec1791
--- /dev/null
+++ b/scripts/imx/imx-usb-loader-target.c
@@ -0,0 +1 @@
+#include "imx-usb-loader.c"
diff --git a/scripts/omap3-usb-loader-target.c b/scripts/omap3-usb-loader-target.c
new file mode 100644
index 000000000000..c99c261a0253
--- /dev/null
+++ b/scripts/omap3-usb-loader-target.c
@@ -0,0 +1 @@
+#include "omap3-usb-loader.c"
diff --git a/scripts/omap4_usbboot-target.c b/scripts/omap4_usbboot-target.c
new file mode 100644
index 000000000000..3dd606533749
--- /dev/null
+++ b/scripts/omap4_usbboot-target.c
@@ -0,0 +1 @@
+#include "omap4_usbboot.c"
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

