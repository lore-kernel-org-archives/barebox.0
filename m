Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.data-modul.de ([212.184.205.171]
 helo=mailgw1.data-modul.com)
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XU8o6-0004GB-U5
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 06:33:39 +0000
From: Silvio Fricke <silvio.fricke@gmail.com>
Date: Wed, 17 Sep 2014 08:33:00 +0200
Message-Id: <28681846d4cafdd034bcbb1b358b4e8c8501abb1.1410935206.git.silvio.fricke@gmail.com>
In-Reply-To: <cover.1410935206.git.silvio.fricke@gmail.com>
References: <cover.1410935206.git.silvio.fricke@gmail.com>
In-Reply-To: <cover.1410935206.git.silvio.fricke@gmail.com>
References: <0d3183ff039cb1eccb72299690544cb34299bf4e.1410868272.git.silvio.fricke@gmail.com>
 <cover.1410935206.git.silvio.fricke@gmail.com>
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
Subject: [PATCH] ARM: i.MX: edmqmx6: free phy-reset gpio pin
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Silvio Fricke <silvio.fricke@gmail.com>

Since 93a6c6a808("dts: update to v3.17-rc2") we have a correct gpio
configuration. This results in a double gpio request what receipted in a
error message like this one:

	gpiolib: _gpio_request: gpio-25 (phy-reset) status -16

Now with this patch the problem is gone.

Signed-off-by: Silvio Fricke <silvio.fricke@gmail.com>
---
 arch/arm/boards/datamodul-edm-qmx6/board.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/datamodul-edm-qmx6/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
index e388e28..25f45df 100644
--- a/arch/arm/boards/datamodul-edm-qmx6/board.c
+++ b/arch/arm/boards/datamodul-edm-qmx6/board.c
@@ -49,6 +49,7 @@
 #define RQ7_GPIO_ENET_MODE2	IMX_GPIO_NR(6, 28)
 #define RQ7_GPIO_ENET_MODE3	IMX_GPIO_NR(6, 29)
 #define RQ7_GPIO_ENET_EN_CLK125	IMX_GPIO_NR(6, 24)
+#define RQ7_GPIO_ENET_RESET     IMX_GPIO_NR(1, 25)
 
 static iomux_v3_cfg_t realq7_pads_gpio[] = {
 	MX6Q_PAD_RGMII_RXC__GPIO_6_30,
@@ -57,6 +58,7 @@ static iomux_v3_cfg_t realq7_pads_gpio[] = {
 	MX6Q_PAD_RGMII_RD2__GPIO_6_28,
 	MX6Q_PAD_RGMII_RD3__GPIO_6_29,
 	MX6Q_PAD_RGMII_RX_CTL__GPIO_6_24,
+	MX6Q_PAD_ENET_CRS_DV__GPIO_1_25,
 };
 
 static int ksz9031rn_phy_fixup(struct phy_device *dev)
@@ -85,12 +87,14 @@ static int realq7_enet_init(void)
 	gpio_direction_output(RQ7_GPIO_ENET_MODE3, 1);
 	gpio_direction_output(RQ7_GPIO_ENET_EN_CLK125, 1);
 
-	gpio_direction_output(25, 0);
+	gpio_direction_output(RQ7_GPIO_ENET_RESET, 0);
 	mdelay(50);
 
-	gpio_direction_output(25, 1);
+	gpio_direction_output(RQ7_GPIO_ENET_RESET, 1);
 	mdelay(50);
 
+	gpio_free(RQ7_GPIO_ENET_RESET);
+
 	phy_register_fixup_for_uid(PHY_ID_KSZ9031, MICREL_PHY_ID_MASK,
 					   ksz9031rn_phy_fixup);
 
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
