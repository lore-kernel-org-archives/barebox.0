Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 15.mo4.mail-out.ovh.net ([91.121.62.11]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QmgHQ-0003zy-EE
	for barebox@lists.infradead.org; Fri, 29 Jul 2011 06:10:44 +0000
Received: from mail182.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id EE19EFFA2E6
	for <barebox@lists.infradead.org>;
	Fri, 29 Jul 2011 08:11:25 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 29 Jul 2011 07:52:53 +0200
Message-Id: <1311918777-26719-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311918777-26719-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/7] dm9000: replace DM9000_WIDTH_8/16/32 by
	IORESOURCE_MEM_8/16/32BIT
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/at91sam9261ek/init.c |    2 +-
 arch/arm/boards/mini2440/mini2440.c  |    2 +-
 arch/arm/boards/pm9261/init.c        |    2 +-
 arch/arm/boards/scb9328/scb9328.c    |    2 +-
 drivers/net/dm9000.c                 |   12 ++++++------
 include/dm9000.h                     |    4 ----
 6 files changed, 10 insertions(+), 14 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/init.c b/arch/arm/boards/at91sam9261ek/init.c
index 4009523..812b399 100644
--- a/arch/arm/boards/at91sam9261ek/init.c
+++ b/arch/arm/boards/at91sam9261ek/init.c
@@ -89,7 +89,7 @@ static void ek_add_device_nand(void)
  */
 #if defined(CONFIG_DRIVER_NET_DM9000)
 static struct dm9000_platform_data dm9000_data = {
-	.buswidth	= DM9000_WIDTH_16,
+	.buswidth	= IORESOURCE_MEM_16BIT,
 	.srom		= 0,
 };
 
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index 2d27b00..634e035 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -63,7 +63,7 @@ static struct device_d nand_dev = {
  * Area 2: Offset 0x304...0x307
  */
 static struct dm9000_platform_data dm9000_data = {
-	.buswidth = DM9000_WIDTH_16,
+	.buswidth = IORESOURCE_MEM_16BIT,
 	.srom     = 1,
 };
 
diff --git a/arch/arm/boards/pm9261/init.c b/arch/arm/boards/pm9261/init.c
index 1059aec..fa21e24 100644
--- a/arch/arm/boards/pm9261/init.c
+++ b/arch/arm/boards/pm9261/init.c
@@ -89,7 +89,7 @@ static void pm_add_device_nand(void)
  */
 #if defined(CONFIG_DRIVER_NET_DM9000)
 static struct dm9000_platform_data dm9000_data = {
-	.buswidth	= DM9000_WIDTH_16,
+	.buswidth	= IORESOURCE_MEM_16BIT,
 	.srom		= 1,
 };
 
diff --git a/arch/arm/boards/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
index d49eaff..47aa8ce 100644
--- a/arch/arm/boards/scb9328/scb9328.c
+++ b/arch/arm/boards/scb9328/scb9328.c
@@ -34,7 +34,7 @@
 #include <led.h>
 
 static struct dm9000_platform_data dm9000_data = {
-	.buswidth = DM9000_WIDTH_16,
+	.buswidth = IORESOURCE_MEM_16BIT,
 	.srom     = 1,
 };
 
diff --git a/drivers/net/dm9000.c b/drivers/net/dm9000.c
index b867d21..691d877 100644
--- a/drivers/net/dm9000.c
+++ b/drivers/net/dm9000.c
@@ -294,16 +294,16 @@ static int dm9000_eth_send (struct eth_device *edev,
 	writeb(DM9000_MWCMD, priv->iobase);
 
 	switch (priv->buswidth) {
-	case DM9000_WIDTH_8:
+	case IORESOURCE_MEM_8BIT:
 		for (i = 0; i < length; i++)
 			writeb(data_ptr[i] & 0xff, priv->iodata);
 		break;
-	case DM9000_WIDTH_16:
+	case IORESOURCE_MEM_16BIT:
 		tmplen = (length + 1) / 2;
 		for (i = 0; i < tmplen; i++)
 			writew(((u16 *)data_ptr)[i], priv->iodata);
 		break;
-	case DM9000_WIDTH_32:
+	case IORESOURCE_MEM_32BIT:
 		tmplen = (length + 3) / 4;
 		for (i = 0; i < tmplen; i++)
 			writel(((u32 *) data_ptr)[i], priv->iodata);
@@ -371,20 +371,20 @@ static int dm9000_eth_rx (struct eth_device *edev)
 	/* Move data from DM9000 */
 	/* Read received packet from RX SRAM */
 	switch (priv->buswidth) {
-	case DM9000_WIDTH_8:
+	case IORESOURCE_MEM_8BIT:
 		RxStatus = readb(priv->iodata) + (readb(priv->iodata) << 8);
 		RxLen = readb(priv->iodata) + (readb(priv->iodata) << 8);
 		for (i = 0; i < RxLen; i++)
 			rdptr[i] = readb(priv->iodata);
 		break;
-	case DM9000_WIDTH_16:
+	case IORESOURCE_MEM_16BIT:
 		RxStatus = readw(priv->iodata);
 		RxLen = readw(priv->iodata);
 		tmplen = (RxLen + 1) / 2;
 		for (i = 0; i < tmplen; i++)
 			((u16 *) rdptr)[i] = readw(priv->iodata);
 		break;
-	case DM9000_WIDTH_32:
+	case IORESOURCE_MEM_32BIT:
 		tmpdata = readl(priv->iodata);
 		RxStatus = tmpdata;
 		RxLen = tmpdata >> 16;
diff --git a/include/dm9000.h b/include/dm9000.h
index 0991ab5..c4618f1 100644
--- a/include/dm9000.h
+++ b/include/dm9000.h
@@ -2,10 +2,6 @@
 #ifndef __DM9000_H__
 #define __DM9000_H__
 
-#define DM9000_WIDTH_8		1
-#define DM9000_WIDTH_16		2
-#define DM9000_WIDTH_32		3
-
 struct dm9000_platform_data {
 	int buswidth;
 	int srom;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
