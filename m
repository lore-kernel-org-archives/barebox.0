Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h40P8-0007zu-DB
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 09:42:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 13 Mar 2019 10:41:56 +0100
Message-Id: <20190313094202.14901-10-s.hauer@pengutronix.de>
In-Reply-To: <20190313094202.14901-1-s.hauer@pengutronix.de>
References: <20190313094202.14901-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/15] i2c: i.MX: Add layerscape support
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/busses/Kconfig   | 2 +-
 drivers/i2c/busses/i2c-imx.c | 4 +++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/Kconfig b/drivers/i2c/busses/Kconfig
index a25a871809..6d874357b7 100644
--- a/drivers/i2c/busses/Kconfig
+++ b/drivers/i2c/busses/Kconfig
@@ -18,7 +18,7 @@ config I2C_AT91
 
 config I2C_IMX
 	bool "MPC85xx/MPC5200/i.MX I2C Master driver"
-	depends on (ARCH_IMX && !ARCH_IMX1) || ARCH_MPC85XX || ARCH_MPC5200
+	depends on (ARCH_IMX && !ARCH_IMX1) || ARCH_MPC85XX || ARCH_MPC5200 || ARCH_LAYERSCAPE
 	help
 	  If you say yes to this option, support will be included for many
 	  built-in I2C master controllers found in Freescale SoCs. This is true
diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
index 4c7346063c..6911f803b2 100644
--- a/drivers/i2c/busses/i2c-imx.c
+++ b/drivers/i2c/busses/i2c-imx.c
@@ -47,7 +47,6 @@
 
 #include <io.h>
 #include <i2c/i2c.h>
-#include <mach/clock.h>
 
 #include "i2c-imx.h"
 
@@ -276,6 +275,9 @@ static void i2c_fsl_stop(struct i2c_adapter *adapter)
 }
 
 #ifdef CONFIG_PPC
+
+#include <mach/clock.h>
+
 static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
 				    unsigned int rate)
 {
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
