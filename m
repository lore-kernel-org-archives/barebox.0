Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTokn-0005re-TE
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 15:36:07 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Wed, 29 Apr 2020 17:35:59 +0200
Message-Id: <20200429153559.15086-1-rhi@pengutronix.de>
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
Subject: [PATCH] ARM: dts: vexpress-v2p-ca9: adapt fixed NOR flash partition
 setup
To: Barebox Mailing List <barebox@lists.infradead.org>
Cc: Roland Hieber <rhi@pengutronix.de>

Upstream DTS commit 62a5017bf825c9e4d317 ("ARM: dts: vexpress: specify
AFS partition") [1] introduced an empty node at /smb@4000000
/motherboard/flash@0,00000000/partitions, which is preferred by the OF
partitions parser over the single partition nodes. In the same commit,
upstream set the compatible to "arm,arm-firmware-suite", which barebox
does not know about. Adapt our fixed partition setup accordingly by
wrapping all partitions in an extra "partitions" node with the correct
compatible.

[1]: https://git.kernel.org/linus/62a5017bf825c9e4d3176eb975a01c329a9f36

Fixes: 6940ba22c66ac1c71350 ("dts: update to v5.3-rc1")
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 arch/arm/dts/vexpress-v2p-ca9.dts | 26 +++++++++++++++-----------
 1 file changed, 15 insertions(+), 11 deletions(-)

diff --git a/arch/arm/dts/vexpress-v2p-ca9.dts b/arch/arm/dts/vexpress-v2p-ca9.dts
index d0975330f205..b13c114f0cb0 100644
--- a/arch/arm/dts/vexpress-v2p-ca9.dts
+++ b/arch/arm/dts/vexpress-v2p-ca9.dts
@@ -16,19 +16,23 @@ 			flash@0,00000000 {
 				#address-cells = <1>;
 				#size-cells = <1>;
 
-				partition@0 {
-					label = "barebox";
-					reg = <0x0 0x80000>;
-				};
+				partitions {
+					compatible = "fixed-partitions";
 
-				barebox_env: partition@80000 {
-					label = "barebox-environment";
-					reg = <0x80000 0x80000>;
-				};
+					partition@0 {
+						label = "barebox";
+						reg = <0x0 0x80000>;
+					};
+
+					barebox_env: partition@80000 {
+						label = "barebox-environment";
+						reg = <0x80000 0x80000>;
+					};
 
-				state_storage: partition@100000 {
-					label = "barebox-state";
-					reg = <0x100000 0x100000>;
+					state_storage: partition@100000 {
+						label = "barebox-state";
+						reg = <0x100000 0x100000>;
+					};
 				};
 			};
 		};
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
