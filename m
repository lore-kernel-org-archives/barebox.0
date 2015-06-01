Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YzOsl-0001Il-Cq
 for barebox@lists.infradead.org; Mon, 01 Jun 2015 12:31:56 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Mon,  1 Jun 2015 14:30:54 +0200
Message-Id: <1433161854-2377-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH] ARM: imx6: correct Hipercam ECSPI1 pinmux
To: barebox@lists.infradead.org

From: Lucas Stach <l.stach@pengutronix.de>

Correct the pinmux configuration for the chip-select GPIOs. This fixes
detection of the first SPI NOR-flash after barebox itself got loaded from
there.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/dts/imx6dl-eltec-hipercam.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/dts/imx6dl-eltec-hipercam.dts b/arch/arm/dts/imx6dl-eltec-hipercam.dts
index 8140c4b..737752f 100644
--- a/arch/arm/dts/imx6dl-eltec-hipercam.dts
+++ b/arch/arm/dts/imx6dl-eltec-hipercam.dts
@@ -226,8 +226,8 @@
 			fsl,pins = <MX6QDL_PAD_EIM_D17__ECSPI1_MISO 0x100b1
 				MX6QDL_PAD_EIM_D16__ECSPI1_SCLK 0x100b1
 				MX6QDL_PAD_EIM_D18__ECSPI1_MOSI 0x100b1
-				MX6QDL_PAD_KEY_ROW1__GPIO4_IO09 0x100b1
-				MX6QDL_PAD_KEY_COL2__GPIO4_IO10 0x100b1
+				MX6QDL_PAD_EIM_EB2__GPIO2_IO30 0x100b1
+				MX6QDL_PAD_EIM_D19__GPIO3_IO19 0x100b1
 			>;
 		};
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
