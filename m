Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aXYPv-0002LC-Sd
 for barebox@lists.infradead.org; Sun, 21 Feb 2016 18:07:37 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 21 Feb 2016 19:06:29 +0100
Message-Id: <1456077990-15003-2-git-send-email-akurz@blala.de>
In-Reply-To: <1456077990-15003-1-git-send-email-akurz@blala.de>
References: <1456077990-15003-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 2/3] edb9302 eth: privide proper phy config
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

The evaluation boards EDB9302 and  Olimex-CS-E9302 both use a
KS8721BL transciever in default strapping which is phy_addr=1

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/edb93xx/edb93xx.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
index c314320..4146abf 100644
--- a/arch/arm/boards/edb93xx/edb93xx.c
+++ b/arch/arm/boards/edb93xx/edb93xx.c
@@ -27,10 +27,16 @@
 #include <malloc.h>
 #include <generated/mach-types.h>
 #include <mach/ep93xx-regs.h>
+#include <ep93xx_eth.h>
 #include "edb93xx.h"
 
 #define DEVCFG_U1EN (1 << 18)
 
+static struct ep93xx_eth_platform_data ep93xx_eth_info = {
+        .xcv_type = PHY_INTERFACE_MODE_MII,
+        .phy_addr = 1,
+};
+
 static int ep93xx_mem_init(void)
 {
 	arm_add_mem_device("ram0", CONFIG_EP93XX_SDRAM_BANK0_BASE,
@@ -70,7 +76,7 @@ static int ep93xx_devices_init(void)
 	 * CS line 6, data width is 16 bit
 	 */
 	add_generic_device("ep93xx_eth", DEVICE_ID_DYNAMIC, NULL, 0, 0, IORESOURCE_MEM,
-			NULL);
+			&ep93xx_eth_info);
 
 	armlinux_set_architecture(MACH_TYPE);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
