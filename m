Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gOfBL-0004mj-Hf
 for barebox@lists.infradead.org; Mon, 19 Nov 2018 08:45:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 19 Nov 2018 09:44:54 +0100
Message-Id: <20181119084454.17599-13-s.hauer@pengutronix.de>
In-Reply-To: <20181119084454.17599-1-s.hauer@pengutronix.de>
References: <20181119084454.17599-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 12/12] ARM: omap: Add missing includes
To: Barebox List <barebox@lists.infradead.org>

Include header files that provide the prototypes for functions
implemented in that C files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_bbu_emmc.c    | 1 +
 arch/arm/mach-omap/am33xx_bbu_nand.c    | 1 +
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c | 1 +
 arch/arm/mach-omap/am33xx_clock.c       | 1 +
 4 files changed, 4 insertions(+)

diff --git a/arch/arm/mach-omap/am33xx_bbu_emmc.c b/arch/arm/mach-omap/am33xx_bbu_emmc.c
index 1fd7222ddc..29e13de778 100644
--- a/arch/arm/mach-omap/am33xx_bbu_emmc.c
+++ b/arch/arm/mach-omap/am33xx_bbu_emmc.c
@@ -18,6 +18,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <filetype.h>
+#include <mach/bbu.h>
 
 #define PART_TABLE_SIZE		66
 #define PART_TABLE_OFFSET	0x1BE
diff --git a/arch/arm/mach-omap/am33xx_bbu_nand.c b/arch/arm/mach-omap/am33xx_bbu_nand.c
index 6fc6e7e40f..4c1a28d37e 100644
--- a/arch/arm/mach-omap/am33xx_bbu_nand.c
+++ b/arch/arm/mach-omap/am33xx_bbu_nand.c
@@ -22,6 +22,7 @@
 #include <fcntl.h>
 #include <libfile.h>
 #include <filetype.h>
+#include <mach/bbu.h>
 
 struct nand_bbu_handler {
 	struct bbu_handler bbu_handler;
diff --git a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
index 03477dbaf1..7d2ef1f0f2 100644
--- a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
+++ b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
@@ -20,6 +20,7 @@
 #include <fs.h>
 #include <fcntl.h>
 #include <linux/stat.h>
+#include <mach/bbu.h>
 
 /*
  * AM35xx, AM33xx chips use big endian MLO for SPI NOR flash
diff --git a/arch/arm/mach-omap/am33xx_clock.c b/arch/arm/mach-omap/am33xx_clock.c
index ad735cb216..e63e93601e 100644
--- a/arch/arm/mach-omap/am33xx_clock.c
+++ b/arch/arm/mach-omap/am33xx_clock.c
@@ -15,6 +15,7 @@
 #include <common.h>
 #include <asm/io.h>
 #include <mach/am33xx-clock.h>
+#include <mach/am33xx-generic.h>
 #include <asm-generic/div64.h>
 
 #define PRCM_MOD_EN		0x2
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
