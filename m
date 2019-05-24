Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mickerik.phytec.de ([195.145.39.210])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU8Rf-0004xi-Rk
 for barebox@lists.infradead.org; Fri, 24 May 2019 11:33:09 +0000
From: Maik Otto <m.otto@phytec.de>
Date: Fri, 24 May 2019 13:32:55 +0200
Message-Id: <1558697578-69121-1-git-send-email-m.otto@phytec.de>
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
Subject: [PATCH 1/4] Makefile-imx: replace static variant to dynamic for
 signing images
To: barebox@lists.infradead.org
Cc: Maik Otto <m.otto@phytec.de>

Insert in the Kconfig the selection for the build type signed, usb signed,
encrypted/signed and  unsigned as basic for the replacement the static
variant in the Makefile.imx

Signed-off-by: Maik Otto <m.otto@phytec.de>
---
 arch/arm/mach-imx/Kconfig | 25 +++++++++++++++++++++++++
 images/Makefile.imx       |  1 +
 2 files changed, 26 insertions(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 71d37ce..fdb4239 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -845,6 +845,24 @@ config HABV4_IMG_CRT_PEM
 
 endif
 
+if HABV4
+
+choice
+	prompt "Select Building Signed/Encrypted Bootloader"
+
+config HABV4_IMAGE_SIGNED
+	bool "build signed images"
+
+config HABV4_IMAGE_SIGNED_USB
+	bool "build signed images and signed USB images"
+
+config HABV4_IMAGE_SIGNED_ENCRYPTED
+	bool "build signed encrypted images"
+
+endchoice
+
+endif
+
 config HABV3
 	tristate "HABv3 support"
 	select HAB
@@ -870,6 +888,13 @@ config HABV3_IMG_CRT_DER
 
 endif
 
+config IMX_IMG_SUFFIX
+	string
+	default "simximg" if HABV4_IMAGE_SIGNED
+	default "uimximg" if HABV4_IMAGE_SIGNED_USB
+	default "esimximg" if HABV4_IMAGE_SIGNED_ENCRYPTED
+	default "imximg"
+
 endmenu
 
 endif
diff --git a/images/Makefile.imx b/images/Makefile.imx
index e6f741c..0824b8c 100644
--- a/images/Makefile.imx
+++ b/images/Makefile.imx
@@ -22,6 +22,7 @@ $(obj)/%.img.dek: $(obj)/$$(FILE_$$(@F))
 	$(Q)if [ -z $(FILE_$(@F)) ]; then echo "FILE_$(@F) empty!"; false; fi
 	$(call if_changed,shipped)
 
+imximg_suffix := $(patsubst "%",%,${CONFIG_IMX_IMG_SUFFIX})
 # ----------------------- i.MX25 based boards ---------------------------
 pblb-$(CONFIG_MACH_TX25) += start_imx25_karo_tx25
 FILE_barebox-karo-tx25.img = start_imx25_karo_tx25.pblb
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
