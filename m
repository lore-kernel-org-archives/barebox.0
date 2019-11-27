Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvQ4-0006zS-KK
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:23:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:23:35 +0100
Message-Id: <20191127112337.18719-5-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/6] ARM Layerscape: ls1046ardb: Enable PCIe support
To: Barebox List <barebox@lists.infradead.org>

Enable the PCIe nodes on the ls1046ardb board. U-Boot registers the PCIe
devices based on the SERDES configuration, but for us it's easier to
just enable them in the device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/fsl-ls1046a-rdb.dts | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/dts/fsl-ls1046a-rdb.dts b/arch/arm/dts/fsl-ls1046a-rdb.dts
index 3586e08b04..ee4ddf0f2c 100644
--- a/arch/arm/dts/fsl-ls1046a-rdb.dts
+++ b/arch/arm/dts/fsl-ls1046a-rdb.dts
@@ -135,3 +135,17 @@
 &usb2 {
 	dr_mode = "host";
 };
+
+&soc {
+	pcie1: pcie@3400000 {
+		status = "okay";
+	};
+
+	pcie2: pcie@3500000 {
+		status = "okay";
+	};
+
+	pcie3: pcie@3600000 {
+		status = "okay";
+	};
+};
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
