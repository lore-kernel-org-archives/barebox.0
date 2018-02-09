Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ek5Uw-00082M-B2
 for barebox@lists.infradead.org; Fri, 09 Feb 2018 10:01:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Feb 2018 11:01:24 +0100
Message-Id: <20180209100124.4119-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] bootm: fit: add option to add DT snipped that contains fit
 public key
To: Barebox List <barebox@lists.infradead.org>

From: Marc Kleine-Budde <mkl@pengutronix.de>

This makes it easier for build systems to include a configurable dts
snippet which holds the public keys for FIT images.

Usage:

Add to your dts:

 #ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
 #include CONFIG_BOOTM_FITIMAGE_PUBKEY
 #endif

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig       | 7 +++++++
 scripts/Makefile.lib | 6 ++++++
 2 files changed, 13 insertions(+)

diff --git a/common/Kconfig b/common/Kconfig
index 93b1d89274..33e15490e9 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -632,6 +632,13 @@ config BOOTM_FITIMAGE_SIGNATURE
 	  Additionally the barebox device tree needs a /signature node with the
 	  public key with which the image has been signed.
 
+config BOOTM_FITIMAGE_PUBKEY
+	string "Path to dtsi containing pubkey"
+	default "../fit/pubkey.dtsi"
+	depends on BOOTM_FITIMAGE_SIGNATURE
+	help
+	  FIXME
+
 config BOOTM_FORCE_SIGNED_IMAGES
 	bool
 	prompt "Force booting of signed images"
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 932a779d6c..7a1bf07e66 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -157,6 +157,12 @@ dtc_cpp_flags  = -Wp,-MD,$(depfile).pre -nostdinc                        \
 		 -I$(srctree)/dts/src/                                   \
 		 -undef -D__DTS__
 
+ifdef CONFIG_BOOTM_FITIMAGE_PUBKEY
+ifneq ($(CONFIG_BOOTM_FITIMAGE_PUBKEY),"")
+dtc_cpp_flags += -DCONFIG_BOOTM_FITIMAGE_PUBKEY=\"$(CONFIG_BOOTM_FITIMAGE_PUBKEY)\"
+endif
+endif
+
 # Finds the multi-part object the current object will be linked into
 modname-multi = $(sort $(foreach m,$(multi-used),\
 		$(if $(filter $(subst $(obj)/,,$*.o), $($(m:.o=-objs)) $($(m:.o=-y))),$(m:.o=))))
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
