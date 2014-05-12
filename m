Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WjkJx-0004I6-Jl
 for barebox@lists.infradead.org; Mon, 12 May 2014 07:06:47 +0000
Received: from tellur.localdomain (p4FE65757.dip0.t-ipconnect.de
 [79.230.87.87]) by lynxeye.de (Postfix) with ESMTPA id 042DA18B4277
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 09:04:57 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon, 12 May 2014 09:07:52 +0200
Message-Id: <1399878486-16086-12-git-send-email-dev@lynxeye.de>
In-Reply-To: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
References: <1399878486-16086-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 11/25] ARM: tegra: beaver: activate sdmmc1 voltage rail
To: barebox@lists.infradead.org

In order to get the SD card solt working.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
One day we might move this to a regulator, but now
isn't the time.
---
 arch/arm/boards/nvidia-beaver/Makefile |  1 +
 arch/arm/boards/nvidia-beaver/board.c  | 38 ++++++++++++++++++++++++++++++++++
 2 files changed, 39 insertions(+)
 create mode 100644 arch/arm/boards/nvidia-beaver/board.c

diff --git a/arch/arm/boards/nvidia-beaver/Makefile b/arch/arm/boards/nvidia-beaver/Makefile
index d2d2173..2b6c09e 100644
--- a/arch/arm/boards/nvidia-beaver/Makefile
+++ b/arch/arm/boards/nvidia-beaver/Makefile
@@ -2,3 +2,4 @@ CFLAGS_pbl-entry.o := \
 	-mcpu=arm7tdmi -march=armv4t \
 	-fno-tree-switch-conversion -fno-jump-tables
 lwl-y += entry.o
+obj-y += board.o
diff --git a/arch/arm/boards/nvidia-beaver/board.c b/arch/arm/boards/nvidia-beaver/board.c
new file mode 100644
index 0000000..e87594d
--- /dev/null
+++ b/arch/arm/boards/nvidia-beaver/board.c
@@ -0,0 +1,38 @@
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
+#include <init.h>
+#include <i2c/i2c.h>
+
+static int nvidia_beaver_devices_init(void)
+{
+	struct i2c_client client;
+	u8 data;
+
+	if (!of_machine_is_compatible("nvidia,beaver"))
+		return 0;
+
+	client.adapter = i2c_get_adapter(4);
+	client.addr = 0x2d;
+
+	/* TPS659110: LDO5_REG = 3.3v, ACTIVE to SDMMC1 */
+	data = 0x65;
+	i2c_write_reg(&client, 0x32, &data, 1);
+
+	return 0;
+}
+device_initcall(nvidia_beaver_devices_init);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
