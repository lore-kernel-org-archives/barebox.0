Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VCqEt-0001XD-KQ
 for barebox@lists.infradead.org; Fri, 23 Aug 2013 12:13:18 +0000
From: Shravan Kumar <shravan.k@phytec.in>
Date: Fri, 23 Aug 2013 14:12:49 +0200
Message-Id: <1377259969-10890-2-git-send-email-shravan.k@phytec.in>
In-Reply-To: <1377259969-10890-1-git-send-email-shravan.k@phytec.in>
References: <1377259969-10890-1-git-send-email-shravan.k@phytec.in>
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
Subject: [PATCH v2 2/2] PCM051: Added barebox update SPI NOR MLO handler
To: barebox@lists.infradead.org
Cc: shravan <shravan.k@phytec.in>

From: shravan <shravan.k@phytec.in>

Signed-off-by: shravan <shravan.k@phytec.in>
---
changes since v2:
        -file and function names are rename from omap_ to am33xx_

 arch/arm/boards/pcm051/board.c    |    3 +++
 arch/arm/configs/pcm051_defconfig |    1 +
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/boards/pcm051/board.c b/arch/arm/boards/pcm051/board.c
index 35a3a25..7f6c4b9 100644
--- a/arch/arm/boards/pcm051/board.c
+++ b/arch/arm/boards/pcm051/board.c
@@ -39,6 +39,7 @@
 #include <spi/flash.h>
 #include <i2c/i2c.h>
 #include <i2c/at24.h>
+#include <mach/bbu.h>
 
 #include "mux.h"
 
@@ -209,6 +210,8 @@ static int pcm051_devices_init(void)
 	armlinux_set_bootparams((void *)(AM33XX_DRAM_ADDR_SPACE_START + 0x100));
 	armlinux_set_architecture(MACH_TYPE_PCM051);
 
+	am33xx_bbu_spi_nor_mlo_register_handler("MLO.spi", "/dev/m25p0.xload");
+
 	return 0;
 }
 device_initcall(pcm051_devices_init);
diff --git a/arch/arm/configs/pcm051_defconfig b/arch/arm/configs/pcm051_defconfig
index 0bc7c90..97e0940 100644
--- a/arch/arm/configs/pcm051_defconfig
+++ b/arch/arm/configs/pcm051_defconfig
@@ -1,5 +1,6 @@
 CONFIG_ARCH_OMAP=y
 CONFIG_ARCH_AM33XX=y
+CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO=y
 CONFIG_MACH_PCM051=y
 CONFIG_OMAP_UART1=y
 CONFIG_AEABI=y
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
