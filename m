Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XXCPD-00031T-PM
 for barebox@lists.infradead.org; Thu, 25 Sep 2014 17:00:36 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Thu, 25 Sep 2014 19:05:05 +0200
Message-Id: <1411664709-13699-12-git-send-email-dev@lynxeye.de>
In-Reply-To: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
References: <1411664709-13699-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 11/15] ARM: tegra: beaver: enable PEX voltage rail
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Supply for the PCIe PLL.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/nvidia-beaver/board.c | 11 ++++++++++-
 1 file changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/nvidia-beaver/board.c b/arch/arm/boards/nvidia-beaver/board.c
index e67d2aa..20707d8 100644
--- a/arch/arm/boards/nvidia-beaver/board.c
+++ b/arch/arm/boards/nvidia-beaver/board.c
@@ -15,8 +15,10 @@
  */
 
 #include <common.h>
-#include <init.h>
+#include <dt-bindings/gpio/tegra-gpio.h>
+#include <gpio.h>
 #include <i2c/i2c.h>
+#include <init.h>
 
 static int nvidia_beaver_devices_init(void)
 {
@@ -33,6 +35,13 @@ static int nvidia_beaver_devices_init(void)
 	data = 0x65;
 	i2c_write_reg(&client, 0x32, &data, 1);
 
+	/* TPS659110: LDO1_REG = 1.05v, ACTIVE to PEX */
+	data = 0x15;
+	i2c_write_reg(&client, 0x30, &data, 1);
+
+	/* enable SYS_3V3_PEXS */
+	gpio_direction_output(TEGRA_GPIO(L, 7), 1);
+
 	return 0;
 }
 fs_initcall(nvidia_beaver_devices_init);
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
