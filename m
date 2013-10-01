Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-x236.google.com ([2a00:1450:4013:c00::236])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VR7c4-0006nq-2h
 for barebox@lists.infradead.org; Tue, 01 Oct 2013 21:36:13 +0000
Received: by mail-ee0-f54.google.com with SMTP id e53so3752892eek.13
 for <barebox@lists.infradead.org>; Tue, 01 Oct 2013 14:35:50 -0700 (PDT)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Tue,  1 Oct 2013 23:35:22 +0200
Message-Id: <1380663322-25733-5-git-send-email-lisovy@gmail.com>
In-Reply-To: <1380663322-25733-1-git-send-email-lisovy@gmail.com>
References: <1380663322-25733-1-git-send-email-lisovy@gmail.com>
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
Subject: [PATCH 4/4] i.mx53: voipac: Modify Make- and config-files to enable
 building of mx53-voipac
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, pisa@cmp.felk.cvut.cz

Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>


diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 2e924fd..8070de9 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -35,6 +35,7 @@ obj-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3-stack/
 obj-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-pdk/
 obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-loco/
 obj-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd/
+obj-$(CONFIG_MACH_FREESCALE_MX53_VOIPAC)	+= freescale-mx53-voipac/
 obj-$(CONFIG_MACH_GE863)			+= telit-evk-pro3/
 obj-$(CONFIG_MACH_GK802)			+= gk802/
 obj-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)		+= globalscale-guruplug/
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index e087e11..fb9d05c 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -20,6 +20,7 @@ config ARCH_TEXT_BASE
 	default 0x97f00000 if MACH_FREESCALE_MX51_PDK
 	default 0x7ff00000 if MACH_FREESCALE_MX53_LOCO
 	default 0x7ff00000 if MACH_FREESCALE_MX53_SMD
+	default 0x7ff00000 if MACH_FREESCALE_MX53_VOIPAC
 	default 0x87f00000 if MACH_GUF_CUPID
 	default 0x93d00000 if MACH_TX25
 	default 0x7ff00000 if MACH_TQMA53
@@ -52,6 +53,7 @@ config BOARDINFO
 	default "Synertronixx scb9328" if MACH_SCB9328
 	default "Garz+Fricke Neso" if MACH_NESO
 	default "Freescale i.MX53 SMD" if MACH_FREESCALE_MX53_SMD
+	default "Voipac i.MX53" if MACH_FREESCALE_MX53_VOIPAC
 	default "Efika MX smartbook" if MACH_EFIKA_MX_SMARTBOOK
 	default "Garz+Fricke Cupid" if MACH_GUF_CUPID
 	default "Ka-Ro tx25" if MACH_TX25
@@ -452,6 +454,14 @@ config MACH_FREESCALE_MX53_SMD
 	bool "Freescale i.MX53 SMD"
 	select ARCH_IMX53
 
+config MACH_FREESCALE_MX53_VOIPAC
+	bool "Voipac i.MX53"
+	select ARCH_IMX53
+	select HAVE_DEFAULT_ENVIRONMENT_NEW
+	help
+	  Say Y here if you are using the Voipac Technologies X53-DMM-668
+	  module equipped with a Freescale i.MX53 Processor
+
 config MACH_TQMA53
 	bool "TQ i.MX53 TQMa53"
 	select ARCH_IMX53
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
