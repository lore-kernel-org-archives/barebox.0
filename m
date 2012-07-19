Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Srlr9-0005KM-Hu
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 08:13:22 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 19 Jul 2012 10:12:57 +0200
Message-Id: <1342685582-13244-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/9] ARM: remove exception vectors from boards
To: barebox@lists.infradead.org

The exception vector table will become part of the uncompressed image,
so we can't reference them from the lowlevel init stuff anymore.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c     |    4 +---
 arch/arm/boards/eukrea_cpuimx35/flash_header.c        |    2 --
 arch/arm/boards/freescale-mx25-3-stack/3stack.c       |    4 +---
 arch/arm/boards/freescale-mx35-3-stack/flash_header.c |    4 +---
 arch/arm/boards/freescale-mx6-arm2/flash_header.c     |    3 ++-
 arch/arm/boards/tqma53/flash_header.c                 |    3 ++-
 6 files changed, 7 insertions(+), 13 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
index 1b8f618..b3b0838 100644
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
@@ -49,8 +49,6 @@
 #include <mach/devices-imx25.h>
 #include <asm/barebox-arm-head.h>
 
-extern void exception_vectors(void);
-
 void __naked __flash_header_start go(void)
 {
 	barebox_arm_head();
@@ -72,7 +70,7 @@ struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
 };
 
 struct imx_flash_header __flash_header_section flash_header = {
-	.app_code_jump_vector	= DEST_BASE + ((unsigned int)&exception_vectors - TEXT_BASE),
+	.app_code_jump_vector	= DEST_BASE + 0x1000,
 	.app_code_barker	= APP_CODE_BARKER,
 	.app_code_csf		= 0,
 	.dcd_ptr_ptr		= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd),
diff --git a/arch/arm/boards/eukrea_cpuimx35/flash_header.c b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
index a745442..26752d1 100644
--- a/arch/arm/boards/eukrea_cpuimx35/flash_header.c
+++ b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
@@ -3,8 +3,6 @@
 #include <mach/imx-regs.h>
 #include <asm/barebox-arm-head.h>
 
-extern void exception_vectors(void);
-
 void __naked __flash_header_start go(void)
 {
 	barebox_arm_head();
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
index 323cd11..6b6146d 100644
--- a/arch/arm/boards/freescale-mx25-3-stack/3stack.c
+++ b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
@@ -45,8 +45,6 @@
 #include <mach/devices-imx25.h>
 #include <asm/barebox-arm-head.h>
 
-extern void exception_vectors(void);
-
 void __naked __flash_header_start go(void)
 {
 	barebox_arm_head();
@@ -95,7 +93,7 @@ struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
 };
 
 struct imx_flash_header __flash_header_section flash_header = {
-	.app_code_jump_vector	= DEST_BASE + ((unsigned int)&exception_vectors - TEXT_BASE),
+	.app_code_jump_vector	= DEST_BASE + 0x1000,
 	.app_code_barker	= APP_CODE_BARKER,
 	.app_code_csf		= 0,
 	.dcd_ptr_ptr		= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd),
diff --git a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
index 0786836..66763db 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
+++ b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
@@ -3,8 +3,6 @@
 #include <mach/imx-regs.h>
 #include <asm/barebox-arm-head.h>
 
-extern void exception_vectors(void);
-
 void __naked __flash_header_start go(void)
 {
 	barebox_arm_head();
@@ -59,7 +57,7 @@ struct imx_dcd_entry __dcd_entry_section dcd_entry[] = {
 
 
 struct imx_flash_header __flash_header_section flash_header = {
-	.app_code_jump_vector	= DEST_BASE + ((unsigned int)&exception_vectors - TEXT_BASE),
+	.app_code_jump_vector	= DEST_BASE + 0x1000,
 	.app_code_barker	= APP_CODE_BARKER,
 	.app_code_csf		= 0,
 	.dcd_ptr_ptr		= FLASH_HEADER_BASE + offsetof(struct imx_flash_header, dcd),
diff --git a/arch/arm/boards/freescale-mx6-arm2/flash_header.c b/arch/arm/boards/freescale-mx6-arm2/flash_header.c
index 79f3113..69d9cfa 100644
--- a/arch/arm/boards/freescale-mx6-arm2/flash_header.c
+++ b/arch/arm/boards/freescale-mx6-arm2/flash_header.c
@@ -15,12 +15,13 @@
 
 #include <common.h>
 #include <asm/byteorder.h>
+#include <asm/barebox-arm-head.h>
 #include <mach/imx-flash-header.h>
 #include <mach/imx6-regs.h>
 
 void __naked __flash_header_start go(void)
 {
-	__asm__ __volatile__("b exception_vectors\n");
+	barebox_arm_head();
 }
 
 #define DCD(a, v) { .addr = cpu_to_be32(a), .val = cpu_to_be32(v), }
diff --git a/arch/arm/boards/tqma53/flash_header.c b/arch/arm/boards/tqma53/flash_header.c
index f5e817c..d912b38 100644
--- a/arch/arm/boards/tqma53/flash_header.c
+++ b/arch/arm/boards/tqma53/flash_header.c
@@ -15,11 +15,12 @@
 
 #include <common.h>
 #include <asm/byteorder.h>
+#include <asm/barebox-arm-head.h>
 #include <mach/imx-flash-header.h>
 
 void __naked __flash_header_start go(void)
 {
-	__asm__ __volatile__("b exception_vectors\n");
+	barebox_arm_head();
 }
 
 struct imx_dcd_v2_entry __dcd_entry_section dcd_entry[] = {
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
