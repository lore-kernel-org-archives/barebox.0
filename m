Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gdbdj-0007w9-LJ
 for barebox@lists.infradead.org; Sun, 30 Dec 2018 14:00:33 +0000
From: Masahiro Yamada <yamada.masahiro@socionext.com>
Date: Sun, 30 Dec 2018 22:59:25 +0900
Message-Id: <1546178368-26182-9-git-send-email-yamada.masahiro@socionext.com>
In-Reply-To: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
References: <1546178368-26182-1-git-send-email-yamada.masahiro@socionext.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 08/11] kbuild: rename HOSTLOADLIBES_* to HOSTLDLIBS_*
To: barebox@lists.infradead.org

This is needed to resync kconfig to the latest Linux.

Refer to Linux commit 8377bd2b9ee1 ("kbuild: Rename HOST_LOADLIBES
to KBUILD_HOSTLDLIBS").

Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

 scripts/Makefile         |  6 +++---
 scripts/Makefile.host    |  6 +++---
 scripts/imx/Makefile     |  4 ++--
 scripts/kconfig/Makefile | 10 +++++-----
 scripts/tegra/Makefile   |  2 +-
 5 files changed, 14 insertions(+), 14 deletions(-)

diff --git a/scripts/Makefile b/scripts/Makefile
index 59d22e1..ff0a3c2 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -21,12 +21,12 @@ hostprogs-$(CONFIG_ARCH_ZYNQ)	 += zynq_mkimage
 hostprogs-$(CONFIG_ARCH_SOCFPGA) += socfpga_mkimage
 hostprogs-$(CONFIG_MXS_HOSTTOOLS)+= mxsimage mxsboot
 HOSTCFLAGS += -I$(srctree)/scripts/include/
-HOSTLOADLIBES_mxsimage  = `pkg-config --libs openssl`
+HOSTLDLIBS_mxsimage  = `pkg-config --libs openssl`
 HOSTCFLAGS_omap3-usb-loader.o = `pkg-config --cflags libusb-1.0`
-HOSTLOADLIBES_omap3-usb-loader  = `pkg-config --libs libusb-1.0`
+HOSTLDLIBS_omap3-usb-loader  = `pkg-config --libs libusb-1.0`
 hostprogs-$(CONFIG_OMAP3_USB_LOADER)  += omap3-usb-loader
 HOSTCFLAGS_omap4_usbboot.o = `pkg-config --cflags libusb-1.0`
-HOSTLOADLIBES_omap4_usbboot = -lpthread `pkg-config --libs libusb-1.0`
+HOSTLDLIBS_omap4_usbboot = -lpthread `pkg-config --libs libusb-1.0`
 hostprogs-$(CONFIG_OMAP4_HOSTTOOL_USBBOOT) += omap4_usbboot
 
 subdir-y			+= mod
diff --git a/scripts/Makefile.host b/scripts/Makefile.host
index a89a0c5..8a88cbc 100644
--- a/scripts/Makefile.host
+++ b/scripts/Makefile.host
@@ -86,7 +86,7 @@ hostcxx_flags  = -Wp,-MD,$(depfile) $(__hostcxx_flags)
 # host-csingle -> Executable
 quiet_cmd_host-csingle 	= HOSTCC  $@
       cmd_host-csingle	= $(HOSTCC) $(hostc_flags) $(HOSTLDFLAGS) -o $@ $< \
-	  	$(HOST_LOADLIBES) $(HOSTLOADLIBES_$(@F))
+		$(HOST_LOADLIBES) $(HOSTLDLIBS_$(@F))
 $(host-csingle): $(obj)/%: $(src)/%.c FORCE
 	$(call if_changed_dep,host-csingle)
 
@@ -95,7 +95,7 @@ $(host-csingle): $(obj)/%: $(src)/%.c FORCE
 quiet_cmd_host-cmulti	= HOSTLD  $@
       cmd_host-cmulti	= $(HOSTCC) $(HOSTLDFLAGS) -o $@ \
 			  $(addprefix $(obj)/,$($(@F)-objs)) \
-			  $(HOST_LOADLIBES) $(HOSTLOADLIBES_$(@F))
+			  $(HOST_LOADLIBES) $(HOSTLDLIBS_$(@F))
 $(host-cmulti): FORCE
 	$(call if_changed,host-cmulti)
 $(call multi_depend, $(host-cmulti), , -objs)
@@ -113,7 +113,7 @@ quiet_cmd_host-cxxmulti	= HOSTLD  $@
       cmd_host-cxxmulti	= $(HOSTCXX) $(HOSTLDFLAGS) -o $@ \
 			  $(foreach o,objs cxxobjs,\
 			  $(addprefix $(obj)/,$($(@F)-$(o)))) \
-			  $(HOST_LOADLIBES) $(HOSTLOADLIBES_$(@F))
+			  $(HOST_LOADLIBES) $(HOSTLDLIBS_$(@F))
 $(host-cxxmulti): FORCE
 	$(call if_changed,host-cxxmulti)
 $(call multi_depend, $(host-cxxmulti), , -objs -cxxobjs)
diff --git a/scripts/imx/Makefile b/scripts/imx/Makefile
index 4fb62a6..e7af2c9 100644
--- a/scripts/imx/Makefile
+++ b/scripts/imx/Makefile
@@ -4,14 +4,14 @@ hostprogs-$(CONFIG_ARCH_IMX_USBLOADER) += imx-usb-loader
 always          := $(hostprogs-y)
 
 HOSTCFLAGS_imx-usb-loader.o = `pkg-config --cflags libusb-1.0`
-HOSTLOADLIBES_imx-usb-loader  = `pkg-config --libs libusb-1.0`
+HOSTLDLIBS_imx-usb-loader  = `pkg-config --libs libusb-1.0`
 
 HOSTCFLAGS_imx.o = -I$(srctree)/arch/arm/mach-imx/include
 HOSTCFLAGS_imx-image.o = -I$(srctree) -I$(srctree)/arch/arm/mach-imx/include
 HOSTCFLAGS_imx-usb-loader.o += -I$(srctree) -I$(srctree)/arch/arm/mach-imx/include
 ifdef CONFIG_ARCH_IMX_IMXIMAGE_SSL_SUPPORT
 HOSTCFLAGS_imx-image.o += -DIMXIMAGE_SSL_SUPPORT
-HOSTLOADLIBES_imx-image  = `pkg-config --libs openssl`
+HOSTLDLIBS_imx-image  = `pkg-config --libs openssl`
 endif
 
 imx-usb-loader-objs := imx-usb-loader.o imx.o
diff --git a/scripts/kconfig/Makefile b/scripts/kconfig/Makefile
index ef8e5f9..f9203d7 100644
--- a/scripts/kconfig/Makefile
+++ b/scripts/kconfig/Makefile
@@ -186,7 +186,7 @@ clean-files     += config.pot linux.pot
 PHONY += $(obj)/dochecklxdialog
 $(addprefix $(obj)/,$(lxdialog)): $(obj)/dochecklxdialog
 $(obj)/dochecklxdialog:
-	$(Q)$(CONFIG_SHELL) $(check-lxdialog) -check $(HOSTCC) $(HOST_EXTRACFLAGS) $(HOSTLOADLIBES_mconf)
+	$(Q)$(CONFIG_SHELL) $(check-lxdialog) -check $(HOSTCC) $(HOST_EXTRACFLAGS) $(HOSTLDLIBS_mconf)
 
 always := dochecklxdialog
 
@@ -200,16 +200,16 @@ HOSTCFLAGS_zconf.tab.o	:= -I$(src)
 LEX_PREFIX_zconf	:= zconf
 YACC_PREFIX_zconf	:= zconf
 
-HOSTLOADLIBES_qconf	= $(KC_QT_LIBS)
+HOSTLDLIBS_qconf	= $(KC_QT_LIBS)
 HOSTCXXFLAGS_qconf.o	= $(KC_QT_CFLAGS)
 
-HOSTLOADLIBES_gconf	= `pkg-config --libs gtk+-2.0 gmodule-2.0 libglade-2.0`
+HOSTLDLIBS_gconf	= `pkg-config --libs gtk+-2.0 gmodule-2.0 libglade-2.0`
 HOSTCFLAGS_gconf.o	= `pkg-config --cflags gtk+-2.0 gmodule-2.0 libglade-2.0` \
                           -Wno-missing-prototypes
 
-HOSTLOADLIBES_mconf   = $(shell $(CONFIG_SHELL) $(check-lxdialog) -ldflags $(HOSTCC))
+HOSTLDLIBS_mconf   = $(shell $(CONFIG_SHELL) $(check-lxdialog) -ldflags $(HOSTCC))
 
-HOSTLOADLIBES_nconf	= $(shell \
+HOSTLDLIBS_nconf	= $(shell \
 				pkg-config --libs menuw panelw ncursesw 2>/dev/null \
 				|| pkg-config --libs menu panel ncurses 2>/dev/null \
 				|| echo "-lmenu -lpanel -lncurses"  )
diff --git a/scripts/tegra/Makefile b/scripts/tegra/Makefile
index 99aef3f..8ebc27c 100644
--- a/scripts/tegra/Makefile
+++ b/scripts/tegra/Makefile
@@ -2,7 +2,7 @@ hostprogs-$(CONFIG_ARCH_TEGRA) += cbootimage
 
 always          := $(hostprogs-y)
 
-HOSTLOADLIBES_cbootimage  = '-lm'
+HOSTLDLIBS_cbootimage  = '-lm'
 
 cbootimage-objs := \
 	cbootimage.o \
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
