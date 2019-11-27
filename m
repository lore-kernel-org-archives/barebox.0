Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvQ4-0006zQ-Ip
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:23:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:23:32 +0100
Message-Id: <20191127112337.18719-2-s.hauer@pengutronix.de>
In-Reply-To: <20191127112337.18719-1-s.hauer@pengutronix.de>
References: <20191127112337.18719-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ARM Layerscape: ls1046ardb: Fix SD partitions
To: Barebox List <barebox@lists.infradead.org>

barebox and its environment should be in the first MiB of the SD card.
With this we won't overwrite any partitions from the partition table.
While at it add a barebox partition for a future update handler.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/fsl-ls1046a-rdb.dts | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/fsl-ls1046a-rdb.dts b/arch/arm/dts/fsl-ls1046a-rdb.dts
index 842d684588..9a2794c910 100644
--- a/arch/arm/dts/fsl-ls1046a-rdb.dts
+++ b/arch/arm/dts/fsl-ls1046a-rdb.dts
@@ -23,9 +23,14 @@
 	#address-cells = <1>;
 	#size-cells = <1>;
 
-	environment_sd: partition@200000 {
+	partition@1000 {
+		label = "barebox";
+		reg = <0x1000 0xdf000>;
+	};
+
+	environment_sd: partition@e0000 {
 		label = "barebox-environment";
-		reg = <0x200000 0x20000>;
+		reg = <0xe0000 0x20000>;
 	};
 };
 
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
