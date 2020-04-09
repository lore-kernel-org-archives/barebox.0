Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-oln040092065040.outbound.protection.outlook.com
 ([40.92.65.40] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMYMU-0006oL-Ko
 for barebox@lists.infradead.org; Thu, 09 Apr 2020 14:41:00 +0000
From: Michael Graichen <michael.graichen@hotmail.com>
Date: Thu, 9 Apr 2020 14:40:55 +0000
Message-ID: <DB7PR02MB4332C8917CE5DF90D5B7BDD0ABC10@DB7PR02MB4332.eurprd02.prod.outlook.com>
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
Subject: [PATCH v2 4/7] fixed-gem0-mio-settings
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

fixed GEM0 MIO Settings according to what Vivado says

Signed-off-by: Michael Graichen <michael.graichen@hotmail.com>
---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

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

--
2.17.1
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
