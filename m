Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gw4E8-0000pu-Rm
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 12:10:22 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <afa@pengutronix.de>) id 1gw4E7-0002dk-GK
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 13:10:19 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92-RC5)
 (envelope-from <afa@pengutronix.de>) id 1gw4E7-0003zm-8y
 for barebox@lists.infradead.org; Tue, 19 Feb 2019 13:10:19 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 19 Feb 2019 13:10:17 +0100
Message-Id: <20190219121018.29736-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/2] images: pbl: verify CONFIG_BAREBOX_MAX_IMAGE_SIZE is not
 exceeded
To: barebox@lists.infradead.org

For platforms such as the at91, the boot ROM imposes an upper limit
on barebox file size.  Prior to 5a1a5ed253 ("ARM: images: use piggydata"),
BAREBOX_MAX_PBLX_SIZE seems to have been the way to go for limiting
the size of the final barebox binary when using the PBL.
With pblx removed, this variable is of no use, so have the existing
BAREBOX_MAX_IMAGE_SIZE replace its functionality.

Currently BAREBOX_MAX_IMAGE_SIZE is only checked against in the non-PBL
case, so add a check in the PBL case as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/configs/am335x_mlo_defconfig |  2 +-
 common/Kconfig                        | 10 ----------
 images/Makefile                       |  1 +
 3 files changed, 2 insertions(+), 11 deletions(-)

diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index b58b71a85937..d6909154c443 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -8,7 +8,7 @@ CONFIG_MACH_PHYTEC_SOM_AM335X=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_MEMINFO is not set
 CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_PBLX_SIZE=0x1b400
+CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x1b400
 CONFIG_MALLOC_SIZE=0x0
 CONFIG_MALLOC_TLSF=y
 CONFIG_RELOCATABLE=y
diff --git a/common/Kconfig b/common/Kconfig
index 0ac83a22ca0c..2dd5842e530f 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -245,16 +245,6 @@ config BAREBOX_MAX_BARE_INIT_SIZE
 	  this will allow your bare_init to fit in SRAM as example
 	  ARCH can overwrite it via ARCH_BAREBOX_MAX_BARE_INIT_SIZE
 
-config BAREBOX_MAX_PBLX_SIZE
-	depends on PBL_MULTI_IMAGES
-	depends on IMAGE_COMPRESSION
-	prompt "Maximum PBLX size"
-	hex
-	default 0xffffffff
-	help
-	  Define the maximum size of the PBLX image.
-	  The pblx is a self extracting barebox binary.
-
 config HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	bool
 
diff --git a/images/Makefile b/images/Makefile
index 4e82dc92ee76..59b81f9b6d8f 100644
--- a/images/Makefile
+++ b/images/Makefile
@@ -66,6 +66,7 @@ $(obj)/%.pbl: $(pbl-lds) $(barebox-pbl-common) $(obj)/piggy.o FORCE
 
 $(obj)/%.pblb: $(obj)/%.pbl FORCE
 	$(call if_changed,objcopy_bin,$(*F))
+	$(call cmd,check_file_size,$@,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))
 
 $(obj)/%.s: $(obj)/% FORCE
 	$(call if_changed,disasm)
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
