Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp5.mail.ru ([94.100.176.132])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SsRdi-0005eg-O1
 for barebox@lists.infradead.org; Sat, 21 Jul 2012 04:50:04 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sat, 21 Jul 2012 08:50:08 +0400
Message-Id: <1342846209-10461-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1342846209-10461-1-git-send-email-shc_work@mail.ru>
References: <1342846209-10461-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] mc13xxx: Hide struct mc13xxx from board support code
To: barebox@lists.infradead.org

Board support units should use only provided functions.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/mfd/mc13xxx.c |   13 +++++++++++++
 include/mfd/mc13xxx.h |   13 +------------
 2 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/drivers/mfd/mc13xxx.c b/drivers/mfd/mc13xxx.c
index 2934e9d..b1417c8 100644
--- a/drivers/mfd/mc13xxx.c
+++ b/drivers/mfd/mc13xxx.c
@@ -32,6 +32,19 @@
 
 #define DRIVERNAME		"mc13xxx"
 
+enum mc13xxx_mode {
+	MC13XXX_MODE_I2C,
+	MC13XXX_MODE_SPI,
+};
+
+struct mc13xxx {
+	struct cdev		cdev;
+	struct i2c_client	*client;
+	struct spi_device	*spi;
+	enum mc13xxx_mode	mode;
+	int			revision;
+};
+
 #define to_mc13xxx(a)		container_of(a, struct mc13xxx, cdev)
 
 static struct mc13xxx *mc_dev;
diff --git a/include/mfd/mc13xxx.h b/include/mfd/mc13xxx.h
index 632c9fb..f4e3302 100644
--- a/include/mfd/mc13xxx.h
+++ b/include/mfd/mc13xxx.h
@@ -150,18 +150,7 @@
 #define MC13783_SW1B_SOFTSTART		(1 << 17)
 #define MC13783_SW_PLL_FACTOR(x)	(((x) - 28) << 19)
 
-enum mc13xxx_mode {
-	MC13XXX_MODE_I2C,
-	MC13XXX_MODE_SPI,
-};
-
-struct mc13xxx {
-	struct cdev		cdev;
-	struct i2c_client	*client;
-	struct spi_device	*spi;
-	enum mc13xxx_mode	mode;
-	int			revision;
-};
+struct mc13xxx;
 
 #ifdef CONFIG_MFD_MC13XXX
 extern struct mc13xxx *mc13xxx_get(void);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
