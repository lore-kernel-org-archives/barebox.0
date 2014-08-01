Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XDCtw-0007YG-2J
 for barebox@lists.infradead.org; Fri, 01 Aug 2014 13:29:40 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Aug 2014 15:29:10 +0200
Message-Id: <1406899755-8288-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1406899755-8288-1-git-send-email-s.hauer@pengutronix.de>
References: <1406899755-8288-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/7] ARM: phyCORE-am335x: read back SDRAM controller settings
To: barebox@lists.infradead.org

- use am335x_barebox_entry() to remove the need for hardcoded SDRAM
  size
- remove hardcoded memory settings from device tree since there are
  different memory sizes available for this board.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycore-am335x/lowlevel.c | 4 ++--
 arch/arm/dts/am335x-phytec-phycore.dts           | 5 -----
 2 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/phytec-phycore-am335x/lowlevel.c b/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
index 855b692..200cf57 100644
--- a/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
+++ b/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
@@ -81,7 +81,7 @@ static noinline void pcm051_board_init(void)
 
 	fdt = __dtb_am335x_phytec_phycore_start - get_runtime_offset();
 
-	barebox_arm_entry(0x80000000, SZ_512M, fdt);
+	am335x_barebox_entry(fdt);
 }
 
 ENTRY_FUNCTION(start_am33xx_phytec_phycore_sram, bootinfo, r1, r2)
@@ -106,5 +106,5 @@ ENTRY_FUNCTION(start_am33xx_phytec_phycore_sdram, r0, r1, r2)
 
 	fdt = __dtb_am335x_phytec_phycore_start - get_runtime_offset();
 
-	barebox_arm_entry(0x80000000, SZ_512M, fdt);
+	am335x_barebox_entry(fdt);
 }
diff --git a/arch/arm/dts/am335x-phytec-phycore.dts b/arch/arm/dts/am335x-phytec-phycore.dts
index 6196eb3..8966b32 100644
--- a/arch/arm/dts/am335x-phytec-phycore.dts
+++ b/arch/arm/dts/am335x-phytec-phycore.dts
@@ -22,11 +22,6 @@
 		};
 	};
 
-	memory {
-		device_type = "memory";
-		reg = <0x80000000 0x20000000>; /* 512 MB */
-	};
-
 	gpio-leds {
 		compatible = "gpio-leds";
 		pinctrl-names = "default";
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
