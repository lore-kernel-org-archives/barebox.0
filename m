Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ed1-x542.google.com ([2a00:1450:4864:20::542])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jwUQm-0006vM-WA
 for barebox@lists.infradead.org; Fri, 17 Jul 2020 17:45:57 +0000
Received: by mail-ed1-x542.google.com with SMTP id a1so8327327edt.10
 for <barebox@lists.infradead.org>; Fri, 17 Jul 2020 10:45:55 -0700 (PDT)
From: yegorslists@googlemail.com
Date: Fri, 17 Jul 2020 19:45:45 +0200
Message-Id: <20200717174545.10200-1-yegorslists@googlemail.com>
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
Subject: [PATCH v2] arm: baltos: add environment node
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Use the fourth SPL partition in NAND for environment storage.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
Changes:
   v2: use the fourth SPL partition and a partition phandle
 
 arch/arm/dts/am335x-baltos-minimal.dts | 11 ++++++++---
 1 file changed, 8 insertions(+), 3 deletions(-)

diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
index 137c177b2..a57bb6c80 100644
--- a/arch/arm/dts/am335x-baltos-minimal.dts
+++ b/arch/arm/dts/am335x-baltos-minimal.dts
@@ -22,6 +22,11 @@
 
 	chosen {
 		stdout-path = &uart0;
+
+		environment-nand {
+			compatible = "barebox,environment";
+			device-path = &environment_nand;
+		};
 	};
 
 	cpus {
@@ -179,7 +184,7 @@
 	ranges = <0 0 0x08000000 0x10000000>;	/* CS0: NAND */
 	status = "okay";
 
-	nand@0,0 {
+	nand: nand@0,0 {
 		reg = <0 0 0>; /* CS0, offset 0 */
 		nand-bus-width = <8>;
 		ti,nand-ecc-opt = "bch8";
@@ -226,8 +231,8 @@
 		       label = "SPL.backup2";
 		       reg = <0x40000 0x20000>;
 		};
-		boot@60000 {
-		       label = "SPL.backup3";
+		environment_nand: boot@60000 {
+		       label = "bareboxenv";
 		       reg = <0x60000 0x20000>;
 		};
 		boot@80000 {
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
