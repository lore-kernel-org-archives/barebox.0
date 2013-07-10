Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UwrXW-0007qU-EI
 for barebox@lists.infradead.org; Wed, 10 Jul 2013 10:22:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jul 2013 12:22:03 +0200
Message-Id: <1373451723-13575-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: generate imx dcd.S files as *.dcd.S
To: barebox@lists.infradead.org

The compiled in dcd images generate an intermediate assembly file. Instead
of generating them as *.S generate them as *.dcd.S to better identify them
as generated files. These are then added to .gitignore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .gitignore                                   | 2 ++
 arch/arm/boards/efika-mx-smartbook/Makefile  | 4 ++--
 arch/arm/boards/freescale-mx51-pdk/Makefile  | 4 ++--
 arch/arm/boards/freescale-mx53-loco/Makefile | 4 ++--
 scripts/Makefile.lib                         | 2 +-
 5 files changed, 9 insertions(+), 7 deletions(-)

diff --git a/.gitignore b/.gitignore
index a08c6c1..1dec248 100644
--- a/.gitignore
+++ b/.gitignore
@@ -20,6 +20,8 @@
 *.elf
 *.mcp
 *.orig
+*.dcd
+*.dcd.S
 
 #
 # Top-level generic files
diff --git a/arch/arm/boards/efika-mx-smartbook/Makefile b/arch/arm/boards/efika-mx-smartbook/Makefile
index a022d6d..0ac4693 100644
--- a/arch/arm/boards/efika-mx-smartbook/Makefile
+++ b/arch/arm/boards/efika-mx-smartbook/Makefile
@@ -1,4 +1,4 @@
-obj-y += board.o flash-header-imx51-genesi-efikasb.o
+obj-y += board.o flash-header-imx51-genesi-efikasb.dcd.o
 lwl-y += lowlevel.o
-extra-y += flash-header-imx51-genesi-efikasb.S
+extra-y += flash-header-imx51-genesi-efikasb.dcd.S
 extra-y += flash-header-imx51-genesi-efikasb.dcd
diff --git a/arch/arm/boards/freescale-mx51-pdk/Makefile b/arch/arm/boards/freescale-mx51-pdk/Makefile
index 0c06778..6252c88 100644
--- a/arch/arm/boards/freescale-mx51-pdk/Makefile
+++ b/arch/arm/boards/freescale-mx51-pdk/Makefile
@@ -1,3 +1,3 @@
-obj-y += board.o flash-header-imx51-babbage.o
-extra-y += flash-header-imx51-babbage.S flash-header-imx51-babbage.dcd
+obj-y += board.o flash-header-imx51-babbage.dcd.o
+extra-y += flash-header-imx51-babbage.dcd.S flash-header-imx51-babbage.dcd
 lwl-y += lowlevel.o
diff --git a/arch/arm/boards/freescale-mx53-loco/Makefile b/arch/arm/boards/freescale-mx53-loco/Makefile
index 68fbe3a..bcaa974 100644
--- a/arch/arm/boards/freescale-mx53-loco/Makefile
+++ b/arch/arm/boards/freescale-mx53-loco/Makefile
@@ -1,3 +1,3 @@
-obj-y += board.o flash-header-imx53-loco.o
-extra-y += flash-header-imx53-loco.S flash-header-imx53-loco.dcd
+obj-y += board.o flash-header-imx53-loco.dcd.o
+extra-y += flash-header-imx53-loco.dcd.S flash-header-imx53-loco.dcd
 lwl-y += lowlevel.o
diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
index 307412f..ab12a38 100644
--- a/scripts/Makefile.lib
+++ b/scripts/Makefile.lib
@@ -325,7 +325,7 @@ quiet_cmd_dcd = DCD     $@
 $(obj)/%.dcd: $(obj)/%.imxcfg FORCE
 	$(call if_changed,dcd)
 
-$(obj)/%.S: $(obj)/%.dcd
+$(obj)/%.dcd.S: $(obj)/%.dcd
 	$(call cmd,imximage_S_dcd)
 
 quiet_cmd_imx_image = IMX-IMG $@
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
