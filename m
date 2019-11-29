Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahzA-0006pK-CK
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:17 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz9-0006u0-0S
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:07 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:44 +0100
Message-Id: <20191129151505.23946-19-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 18/39] i2c: always walk down into i2c/busses Makefile
To: barebox@lists.infradead.org

Otherwise CONFIG_I2C_IMX_EARLY won't be built if !CONFIG_I2C even
though it has no direct dependency on the i2c core.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 drivers/Makefile     | 2 +-
 drivers/i2c/Makefile | 3 ++-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/Makefile b/drivers/Makefile
index b0d3a3f2006d..08a17ff459d3 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -8,7 +8,7 @@ obj-y	+= mtd/
 obj-y	+= usb/
 obj-$(CONFIG_DISK) += ata/
 obj-$(CONFIG_SPI) += spi/
-obj-$(CONFIG_I2C) += i2c/
+obj-y += i2c/
 obj-y += mci/
 obj-$(CONFIG_VIDEO) += video/
 obj-y	+= clk/
diff --git a/drivers/i2c/Makefile b/drivers/i2c/Makefile
index c93653414eb6..b887e7557373 100644
--- a/drivers/i2c/Makefile
+++ b/drivers/i2c/Makefile
@@ -1,2 +1,3 @@
-obj-$(CONFIG_I2C) += i2c.o i2c-smbus.o busses/ algos/ muxes/
+obj-y += busses/
+obj-$(CONFIG_I2C) += i2c.o i2c-smbus.o algos/ muxes/
 obj-$(CONFIG_I2C_MUX) += i2c-mux.o
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
