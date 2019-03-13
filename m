Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h41Ys-0006QA-PH
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 10:56:40 +0000
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 13 Mar 2019 11:56:31 +0100
Message-Id: <20190313105635.22055-2-l.stach@pengutronix.de>
In-Reply-To: <20190313105635.22055-1-l.stach@pengutronix.de>
References: <20190313105635.22055-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/6] ARM: zii-common: add support for switch reset on RDU1
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-common/switch-cmd.c | 38 ++++++++++++++++++++-----
 arch/arm/mach-imx/Kconfig               |  1 +
 include/linux/mfd/rave-sp.h             |  1 +
 3 files changed, 33 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/zii-common/switch-cmd.c b/arch/arm/boards/zii-common/switch-cmd.c
index bdba46fb3615..30438053a1ef 100644
--- a/arch/arm/boards/zii-common/switch-cmd.c
+++ b/arch/arm/boards/zii-common/switch-cmd.c
@@ -11,19 +11,16 @@
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
  */
-#include <common.h>
 #include <command.h>
+#include <common.h>
 #include <i2c/i2c.h>
+#include <linux/mfd/rave-sp.h>
 
-static int do_rave_switch_reset(int argc, char *argv[])
+static int do_rdu2_switch_reset(void)
 {
 	struct i2c_client client;
 	u8 reg;
 
-	if (!of_machine_is_compatible("zii,imx6q-zii-rdu2") &&
-	    !of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
-		return -ENODEV;
-
 	client.adapter = i2c_get_adapter(1);
 	if (!client.adapter)
 		return -ENODEV;
@@ -42,8 +39,35 @@ static int do_rave_switch_reset(int argc, char *argv[])
 	return 0;
 }
 
+static int do_rdu1_switch_reset(void)
+{
+	struct device_d *sp_dev = get_device_by_name("sp");
+	struct rave_sp *sp = sp_dev->priv;
+	u8 cmd[] = {
+		[0] = RAVE_SP_CMD_RESET_ETH_SWITCH,
+		[1] = 0
+	};
+
+	if (IS_ENABLED(CONFIG_RAVE_SP_CORE))
+		return rave_sp_exec(sp, cmd, sizeof(cmd), NULL, 0);
+	else
+		return -ENODEV;
+}
+
+static int do_rave_switch_reset(int argc, char *argv[])
+{
+	if (of_machine_is_compatible("zii,imx6q-zii-rdu2") ||
+	    of_machine_is_compatible("zii,imx6qp-zii-rdu2"))
+		return do_rdu2_switch_reset();
+
+	if (of_machine_is_compatible("zii,imx51-rdu1"))
+		return do_rdu1_switch_reset();
+
+	return -ENODEV;
+}
+
 BAREBOX_CMD_START(rave_reset_switch)
 	.cmd		= do_rave_switch_reset,
-	BAREBOX_CMD_DESC("reset ethernet switch on RDU2")
+	BAREBOX_CMD_DESC("reset ethernet switch on RDU")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 BAREBOX_CMD_END
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 3cfa0c19870f..c4e7500e8fda 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -439,6 +439,7 @@ config MACH_ZII_RDU1
 	select ARCH_IMX51
 	select MACH_FREESCALE_MX51_PDK_POWER
 	select CRC8
+	select MACH_ZII_COMMON
 
 config MACH_ZII_RDU2
 	bool "ZII i.MX6Q(+) RDU2"
diff --git a/include/linux/mfd/rave-sp.h b/include/linux/mfd/rave-sp.h
index 37a37788d885..7b3187cb745c 100644
--- a/include/linux/mfd/rave-sp.h
+++ b/include/linux/mfd/rave-sp.h
@@ -25,6 +25,7 @@ enum rave_sp_command {
 	RAVE_SP_CMD_SET_BACKLIGHT		= 0xA6,
 	RAVE_SP_CMD_RESET			= 0xA7,
 	RAVE_SP_CMD_RESET_REASON		= 0xA8,
+	RAVE_SP_CMD_RESET_ETH_SWITCH		= 0xAF,
 
 	RAVE_SP_CMD_JUMP_TO_BOOTLOADER		= 0xB0,
 	RAVE_SP_CMD_BOOTLOADER			= 0xB1,
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
