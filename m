Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZFesd-0005la-QR
 for barebox@lists.infradead.org; Thu, 16 Jul 2015 08:51:00 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 16 Jul 2015 10:50:19 +0200
Message-Id: <1437036628-29439-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
References: <1437036628-29439-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] ARM: i.MX6: remove unnecessary includes
To: Barebox List <barebox@lists.infradead.org>

Most files including imx6-mmdc.h do not actually use anything from
it. Clean this up.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/datamodul-edm-qmx6/board.c     | 1 -
 arch/arm/boards/dfi-fs700-m60/lowlevel.c       | 1 -
 arch/arm/boards/embest-riotboard/lowlevel.c    | 1 -
 arch/arm/boards/phytec-phycard-imx6/lowlevel.c | 1 -
 arch/arm/boards/phytec-phyflex-imx6/lowlevel.c | 1 -
 arch/arm/boards/tqma6x/board.c                 | 1 -
 arch/arm/boards/tqma6x/lowlevel.c              | 1 -
 arch/arm/boards/variscite-mx6/lowlevel.c       | 1 -
 8 files changed, 8 deletions(-)

diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index 81356e6..96c7fbe 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -38,7 +38,6 @@
 #include <mach/devices-imx6.h>
 #include <mach/imx6-regs.h>
 #include <mach/iomux-mx6.h>
-#include <mach/imx6-mmdc.h>
 #include <mach/generic.h>
 #include <mach/imx6.h>
 #include <mach/bbu.h>
diff --git a/arch/arm/boards/dfi-fs700-m60/lowlevel.c b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
index b9b498e..a22f66a 100644
--- a/arch/arm/boards/dfi-fs700-m60/lowlevel.c
+++ b/arch/arm/boards/dfi-fs700-m60/lowlevel.c
@@ -19,7 +19,6 @@
 #include <asm/mmu.h>
 #include <asm/barebox-arm-head.h>
 #include <asm/barebox-arm.h>
-#include <mach/imx6-mmdc.h>
 #include <mach/imx6-regs.h>
 #include <mach/generic.h>
 
diff --git a/arch/arm/boards/embest-riotboard/lowlevel.c b/arch/arm/boards/embest-riotboard/lowlevel.c
index 59010da..d26bc98 100644
--- a/arch/arm/boards/embest-riotboard/lowlevel.c
+++ b/arch/arm/boards/embest-riotboard/lowlevel.c
@@ -7,7 +7,6 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
-#include <mach/imx6-mmdc.h>
 #include <mach/imx6.h>
 
 extern char __dtb_imx6s_riotboard_start[];
diff --git a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
index d85a1ab..09ab645 100644
--- a/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phycard-imx6/lowlevel.c
@@ -21,7 +21,6 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
-#include <mach/imx6-mmdc.h>
 #include <mach/imx6.h>
 
 static inline void setup_uart(void)
diff --git a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
index cd37f88..82c0244 100644
--- a/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
+++ b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
@@ -22,7 +22,6 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
-#include <mach/imx6-mmdc.h>
 #include <mach/imx6.h>
 
 static inline void setup_uart(void)
diff --git a/arch/arm/boards/tqma6x/board.c b/arch/arm/boards/tqma6x/board.c
index 97cce60..9c52c8a 100644
--- a/arch/arm/boards/tqma6x/board.c
+++ b/arch/arm/boards/tqma6x/board.c
@@ -38,7 +38,6 @@
 #include <mach/devices-imx6.h>
 #include <mach/imx6-regs.h>
 #include <mach/iomux-mx6.h>
-#include <mach/imx6-mmdc.h>
 #include <mach/generic.h>
 #include <mach/imx6.h>
 #include <mach/bbu.h>
diff --git a/arch/arm/boards/tqma6x/lowlevel.c b/arch/arm/boards/tqma6x/lowlevel.c
index aec84b1..52afee4 100644
--- a/arch/arm/boards/tqma6x/lowlevel.c
+++ b/arch/arm/boards/tqma6x/lowlevel.c
@@ -21,7 +21,6 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
-#include <mach/imx6-mmdc.h>
 #include <mach/imx6.h>
 
 extern char __dtb_imx6q_mba6x_start[];
diff --git a/arch/arm/boards/variscite-mx6/lowlevel.c b/arch/arm/boards/variscite-mx6/lowlevel.c
index b0b930d..5cb738a 100644
--- a/arch/arm/boards/variscite-mx6/lowlevel.c
+++ b/arch/arm/boards/variscite-mx6/lowlevel.c
@@ -23,7 +23,6 @@
 #include <asm/sections.h>
 #include <asm/cache.h>
 #include <asm/mmu.h>
-#include <mach/imx6-mmdc.h>
 #include <mach/imx6.h>
 
 static inline void setup_uart(void)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
