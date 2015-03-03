Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSsnh-0001JZ-A2
 for barebox@lists.infradead.org; Tue, 03 Mar 2015 19:48:20 +0000
Received: from tellur.intern.lynxeye.de (p57B5E414.dip0.t-ipconnect.de
 [87.181.228.20]) by lynxeye.de (Postfix) with ESMTPA id 4527E26C2008
 for <barebox@lists.infradead.org>; Tue,  3 Mar 2015 20:46:30 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue,  3 Mar 2015 20:46:20 +0100
Message-Id: <1425411983-24732-8-git-send-email-dev@lynxeye.de>
In-Reply-To: <1425411983-24732-1-git-send-email-dev@lynxeye.de>
References: <1425411983-24732-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 08/11] ARM: tegra: add eMMC barebox update handler
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/Makefile                 |  1 +
 arch/arm/mach-tegra/include/mach/tegra-bbu.h | 28 +++++++++++
 arch/arm/mach-tegra/tegra-bbu.c              | 74 ++++++++++++++++++++++++++++
 3 files changed, 103 insertions(+)
 create mode 100644 arch/arm/mach-tegra/include/mach/tegra-bbu.h
 create mode 100644 arch/arm/mach-tegra/tegra-bbu.c

diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index e68156a..7c4c1fd 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -13,3 +13,4 @@ lwl-y += tegra_maincomplex_init.o
 obj-y += tegra20.o
 obj-y += tegra20-pmc.o
 obj-y += tegra20-timer.o
+obj-$(CONFIG_BAREBOX_UPDATE) += tegra-bbu.o
diff --git a/arch/arm/mach-tegra/include/mach/tegra-bbu.h b/arch/arm/mach-tegra/include/mach/tegra-bbu.h
new file mode 100644
index 0000000..32e2861
--- /dev/null
+++ b/arch/arm/mach-tegra/include/mach/tegra-bbu.h
@@ -0,0 +1,28 @@
+/*
+ * Copyright (C) 2015 Lucas Stach <l.stach@pengutronix.de>
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
+#include <bbu.h>
+
+#ifdef CONFIG_BAREBOX_UPDATE
+int tegra_bbu_register_emmc_handler(const char *name, char *devicefile,
+				    unsigned long flags);
+#else
+static int tegra_bbu_register_emmc_handler(const char *name, char *devicefile,
+				    unsigned long flags)
+{
+	return 0;
+};
+#endif
diff --git a/arch/arm/mach-tegra/tegra-bbu.c b/arch/arm/mach-tegra/tegra-bbu.c
new file mode 100644
index 0000000..089e6c7
--- /dev/null
+++ b/arch/arm/mach-tegra/tegra-bbu.c
@@ -0,0 +1,74 @@
+/*
+ * Copyright (C) 2015 Lucas Stach <l.stach@pengutronix.de>
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
+#include <fcntl.h>
+#include <fs.h>
+#include <mach/tegra-bbu.h>
+#include <malloc.h>
+
+static int tegra_bbu_emmc_handler(struct bbu_handler *handler,
+				  struct bbu_data *data)
+{
+
+	int fd, ret;
+
+	if (file_detect_type(data->image + 0x4000, data->len) !=
+	    filetype_arm_barebox &&
+	    !bbu_force(data, "Not an ARM barebox image"))
+		return -EINVAL;
+
+	ret = bbu_confirm(data);
+	if (ret)
+		return ret;
+
+	fd = open(data->devicefile, O_WRONLY);
+	if (fd < 0)
+		return fd;
+
+	ret = write(fd, data->image, data->len);
+	if (ret < 0) {
+		pr_err("writing update to %s failed with %s\n",
+			data->devicefile, strerror(-ret));
+		goto err_close;
+	}
+
+	ret = 0;
+
+err_close:
+	close(fd);
+
+	return ret;
+}
+
+int tegra_bbu_register_emmc_handler(const char *name, char *devicefile,
+				    unsigned long flags)
+{
+	struct bbu_handler *handler;
+	int ret = 0;
+
+	handler = xzalloc(sizeof(*handler));
+	handler->name = name;
+	handler->devicefile = devicefile;
+	handler->flags = flags;
+	handler->handler = tegra_bbu_emmc_handler;
+
+	ret = bbu_register_handler(handler);
+	if (ret)
+		free(handler);
+
+	return ret;
+}
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
