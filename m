Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1juBOe-0004OM-IR
 for barebox@lists.infradead.org; Sat, 11 Jul 2020 09:02:13 +0000
Received: from geraet.fritz.box (i577B6DEB.versanet.de [87.123.109.235])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 4862F1C0008
 for <barebox@lists.infradead.org>; Sat, 11 Jul 2020 09:02:08 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 11 Jul 2020 11:02:02 +0200
Message-Id: <20200711090203.498881-1-ahmad@a3f.at>
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
Subject: [PATCH 1/2] ARM: at91: dts: sama5d27-som1: adapt to upstream
 partition layout
To: barebox@lists.infradead.org

Linux v5.8-rc1 adds partitions to the flash@0 node, which now overlap
with the partitions we define and resulting in errors:

  ERROR: m25p0.barebox: New partition m25p0.barebox conflicts
	with m25p0.at91bootstrap
  ERROR: m25p0.barebox-environment: New partition
  	m25p0.barebox-environment conflicts with m25p0.bootloader

We don't want to reuse those partitions as their name may and probably
will change (they have leading zeroes in the unit address).
We could use the &{/path/to/partition} syntax, but that might be broken
soon as well, as the nodes aren't inside a partitions node with a
"fixed-partitions" compatible.
The busses also don't align with the yaml schema and might be renamed.

Nuke the full flash@0 node and supply ours and avoid these problems.
The offsets of the partitions have been adjusted to coincide with the
upstream offsets for second stage bootloader and environment.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
Hello Sascha,

The brekage doesn't seem to end..
if possible please reorder before v5.8-rc1 dts/ sync.
---
 arch/arm/dts/at91-sama5d27_som1_ek.dts | 28 +++++++++++++++++---------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/arch/arm/dts/at91-sama5d27_som1_ek.dts b/arch/arm/dts/at91-sama5d27_som1_ek.dts
index befee89ad78a..97a326dd2b26 100644
--- a/arch/arm/dts/at91-sama5d27_som1_ek.dts
+++ b/arch/arm/dts/at91-sama5d27_som1_ek.dts
@@ -31,18 +31,28 @@
 };
 
 &qspi1 {
+	/delete-node/ flash@0;
+
 	flash@0 {
-		#address-cells = <1>;
-		#size-cells = <1>;
+		compatible = "jedec,spi-nor";
+		reg = <0>;
+		spi-max-frequency = <80000000>;
+		m25p,fast-read;
 
-		partition@0 {
-			label = "barebox";
-			reg = <0x0 0x80000>;
-		};
+		partitions {
+			compatible = "fixed-partitions";
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			barebox@40000 {
+				label = "barebox";
+				reg = <0x40000 0xc0000>;
+			};
 
-		barebox_env: partition@80000 {
-			label = "barebox-environment";
-			reg = <0x80000 0x80000>;
+			barebox_env: barebox-env@100000 {
+				label = "barebox-environment";
+				reg = <0x100000 0x40000>;
+			};
 		};
 	};
 };
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
