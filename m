Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.visioncatalog.com ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1e85mA-0004Oy-Fn
 for barebox@lists.infradead.org; Fri, 27 Oct 2017 14:38:26 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id D45F6A009D8
 for <barebox@lists.infradead.org>; Fri, 27 Oct 2017 16:39:35 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 27 Oct 2017 16:37:41 +0200
Message-Id: <1509115061-4385-3-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1509115061-4385-1-git-send-email-d.schultz@phytec.de>
References: <1509115061-4385-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 3/3] ARM: phytec-som-am335x: Add autoenable
To: barebox@lists.infradead.org

Add autoenable for components, which can be populated on an AM335x
phyCORE SoM.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/board.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/arm/boards/phytec-som-am335x/board.c b/arch/arm/boards/phytec-som-am335x/board.c
index 34d4df1..5d13471 100644
--- a/arch/arm/boards/phytec-som-am335x/board.c
+++ b/arch/arm/boards/phytec-som-am335x/board.c
@@ -26,6 +26,7 @@
 #include <io.h>
 #include <linux/sizes.h>
 #include <envfs.h>
+#include <autoenable.h>
 #include <state.h>
 #include <asm/armlinux.h>
 #include <generated/mach-types.h>
@@ -136,6 +137,17 @@ static int physom_devices_init(void)
 		}
 	}
 
+	/* Enable NAND */
+	autoenable_device_by_path("/ocp/gpmc@50000000");
+	/* Enable eMMC */
+	autoenable_device_by_path("/ocp/mmc@481d8000");
+	/* Enable SPI NOR */
+	autoenable_device_by_path("/ocp/spi@48030000/m25p80@0");
+
+	autoenable_i2c_by_path("/ocp/i2c@44e0b000/temp@4b");
+	autoenable_i2c_by_path("/ocp/i2c@44e0b000/eeprom@52");
+	autoenable_i2c_by_path("/ocp/i2c@44e0b000/rtc@68");
+
 	if (IS_ENABLED(CONFIG_SHELL_NONE))
 		return am33xx_of_register_bootdevice();
 
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
