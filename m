Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPRqQ-0000AC-0c
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 06:48:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 08:47:38 +0200
Message-Id: <1380264462-27614-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
References: <1380264462-27614-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/11] scripts/Makefile: cleanup
To: barebox@lists.infradead.org

Sort so that we have the object files on top, sorted by hostprogs-y and
then subdir-y.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/Makefile | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/scripts/Makefile b/scripts/Makefile
index 307dc3d..99a06b0 100644
--- a/scripts/Makefile
+++ b/scripts/Makefile
@@ -1,31 +1,31 @@
 ###
 # scripts contains sources for various helper programs used throughout
-# the kernel for the build process.
+# barebox for the build process.
 # ---------------------------------------------------------------------------
 # kallsyms:      Find all symbols in barebox
 
-hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
 hostprogs-y                      += bin2c
 hostprogs-y                      += mkimage
 hostprogs-y                      += bareboxenv
+hostprogs-$(CONFIG_KALLSYMS)     += kallsyms
 hostprogs-$(CONFIG_ARCH_MVEBU)   += kwbimage kwboot
 hostprogs-$(CONFIG_ARCH_NETX)    += gen_netx_image
 hostprogs-$(CONFIG_ARCH_OMAP)    += omap_signGP mk-am35xx-spi-image
 hostprogs-$(CONFIG_ARCH_S5PCxx)  += s5p_cksum
 hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
 hostprogs-$(CONFIG_ARCH_ZYNQ)	 += zynq_mkimage
-subdir-$(CONFIG_ARCH_IMX)	 += imx
+
+subdir-y			+= mod
+subdir-$(CONFIG_ARCH_IMX)	+= imx
+subdir-$(CONFIG_X86)		+= setupmbr
+subdir-$(CONFIG_DTC)		+= dtc
+
+targetprogs-y += bareboxenv-target
 
 HOSTLOADLIBES_omap4_usbboot = -lpthread
 omap4_usbboot-objs               := usb_linux.o omap4_usbboot.o
 hostprogs-$(CONFIG_OMAP4_USBBOOT)+= omap4_usbboot
 
-always		:= $(hostprogs-y) $(hostprogs-m)
-
-subdir-y                     += mod
-
-subdir-$(CONFIG_X86)             += setupmbr
-
 # Let clean descend into subdirs
 subdir-	+= basic kconfig setupmbr
 
@@ -37,4 +37,4 @@ obj-$(CONFIG_BAREBOXENV_TARGET)	+= bareboxenv-target
 scripts/bareboxenv-target: scripts/bareboxenv.c FORCE
 	$(call if_changed_dep,csingle)
 
-subdir-$(CONFIG_DTC)         += dtc
+always		:= $(hostprogs-y) $(hostprogs-m)
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
