Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vi1eur05olkn2034.outbound.protection.outlook.com
 ([40.92.90.34] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJv5i-0008P4-KS
 for barebox@lists.infradead.org; Thu, 02 Apr 2020 08:20:47 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Thu, 2 Apr 2020 08:20:44 +0000
Message-ID: <DB7PR02MB4332068A12A06E6B1C4485BEABC60@DB7PR02MB4332.eurprd02.prod.outlook.com>
Content-Language: de-DE
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
Subject: [PATCH 4/7] Zedboard fix GEM0 MIO Settings
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

fixed GEM0 MIO Settings according to what Vivado says

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index 912eb11fd..6f05d934c 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -258,7 +258,7 @@ static void avnet_zedboard_ps7_init(void)
 
 	/* GEM0 */
 	writel(0x00000001, 0xf8000138);
-	writel(0x00500801, 0xf8000140);
+	writel(0x00100801, 0xf8000140);
 	writel(0x00000302, 0xf8000740);
 	writel(0x00000302, 0xf8000744);
 	writel(0x00000302, 0xf8000748);
@@ -271,8 +271,8 @@ static void avnet_zedboard_ps7_init(void)
 	writel(0x00001303, 0xf8000764);
 	writel(0x00001303, 0xf8000768);
 	writel(0x00001303, 0xf800076C);
-	writel(0x00001280, 0xf80007D0);
-	writel(0x00001280, 0xf80007D4);
+	writel(0x00000280, 0xf80007D0);
+	writel(0x00000280, 0xf80007D4);
 
 	writel(0x00000001, 0xf8000B00);
 
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
