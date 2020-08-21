Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k90zR-0001lp-Bc
 for barebox@lists.infradead.org; Fri, 21 Aug 2020 06:57:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 21 Aug 2020 08:57:27 +0200
Message-Id: <20200821065727.12533-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: imx_v8_defconfig: Enabel realtek phy
To: Barebox List <barebox@lists.infradead.org>

Needed by the i.MX8MP-EVK board to propertly initialize the ethernet
phy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/imx_v8_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 7e3bfadd9e..268770ec3f 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -89,6 +89,7 @@ CONFIG_SERIAL_DEV_BUS=y
 CONFIG_DRIVER_NET_FEC_IMX=y
 CONFIG_DP83867_PHY=y
 CONFIG_MICREL_PHY=y
+CONFIG_REALTEK_PHY=y
 CONFIG_NET_DSA_MV88E6XXX=y
 CONFIG_MDIO_BITBANG=y
 CONFIG_MDIO_GPIO=y
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
