Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs10.datenmanufaktur-hosting.net ([213.160.73.65]
 helo=vs81.iboxed.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h5Ts2-000325-7G
 for barebox@lists.infradead.org; Sun, 17 Mar 2019 11:22:27 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 17 Mar 2019 11:22:34 +0000
Message-Id: <20190317112234.24126-2-user@vserver64>
In-Reply-To: <20190317112234.24126-1-user@vserver64>
References: <20190317112234.24126-1-user@vserver64>
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
Subject: [PATCH 2/2] ARM Kindle3: switch on pull-ups for fiveway device
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Alexander Kurz <akurz@blala.de>

From: Alexander Kurz <akurz@blala.de>

Without the pullups enabled, the GPIO change after a button release
took some hundered milliseconds.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 arch/arm/boards/kindle3/kindle3.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boards/kindle3/kindle3.c b/arch/arm/boards/kindle3/kindle3.c
index e06b3d70c..95ae49cb0 100644
--- a/arch/arm/boards/kindle3/kindle3.c
+++ b/arch/arm/boards/kindle3/kindle3.c
@@ -152,6 +152,7 @@ static int kindle3_devices_init(void)
 }
 device_initcall(kindle3_devices_init);
 
+#define FIVEWAY_PAD_CTL (PAD_CTL_PUS_100K_UP | PAD_CTL_HYS | PAD_CTL_DVS)
 static iomux_v3_cfg_t kindle3_pads[] = {
 	/* UART1 */
 	MX35_PAD_RXD1__UART1_RXD_MUX,
@@ -183,12 +184,11 @@ static iomux_v3_cfg_t kindle3_pads[] = {
 	MX35_PAD_CSPI1_SPI_RDY__CSPI1_RDY,
 
 	/* fiveway device: up, down, left, right, select */
-	MX35_PAD_ATA_DATA14__GPIO2_27,
-	MX35_PAD_ATA_DATA15__GPIO2_28,
-	MX35_PAD_TX5_RX0__GPIO1_10,
-	MX35_PAD_ATA_BUFF_EN__GPIO2_30,
-	IOMUX_PAD(0x728, 0x2c4, 5, 0x8c8, 1,
-		  PAD_CTL_PUS_100K_UP | PAD_CTL_HYS | PAD_CTL_DVS),
+	IOMUX_PAD(0x718, 0x2b4, 5, 0x8b4, 1, FIVEWAY_PAD_CTL),
+	IOMUX_PAD(0x71c, 0x2b8, 5, 0x8b8, 1, FIVEWAY_PAD_CTL),
+	IOMUX_PAD(0x59c, 0x158, 5, 0x830, 0, FIVEWAY_PAD_CTL),
+	IOMUX_PAD(0x724, 0x2c0, 5, 0x8c4, 1, FIVEWAY_PAD_CTL),
+	IOMUX_PAD(0x728, 0x2c4, 5, 0x8c8, 1, FIVEWAY_PAD_CTL),
 
 	/* Volume keys: up, down */
 	MX35_PAD_SCKR__GPIO1_4,
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
