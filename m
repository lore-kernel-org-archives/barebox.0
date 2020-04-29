Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTkty-0000Bv-56
 for barebox@lists.infradead.org; Wed, 29 Apr 2020 11:29:19 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 29 Apr 2020 13:29:14 +0200
Message-Id: <20200429112914.5751-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: Phytec phyCORE i.MX6: delete wrong memory node
To: Barebox List <barebox@lists.infradead.org>
Cc: Christian Hemp <christian.hemp@gmail.com>, Stefan Riedmueller <s.riedmueller@phytec.de>

The phyCORE i.MX6 has two memory nodes in the device tree. /memory comes
from the barebox dtsi file and contains dummy values. This is
unnecessary, barebox will create a memory node when booting the kernel.
The other one comes from the Kernel dtsi and causes more harm. The
memory in the node has a size of 2GiB. Not all boards have so much
memory, since 8226f7f909 ("of: base: parse all available memory nodes")
this node is no longer ignored and now all boards are assumed to have
2GiB of memory. Remove the node using /delete-node/

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 841ad653b2..3cb8b3782a 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -12,10 +12,7 @@
 #include <arm/imx6qdl-phytec-pfla02.dtsi>
 
 / {
-	memory {
-		/* let barebox fill the memory node */
-		reg = <0 0>;
-	};
+	/delete-node/ memory@10000000;
 
 	chosen {
 		environment-nand {
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
