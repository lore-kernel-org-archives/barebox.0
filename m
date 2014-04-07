Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp50.i.mail.ru ([94.100.177.110])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXA4N-0007ez-EB
 for barebox@lists.infradead.org; Mon, 07 Apr 2014 13:58:40 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Mon,  7 Apr 2014 17:58:14 +0400
Message-Id: <1396879094-25026-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] Documentation: Update binding doc for i.MX IIM
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 Documentation/devicetree/bindings/misc/fsl,imx-iim.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-iim.txt b/Documentation/devicetree/bindings/misc/fsl,imx-iim.txt
index ed3efcc..9759210 100644
--- a/Documentation/devicetree/bindings/misc/fsl,imx-iim.txt
+++ b/Documentation/devicetree/bindings/misc/fsl,imx-iim.txt
@@ -2,7 +2,7 @@ Freescale i.MX IIM (Ic Identification Module)
 
 Required properties:
 
-- compatible: fsl,imx-iim
+- compatible: fsl,imx27-iim
 - reg: physical register base and size
 
 Optional properties:
@@ -14,7 +14,7 @@ Optional properties:
 Example:
 
 iim: iim@83f98000 {
-	compatible = "fsl,imx51-iim", "fsl,imx-iim";
+	compatible = "fsl,imx51-iim", "fsl,imx27-iim";
 	reg = <0x83f98000 0x4000>;
 	barebox,provide-mac-address = <&fec 1 9>;
 };
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
