Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wuyah-00057G-Rt
 for barebox@lists.infradead.org; Thu, 12 Jun 2014 06:34:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Jun 2014 08:34:03 +0200
Message-Id: <1402554843-21562-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Phytec-phyCARD-imx27: Add missing compatible check
To: barebox@lists.infradead.org

Only run pca100 code when it's actually a pca100. While at it
consolidate two initcalls.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/phytec-phycard-imx27/pca100.c | 16 ++++++----------
 1 file changed, 6 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/phytec-phycard-imx27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
index 4b355bc..895a3a3 100644
--- a/arch/arm/boards/phytec-phycard-imx27/pca100.c
+++ b/arch/arm/boards/phytec-phycard-imx27/pca100.c
@@ -119,6 +119,12 @@ static int pca100_devices_init(void)
 		PE25_PF_USBOTG_DATA7,
 	};
 
+	if (!of_machine_is_compatible("phytec,imx27-pca100"))
+		return 0;
+
+	barebox_set_model("Phytec phyCARD-i.MX27");
+	barebox_set_hostname("phycard-imx27");
+
 	pca100_usb_init();
 
 	/* initizalize gpios */
@@ -137,13 +143,3 @@ static int pca100_devices_init(void)
 }
 
 device_initcall(pca100_devices_init);
-
-static int pca100_console_init(void)
-{
-	barebox_set_model("Phytec phyCARD-i.MX27");
-	barebox_set_hostname("phycard-imx27");
-
-	return 0;
-}
-
-console_initcall(pca100_console_init);
-- 
2.0.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
