Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-10.nifty.com ([210.131.2.77])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7zHW-0007Rr-6q
 for barebox@lists.infradead.org; Tue, 18 Aug 2020 10:55:58 +0000
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Tue, 18 Aug 2020 19:55:20 +0900
Message-Id: <20200818105520.32326-5-masahiroy@kernel.org>
In-Reply-To: <20200818105520.32326-1-masahiroy@kernel.org>
References: <20200818105520.32326-1-masahiroy@kernel.org>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/5] kbuild: introduce hostprogs-always-y and
 userprogs-always-y
To: barebox@lists.infradead.org
Cc: Masahiro Yamada <masahiroy@kernel.org>

Linux commit faabed295cccc2aba2b67f2e7b309f2892d55004

You can use:

    hostprogs-always-y += foo

as a shorthand for:

    hostprogs += foo
    always-y += foo

Likewise,

    userprogs-always-y += foo

as a shorthand for:

    userprogs += foo
    always-y += foo

Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
---

 scripts/Makefile          | 55 ++++++++++++++++++---------------------
 scripts/Makefile.build    |  2 +-
 scripts/Makefile.clean    |  9 ++++---
 scripts/Makefile.lib      | 11 ++++++++
 scripts/basic/Makefile    |  3 +--
 scripts/dtc/Makefile      |  3 +--
 scripts/imx/Makefile      |  6 ++---
 scripts/mod/Makefile      |  4 +--
 scripts/setupmbr/Makefile |  3 +--
 scripts/tegra/Makefile    |  4 +--
 10 files changed, 51 insertions(+), 49 deletions(-)

diff --git a/scripts/Makefile b/scripts/Makefile
index 238460fe2..30b7ec540 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -1,50 +1,45 @@
 ###
 # scripts contains sources for various helper programs used throughout
 # barebox for the build process.
-# ---------------------------------------------------------------------------
-# kallsyms:      Find all symbols in barebox
 
-hostprogs-y                      += bin2c
-hostprogs-y                      += mkimage
-hostprogs-y                      += fix_size
-hostprogs-y                      += bareboxenv
-hostprogs-y                      += bareboxcrc32
-hostprogs-y                      += kernel-install
-hostprogs-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS) += rsatoc
+hostprogs-always-y					+= bin2c
+hostprogs-always-y					+= mkimage
+hostprogs-always-y					+= fix_size
+hostprogs-always-y					+= bareboxenv
+hostprogs-always-y					+= bareboxcrc32
+hostprogs-always-y					+= kernel-install
+hostprogs-always-$(CONFIG_CRYPTO_RSA_BUILTIN_KEYS)	+= rsatoc
 HOSTCFLAGS_rsatoc = `pkg-config --cflags openssl`
 HOSTLDLIBS_rsatoc = `pkg-config --libs openssl`
-hostprogs-$(CONFIG_IMD)          += bareboximd
-hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
-hostprogs-$(CONFIG_MIPS)         += mips-relocs
-hostprogs-$(CONFIG_MVEBU_HOSTTOOLS) += kwbimage kwboot mvebuimg
-hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-omap-image
-hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
-hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
+hostprogs-always-$(CONFIG_IMD)				+= bareboximd
+hostprogs-always-$(CONFIG_KALLSYMS)			+= kallsyms
+hostprogs-always-$(CONFIG_MIPS)				+= mips-relocs
+hostprogs-always-$(CONFIG_MVEBU_HOSTTOOLS)		+= kwbimage kwboot mvebuimg
+hostprogs-always-$(CONFIG_ARCH_OMAP)			+= omap_signGP mk-omap-image
+hostprogs-always-$(CONFIG_ARCH_S5PCxx)			+= s5p_cksum
+hostprogs-always-$(CONFIG_ARCH_DAVINCI)			+= mkublheader
 HOSTCFLAGS_zynq_mkimage.o = -I$(srctree) -I$(srctree)/arch/arm/mach-zynq/include
-hostprogs-$(CONFIG_ARCH_ZYNQ)	 += zynq_mkimage
-hostprogs-$(CONFIG_ARCH_SOCFPGA) += socfpga_mkimage
-hostprogs-$(CONFIG_MXS_HOSTTOOLS)+= mxsimage mxsboot
-hostprogs-$(CONFIG_ARCH_LAYERSCAPE) += pblimage
-hostprogs-$(CONFIG_ARCH_STM32MP) += stm32image
+hostprogs-always-$(CONFIG_ARCH_ZYNQ)			+= zynq_mkimage
+hostprogs-always-$(CONFIG_ARCH_SOCFPGA)			+= socfpga_mkimage
+hostprogs-always-$(CONFIG_MXS_HOSTTOOLS)		+= mxsimage mxsboot
+hostprogs-always-$(CONFIG_ARCH_LAYERSCAPE)		+= pblimage
+hostprogs-always-$(CONFIG_ARCH_STM32MP)			+= stm32image
 KBUILD_HOSTCFLAGS += -I$(srctree)/scripts/include/
 HOSTLDLIBS_mxsimage  = `pkg-config --libs openssl`
 HOSTCFLAGS_omap3-usb-loader.o = `pkg-config --cflags libusb-1.0`
 HOSTLDLIBS_omap3-usb-loader  = `pkg-config --libs libusb-1.0`
-hostprogs-$(CONFIG_OMAP3_USB_LOADER)  += omap3-usb-loader
+hostprogs-always-$(CONFIG_OMAP3_USB_LOADER)		+= omap3-usb-loader
 HOSTCFLAGS_omap4_usbboot.o = `pkg-config --cflags libusb-1.0`
 HOSTLDLIBS_omap4_usbboot = -lpthread `pkg-config --libs libusb-1.0`
-hostprogs-$(CONFIG_OMAP4_HOSTTOOL_USBBOOT) += omap4_usbboot
+hostprogs-always-$(CONFIG_OMAP4_HOSTTOOL_USBBOOT)	+= omap4_usbboot
 
-userprogs-$(CONFIG_BAREBOXENV_TARGET)		+= bareboxenv-target
-userprogs-$(CONFIG_KERNEL_INSTALL_TARGET)	+= kernel-install-target
-userprogs-$(CONFIG_BAREBOXCRC32_TARGET)		+= bareboxcrc32-target
-userprogs-$(CONFIG_IMD_TARGET)			+= bareboximd-target
+userprogs-always-$(CONFIG_BAREBOXENV_TARGET)		+= bareboxenv-target
+userprogs-always-$(CONFIG_KERNEL_INSTALL_TARGET)	+= kernel-install-target
+userprogs-always-$(CONFIG_BAREBOXCRC32_TARGET)		+= bareboxcrc32-target
+userprogs-always-$(CONFIG_IMD_TARGET)			+= bareboximd-target
 
 userccflags += -I $(srctree)/$(src)/include
 
-userprogs	:= $(userprogs-y)
-always-y	:= $(hostprogs-y) $(hostprogs-m) $(userprogs-y)
-
 subdir-y			+= mod
 subdir-y			+= imx
 subdir-$(CONFIG_X86)		+= setupmbr
diff --git a/scripts/Makefile.build b/scripts/Makefile.build
index a3dfe261a..1614a1ac5 100644
--- a/scripts/Makefile.build
+++ b/scripts/Makefile.build
@@ -45,7 +45,7 @@ include $(if $(wildcard $(kbuild-dir)/Kbuild), $(kbuild-dir)/Kbuild, $(kbuild-di
 include scripts/Makefile.lib
 
 # Do not include host rules unless needed
-ifneq ($(hostprogs)$(hostprogs-y)$(hostprogs-m),)
+ifneq ($(hostprogs),)
 include scripts/Makefile.host
 endif
 
diff --git a/scripts/Makefile.clean b/scripts/Makefile.clean
index 97fd2ef48..3c4519fa8 100644
--- a/scripts/Makefile.clean
+++ b/scripts/Makefile.clean
@@ -35,9 +35,12 @@ subdir-ymn	:= $(addprefix $(obj)/,$(subdir-ymn))
 # build a list of files to remove, usually relative to the current
 # directory
 
-__clean-files	:= $(extra-y) $(extra-m) $(extra-)       \
-		   $(always) $(always-y) $(always-m) $(always-) $(targets) $(clean-files)   \
-		   $(hostprogs) $(hostprogs-y) $(hostprogs-m) $(hostprogs-) $(userprogs)
+__clean-files	:= \
+	$(clean-files) $(targets) $(hostprogs) $(userprogs) \
+	$(extra-y) $(extra-m) $(extra-) \
+	$(always-y) $(always-m) $(always-) \
+	$(hostprogs-always-y) $(hostprogs-always-m) $(hostprogs-always-) \
+	$(userprogs-always-y) $(userprogs-always-m) $(userprogs-always-)
 
 # as clean-files is given relative to the current directory, this adds
 # a $(obj) prefix, except for absolute paths
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 3799e777c..3c95384f9 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -89,6 +89,17 @@ real-obj-m := $(foreach m, $(obj-m), $(if $(strip $($(m:.o=-objs)) $($(m:.o=-y))
 
 always-y += $(always-m)
 
+# hostprogs-always-y += foo
+# ... is a shorthand for
+# hostprogs += foo
+# always-y  += foo
+hostprogs += $(hostprogs-always-y) $(hostprogs-always-m)
+always-y += $(hostprogs-always-y) $(hostprogs-always-m)
+
+# userprogs-always-y is likewise.
+userprogs += $(userprogs-always-y) $(userprogs-always-m)
+always-y += $(userprogs-always-y) $(userprogs-always-m)
+
 # Add subdir path
 
 extra-y		:= $(addprefix $(obj)/,$(extra-y))
diff --git a/scripts/basic/Makefile b/scripts/basic/Makefile
index 290dd27d2..eeb6a38c5 100644
--- a/scripts/basic/Makefile
+++ b/scripts/basic/Makefile
@@ -2,5 +2,4 @@
 #
 # fixdep: used to generate dependency information during build process
 
-hostprogs	:= fixdep
-always-y	:= $(hostprogs)
+hostprogs-always-y	+= fixdep
diff --git a/scripts/dtc/Makefile b/scripts/dtc/Makefile
index 69b0f6a0e..0c857c9cc 100644
--- a/scripts/dtc/Makefile
+++ b/scripts/dtc/Makefile
@@ -1,8 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0
 # scripts/dtc makefile
 
-hostprogs-$(CONFIG_DTC) := dtc fdtget
-always		:= $(hostprogs-y)
+hostprogs-always-$(CONFIG_DTC)		+= dtc
 
 dtc-objs	:= dtc.o flattree.o fstree.o data.o livetree.o treesource.o \
 		   srcpos.o checks.o util.o
diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index e7af2c98e..029f9ca9f 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -1,7 +1,5 @@
-hostprogs-$(CONFIG_ARCH_IMX_IMXIMAGE) += imx-image
-hostprogs-$(CONFIG_ARCH_IMX_USBLOADER) += imx-usb-loader
-
-always          := $(hostprogs-y)
+hostprogs-always-$(CONFIG_ARCH_IMX_IMXIMAGE)	+= imx-image
+hostprogs-always-$(CONFIG_ARCH_IMX_USBLOADER)	+= imx-usb-loader
 
 HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
 HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
diff --git a/scripts/mod/Makefile b/scripts/mod/Makefile
index e02b9f4ce..9926ed08d 100644
--- a/scripts/mod/Makefile
+++ b/scripts/mod/Makefile
@@ -1,5 +1,5 @@
-hostprogs-y	:= modpost mk_elfconfig
-always		:= $(hostprogs-y) empty.o
+hostprogs-always-y	+= modpost mk_elfconfig
+always-y		+= empty.o
 
 modpost-objs	:= modpost.o sumversion.o
 
diff --git a/scripts/setupmbr/Makefile b/scripts/setupmbr/Makefile
index 8680fedce..6e33d1536 100644
--- a/scripts/setupmbr/Makefile
+++ b/scripts/setupmbr/Makefile
@@ -1,4 +1,3 @@
 HOST_EXTRACFLAGS=-I$(srctree)
 
-hostprogs-y  := setupmbr
-always       := $(hostprogs-y)
+hostprogs-always-y += setupmbr
diff --git a/scripts/tegra/Makefile b/scripts/tegra/Makefile
index 8ebc27ca7..dec0b529d 100644
--- a/scripts/tegra/Makefile
+++ b/scripts/tegra/Makefile
@@ -1,6 +1,4 @@
-hostprogs-$(CONFIG_ARCH_TEGRA) += cbootimage
-
-always          := $(hostprogs-y)
+hostprogs-always-$(CONFIG_ARCH_TEGRA) += cbootimage
 
 HOSTLDLIBS_cbootimage  = '-lm'
 
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
