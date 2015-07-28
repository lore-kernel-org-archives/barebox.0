Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZJz05-0008ND-2l
 for barebox@lists.infradead.org; Tue, 28 Jul 2015 07:08:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 28 Jul 2015 09:08:10 +0200
Message-Id: <1438067290-18479-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: cm-fx6: Set correct MAC address
To: Barebox List <barebox@lists.infradead.org>

The cm-fx6 board has an EEPROM which contains the boards MAC address
and other informations. This adds support for reading the MAC address.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/cm-fx6/board.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm/boards/cm-fx6/board.c b/arch/arm/boards/cm-fx6/board.c
index a681dea..edef18f 100644
--- a/arch/arm/boards/cm-fx6/board.c
+++ b/arch/arm/boards/cm-fx6/board.c
@@ -22,6 +22,7 @@
 #include <mach/generic.h>
 #include <linux/sizes.h>
 #include <mach/imx6.h>
+#include <net.h>
 
 static int phy_fixup(struct phy_device *phydev)
 {
@@ -58,6 +59,29 @@ static int phy_fixup(struct phy_device *phydev)
 
 #define PHY_ID_AR8031	0x004dd074
 
+static int cm_fx6_eeprom_init(void)
+{
+	struct cdev *cdev;
+	u8 mac[6];
+	int ret;
+
+	if (!of_machine_is_compatible("compulab,cm-fx6"))
+		return 0;
+
+	cdev = cdev_by_name("eeprom0");
+	if (!cdev)
+		return -ENODEV;
+
+	ret = cdev_read(cdev, mac, 6, 4, 0);
+	if (ret < 0)
+		return ret;
+
+	eth_register_ethaddr(0, mac);
+
+	return 0;
+}
+late_initcall(cm_fx6_eeprom_init);
+
 static int cm_fx6_devices_init(void)
 {
 	if (!of_machine_is_compatible("compulab,cm-fx6"))
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
