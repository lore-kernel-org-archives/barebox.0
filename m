Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aYgMR-0006VZ-0t
 for barebox@lists.infradead.org; Wed, 24 Feb 2016 20:48:41 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Wed, 24 Feb 2016 21:47:23 +0100
Message-Id: <1456346843-6837-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] Kconfig: avoid tabs in help text
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Tabs in kconfig help text will create unwanted indention artefacs when
the help text is scrolled horizontally. Replacing tabs with spaces.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/mach-imx/Kconfig |  4 ++--
 drivers/gpio/Kconfig      | 14 +++++++-------
 2 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index c631c33..33ae145 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -698,8 +698,8 @@ config IMX_OCOTP_WRITE
 	  MAC to 12:34:56:78:9A:BC (2 words with address 0x22 (OCOTP_MAC0) and
 	  address 0x23 (OCOTP_MAC1)). To calculate the file offset multiply
 	  the value of the address by 4.
-		mw -l -d /dev/imx-ocotp 0x8C 0x00001234
-		mw -l -d /dev/imx-ocotp 0x88 0x56789ABC
+	    mw -l -d /dev/imx-ocotp 0x8C 0x00001234
+	    mw -l -d /dev/imx-ocotp 0x88 0x56789ABC
 
 config HAB
 	bool
diff --git a/drivers/gpio/Kconfig b/drivers/gpio/Kconfig
index d839d7a..ab919c9 100644
--- a/drivers/gpio/Kconfig
+++ b/drivers/gpio/Kconfig
@@ -87,17 +87,17 @@ config GPIO_PCA953X
 	  SMBus I/O expanders, made mostly by NXP or TI.  Compatible
 	  models include:
 
-	  4 bits:	pca9536, pca9537
+	  4 bits:  pca9536, pca9537
 
-	  8 bits:	max7310, max7315, pca6107, pca9534, pca9538, pca9554,
-			pca9556, pca9557, pca9574, tca6408, xra1202
+	  8 bits:  max7310, max7315, pca6107, pca9534, pca9538, pca9554,
+	           pca9556, pca9557, pca9574, tca6408, xra1202
 
-	  16 bits:	max7312, max7313, pca9535, pca9539, pca9555, pca9575,
-			tca6416
+	  16 bits: max7312, max7313, pca9535, pca9539, pca9555, pca9575,
+	           tca6416
 
-	  24 bits:	tca6424
+	  24 bits: tca6424
 
-	  40 bits:	pca9505, pca9698
+	  40 bits: pca9505, pca9698
 
 config GPIO_PL061
 	bool "PrimeCell PL061 GPIO support"
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
