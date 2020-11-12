Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp57.i.mail.ru ([217.69.128.37])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kd9kZ-0001vz-GZ
 for barebox@lists.infradead.org; Thu, 12 Nov 2020 10:22:45 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Thu, 12 Nov 2020 13:22:31 +0300
Message-Id: <20201112102231.12580-2-shc_work@mail.ru>
In-Reply-To: <20201112102231.12580-1-shc_work@mail.ru>
References: <20201112102231.12580-1-shc_work@mail.ru>
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
Subject: [PATCH 2/2] ARM: dts: imx6qdl: pfla02: Fix NAND offsets for partitions
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/dts/imx6qdl-phytec-pfla02.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
index 3eb510d43..2e4d4ed34 100644
--- a/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
+++ b/arch/arm/dts/imx6qdl-phytec-pfla02.dtsi
@@ -96,12 +96,12 @@
 			reg = <0x0 0x1000000>;
 		};
 
-		partition@400000 {
+		partition@1000000 {
 			label = "barebox-environment";
 			reg = <0x1000000 0x100000>;
 		};
 
-		partition@500000 {
+		partition@1100000 {
 			label = "root";
 			reg = <0x1100000 0x0>;
 		};
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
