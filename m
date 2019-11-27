Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvQL-0007I9-M2
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:23:59 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:23:34 +0100
Message-Id: <20191127112337.18719-4-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/6] ARM Layerscape: ls1046ardb: Fix SPI NOR flash compatibles
To: Barebox List <barebox@lists.infradead.org>

The upstream dts file has a "spansion,m25p80" as compatible string
for the SPI NOR flashes. This doesn't match the real chip which
identifies itself as "s25fl512s". The driver warns about this. Change
the compatible to "jedec,spi-nor" to avoid such issues.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/dts/fsl-ls1046a-rdb.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/dts/fsl-ls1046a-rdb.dts b/arch/arm/dts/fsl-ls1046a-rdb.dts
index 9a2794c910..3586e08b04 100644
--- a/arch/arm/dts/fsl-ls1046a-rdb.dts
+++ b/arch/arm/dts/fsl-ls1046a-rdb.dts
@@ -114,6 +114,14 @@
 	};
 };
 
+&qflash0 {
+	compatible = "jedec,spi-nor";
+};
+
+&qflash1 {
+	compatible = "jedec,spi-nor";
+};
+
 &usb0 {
 	dr_mode = "host";
 };
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
