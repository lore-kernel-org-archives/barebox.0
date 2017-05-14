Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dA13W-0001Qp-LU
 for barebox@lists.infradead.org; Sun, 14 May 2017 21:28:00 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 14 May 2017 23:26:25 +0200
Message-Id: <1494797186-3338-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH 1/2] ARM: i.MX50: Amazon Kindle: Model EY21 compatibility check
To: barebox@lists.infradead.org
Cc: Alexander Kurz <akurz@blala.de>

Extend the compatibility check for i.MX50 based kindles also on model EY21.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/kindle-mx50/board.c | 3 ++-
 arch/arm/dts/imx50-kindle-ey21.dts  | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/kindle-mx50/board.c b/arch/arm/boards/kindle-mx50/board.c
index 7bd4f91..089dd8e 100644
--- a/arch/arm/boards/kindle-mx50/board.c
+++ b/arch/arm/boards/kindle-mx50/board.c
@@ -123,7 +123,8 @@ static void kindle_rev_init(void)
 static int is_mx50_kindle(void)
 {
 	return of_machine_is_compatible("amazon,kindle-d01100") ||
-		of_machine_is_compatible("amazon,kindle-d01200");
+		of_machine_is_compatible("amazon,kindle-d01200") ||
+		of_machine_is_compatible("amazon,kindle-ey21");
 }
 
 static int kindle_mx50_late_init(void)
diff --git a/arch/arm/dts/imx50-kindle-ey21.dts b/arch/arm/dts/imx50-kindle-ey21.dts
index 1b8f2ad..0be7001 100644
--- a/arch/arm/dts/imx50-kindle-ey21.dts
+++ b/arch/arm/dts/imx50-kindle-ey21.dts
@@ -17,7 +17,7 @@
 
 / {
 	model = "Amazon Kindle EY21";
-	compatible = "fsl,imx50";
+	compatible = "amazon,kindle-ey21", "fsl,imx50";
 
 	memory {
 		device_type = "memory";
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
