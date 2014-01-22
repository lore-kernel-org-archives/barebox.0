Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W5rr0-0005j4-NT
 for barebox@lists.infradead.org; Wed, 22 Jan 2014 07:04:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 22 Jan 2014 08:03:38 +0100
Message-Id: <1390374218-30015-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX6 Sabrelite: add missing of_machine_is_compatible
 checks
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/freescale-mx6-sabrelite/board.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boards/freescale-mx6-sabrelite/board.c b/arch/arm/boards/freescale-mx6-sabrelite/board.c
index badfd9e..5d5e326 100644
--- a/arch/arm/boards/freescale-mx6-sabrelite/board.c
+++ b/arch/arm/boards/freescale-mx6-sabrelite/board.c
@@ -51,6 +51,10 @@ static iomux_v3_cfg_t sabrelite_enet_gpio_pads[] = {
 
 static int sabrelite_mem_init(void)
 {
+	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
+	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
+		return 0;
+
 	arm_add_mem_device("ram0", 0x10000000, SZ_1G);
 
 	return 0;
@@ -76,6 +80,10 @@ static int ksz9021rn_phy_fixup(struct phy_device *dev)
 
 static int sabrelite_ksz9021rn_setup(void)
 {
+	if (!of_machine_is_compatible("fsl,imx6q-sabrelite") &&
+	    !of_machine_is_compatible("fsl,imx6dl-sabrelite"))
+		return 0;
+
 	mxc_iomux_v3_setup_multiple_pads(sabrelite_enet_gpio_pads,
 			ARRAY_SIZE(sabrelite_enet_gpio_pads));
 
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
