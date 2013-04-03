Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNIns-0007kG-IN
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 08:12:22 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  3 Apr 2013 10:12:14 +0200
Message-Id: <1364976736-23869-6-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1364976736-23869-1-git-send-email-mkl@pengutronix.de>
References: <1364976736-23869-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 5/7] bootsource: add definition for i2c-eeprom, spi-nor,
 spi-eeprom and usb
To: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/bootsource.c  | 4 ++++
 include/bootsource.h | 4 ++++
 2 files changed, 8 insertions(+)

diff --git a/common/bootsource.c b/common/bootsource.c
index 7367215..7f3d51f 100644
--- a/common/bootsource.c
+++ b/common/bootsource.c
@@ -27,10 +27,14 @@ static const char *bootsource_str[] = {
 	[BOOTSOURCE_NOR] = "nor",
 	[BOOTSOURCE_MMC] = "mmc",
 	[BOOTSOURCE_I2C] = "i2c",
+	[BOOTSOURCE_I2C_EEPROM] = "i2c-eeprom",
 	[BOOTSOURCE_SPI] = "spi",
+	[BOOTSOURCE_SPI_EEPROM] = "spi-eeprom",
+	[BOOTSOURCE_SPI_NOR] = "spi-nor",
 	[BOOTSOURCE_SERIAL] = "serial",
 	[BOOTSOURCE_ONENAND] = "onenand",
 	[BOOTSOURCE_HD] = "harddisk",
+	[BOOTSOURCE_USB] = "usb",
 };
 
 static enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
diff --git a/include/bootsource.h b/include/bootsource.h
index 44b69b1..4bca9b9 100644
--- a/include/bootsource.h
+++ b/include/bootsource.h
@@ -7,10 +7,14 @@ enum bootsource {
 	BOOTSOURCE_NOR,
 	BOOTSOURCE_MMC,
 	BOOTSOURCE_I2C,
+	BOOTSOURCE_I2C_EEPROM,
 	BOOTSOURCE_SPI,
+	BOOTSOURCE_SPI_EEPROM,
+	BOOTSOURCE_SPI_NOR,
 	BOOTSOURCE_SERIAL,
 	BOOTSOURCE_ONENAND,
 	BOOTSOURCE_HD,
+	BOOTSOURCE_USB,
 };
 
 #define BOOTSOURCE_INSTANCE_UNKNOWN	-1
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
