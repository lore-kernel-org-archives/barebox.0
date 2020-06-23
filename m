Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jnjFA-0003Jy-08
 for barebox@lists.infradead.org; Tue, 23 Jun 2020 13:45:44 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Jun 2020 15:45:34 +0200
Message-Id: <20200623134533.27030-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v2] ARM: dts: vexpress-v2p-ca15: adapt fixed NOR flash
 partition setup
To: barebox@lists.infradead.org
Cc: Roland Hieber <r.hieber@pengutronix.de>, Ahmad Fatoum <a.fatoum@pengutronix.de>

Roland already fixed the vexpress-v2p-ca9:
 > Upstream DTS commit 62a5017bf825c9e4d317 ("ARM: dts: vexpress: specify
 > AFS partition") [1] introduced an empty node at /smb@4000000
 > /motherboard/flash@0,00000000/partitions, which is preferred by the OF
 > partitions parser over the single partition nodes. In the same commit,
 > upstream set the compatible to "arm,arm-firmware-suite", which barebox
 > does not know about. Adapt our fixed partition setup accordingly by
 > wrapping all partitions in an extra "partitions" node with the correct
 > compatible.
 > [1]: https://git.kernel.org/linus/62a5017bf825c9e4d3176eb975a01c329a9f36

Do the same for the vexpress-v2p-ca15. While at it use the new label:
added along with 6940ba22c66a ("dts: update to v5.3-rc1"). This way we
aren't (build-)broken, when the upstream path changes in v5.8-rc1.

Fixes: 6940ba22c66ac1c71350 ("dts: update to v5.3-rc1")
Cc: Roland Hieber <r.hieber@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
 - Fixed other board name (ca9) in commit message

Hello Sascha,

please order this before the v5.8-rc1 dts/ update as otherwise, the
vexpress
configs get build-broken.

Cheers,
Ahmad
---
 arch/arm/dts/vexpress-v2p-ca15.dts | 23 +++++++++++++----------
 1 file changed, 13 insertions(+), 10 deletions(-)

diff --git a/arch/arm/dts/vexpress-v2p-ca15.dts b/arch/arm/dts/vexpress-v2p-ca15.dts
index a4cdc8d1f5f0..69e93ee7b2b3 100644
--- a/arch/arm/dts/vexpress-v2p-ca15.dts
+++ b/arch/arm/dts/vexpress-v2p-ca15.dts
@@ -7,17 +7,20 @@
 	};
 };
 
-&{/bus@8000000/motherboard/flash@0,00000000} {
-	#address-cells = <1>;
-	#size-cells = <1>;
+&nor_flash {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <1>;
+		#size-cells = <1>;
 
-	partition@0 {
-		label = "barebox";
-		reg = <0x0 0x80000>;
-	};
+		partition@0 {
+			label = "barebox";
+			reg = <0x0 0x80000>;
+		};
 
-	barebox_env: partition@80000 {
-		label = "barebox-environment";
-		reg = <0x80000 0x80000>;
+		barebox_env: partition@80000 {
+			label = "barebox-environment";
+			reg = <0x80000 0x80000>;
+		};
 	};
 };
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
