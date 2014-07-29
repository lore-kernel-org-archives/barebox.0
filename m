Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x234.google.com ([2a00:1450:4010:c03::234])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XC6oo-0002jY-BZ
 for barebox@lists.infradead.org; Tue, 29 Jul 2014 12:47:50 +0000
Received: by mail-la0-f52.google.com with SMTP id e16so6624239lan.11
 for <barebox@lists.infradead.org>; Tue, 29 Jul 2014 05:47:27 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 29 Jul 2014 16:47:17 +0400
Message-Id: <1406638037-23026-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1406638037-23026-1-git-send-email-antonynpavlov@gmail.com>
References: <1406638037-23026-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH v3 2/2] i2c: busses/Makefile: fix indentation
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/i2c/busses/Makefile | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/Makefile b/drivers/i2c/busses/Makefile
index 4e4f6ba..bbd7fee 100644
--- a/drivers/i2c/busses/Makefile
+++ b/drivers/i2c/busses/Makefile
@@ -1,6 +1,6 @@
 obj-$(CONFIG_I2C_GPIO)		+= i2c-gpio.o
-obj-$(CONFIG_I2C_IMX) += i2c-imx.o
+obj-$(CONFIG_I2C_IMX)		+= i2c-imx.o
 obj-$(CONFIG_I2C_MV64XXX)	+= i2c-mv64xxx.o
-obj-$(CONFIG_I2C_OMAP) += i2c-omap.o
+obj-$(CONFIG_I2C_OMAP)		+= i2c-omap.o
 obj-$(CONFIG_I2C_TEGRA)		+= i2c-tegra.o
 obj-$(CONFIG_I2C_VERSATILE)	+= i2c-versatile.o
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
