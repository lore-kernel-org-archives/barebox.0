Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xl1S0-0006pA-Tz
 for barebox@lists.infradead.org; Sun, 02 Nov 2014 20:08:38 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id 4520226C2009
 for <barebox@lists.infradead.org>; Sun,  2 Nov 2014 21:06:50 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun,  2 Nov 2014 21:13:50 +0100
Message-Id: <1414959235-18095-9-git-send-email-dev@lynxeye.de>
In-Reply-To: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
References: <1414959235-18095-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 08/13] tegra: jetson-tk1: enable 1.05V_RUN
To: barebox@lists.infradead.org

Needed for the PCIe PLL amongst other things.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/nvidia-jetson-tk1/Makefile |  2 +-
 arch/arm/boards/nvidia-jetson-tk1/board.c  | 50 ++++++++++++++++++++++++++++++
 2 files changed, 51 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/nvidia-jetson-tk1/board.c

diff --git a/arch/arm/boards/nvidia-jetson-tk1/Makefile b/arch/arm/boards/nvidia-jetson-tk1/Makefile
index f1e4620..16b203f 100644
--- a/arch/arm/boards/nvidia-jetson-tk1/Makefile
+++ b/arch/arm/boards/nvidia-jetson-tk1/Makefile
@@ -3,5 +3,5 @@ CFLAGS_pbl-entry.o := \
 	-fno-tree-switch-conversion -fno-jump-tables
 soc := tegra124
 lwl-y += entry.o
-#obj-y += board.o
+obj-y += board.o
 extra-y += jetson-tk1-2gb-emmc.bct
diff --git a/arch/arm/boards/nvidia-jetson-tk1/board.c b/arch/arm/boards/nvidia-jetson-tk1/board.c
new file mode 100644
index 0000000..c20f56a
--- /dev/null
+++ b/arch/arm/boards/nvidia-jetson-tk1/board.c
@@ -0,0 +1,50 @@
+/*
+ * Copyright (C) 2014 Lucas Stach <l.stach@pengutronix.de>
+ *
+ * This program is free software; you can redistribute it and/or modify it
+ * under the terms and conditions of the GNU General Public License,
+ * version 2, as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope it will be useful, but WITHOUT
+ * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
+ * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
+ * more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program.  If not, see <http://www.gnu.org/licenses/>.
+ */
+
+#include <common.h>
+#include <dt-bindings/gpio/tegra-gpio.h>
+#include <gpio.h>
+#include <i2c/i2c.h>
+#include <init.h>
+
+#define AS3722_SD_VOLTAGE(n)	(0x00 + (n))
+#define AS3722_GPIO_CONTROL(n)	(0x08 + (n))
+#define  AS3722_GPIO_CONTROL_MODE_OUTPUT_VDDH (1 << 0)
+#define AS3722_GPIO_SIGNAL_OUT	0x20
+#define AS3722_SD_CONTROL	0x4d
+
+static int nvidia_jetson_tk1_devices_init(void)
+{
+	struct i2c_client client;
+	u8 data;
+
+	if (!of_machine_is_compatible("nvidia,jetson-tk1"))
+		return 0;
+
+	client.adapter = i2c_get_adapter(4);
+	client.addr = 0x40;
+
+	/* AS3722: enable SD4 and set voltage to 1.05v */
+	i2c_read_reg(&client, AS3722_SD_CONTROL, &data, 1);
+	data |= 1 << 4;
+	i2c_write_reg(&client, AS3722_SD_CONTROL, &data, 1);
+
+	data = 0x24;
+	i2c_write_reg(&client, AS3722_SD_VOLTAGE(4), &data, 1);
+
+	return 0;
+}
+fs_initcall(nvidia_jetson_tk1_devices_init);
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
