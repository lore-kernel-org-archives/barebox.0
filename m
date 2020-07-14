Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ej1-x644.google.com ([2a00:1450:4864:20::644])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jvDGH-00048u-6a
 for barebox@lists.infradead.org; Tue, 14 Jul 2020 05:13:50 +0000
Received: by mail-ej1-x644.google.com with SMTP id ga4so20120193ejb.11
 for <barebox@lists.infradead.org>; Mon, 13 Jul 2020 22:13:43 -0700 (PDT)
From: yegorslists@googlemail.com
Date: Tue, 14 Jul 2020 07:13:28 +0200
Message-Id: <20200714051328.17224-1-yegorslists@googlemail.com>
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
Subject: [PATCH] arm: baltos: add environment node
To: barebox@lists.infradead.org

From: Yegor Yefremov <yegorslists@googlemail.com>

Use the second SPL partition in NAND for environment storage.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/dts/am335x-baltos-minimal.dts | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
index 137c177b2..8dfad3eb0 100644
--- a/arch/arm/dts/am335x-baltos-minimal.dts
+++ b/arch/arm/dts/am335x-baltos-minimal.dts
@@ -22,6 +22,11 @@
 
 	chosen {
 		stdout-path = &uart0;
+
+		environment-nand {
+			compatible = "barebox,environment";
+			device-path = &nand, "partname:SPL.backup1";
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
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
