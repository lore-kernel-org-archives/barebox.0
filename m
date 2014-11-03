Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XlQNy-000683-H5
 for barebox@lists.infradead.org; Mon, 03 Nov 2014 22:46:08 +0000
Received: from tellur.intern.lynxeye.de (p57B5E6E1.dip0.t-ipconnect.de
 [87.181.230.225]) by lynxeye.de (Postfix) with ESMTPA id 144CB26C2003
 for <barebox@lists.infradead.org>; Mon,  3 Nov 2014 23:45:15 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Mon,  3 Nov 2014 23:52:15 +0100
Message-Id: <1415055144-6119-3-git-send-email-dev@lynxeye.de>
In-Reply-To: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
References: <1415055144-6119-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 03/12] tegra: colibri-t20: set hostname in board init
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/toradex-colibri-t20/Makefile |  1 +
 arch/arm/boards/toradex-colibri-t20/board.c  | 29 ++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+)
 create mode 100644 arch/arm/boards/toradex-colibri-t20/board.c

diff --git a/arch/arm/boards/toradex-colibri-t20/Makefile b/arch/arm/boards/toradex-colibri-t20/Makefile
index 1f76732..d0347f2 100644
--- a/arch/arm/boards/toradex-colibri-t20/Makefile
+++ b/arch/arm/boards/toradex-colibri-t20/Makefile
@@ -3,6 +3,7 @@ CFLAGS_pbl-entry.o := \
 	-fno-tree-switch-conversion -fno-jump-tables
 soc := tegra20
 lwl-y += entry.o
+obj-y += board.o
 extra-y += colibri-t20_256_hsmmc.bct colibri-t20_256_v11_nand.bct \
            colibri-t20_256_v12_nand.bct colibri-t20_512_hsmmc.bct \
            colibri-t20_512_v11_nand.bct colibri-t20_512_v12_nand.bct
\ No newline at end of file
diff --git a/arch/arm/boards/toradex-colibri-t20/board.c b/arch/arm/boards/toradex-colibri-t20/board.c
new file mode 100644
index 0000000..7061981
--- /dev/null
+++ b/arch/arm/boards/toradex-colibri-t20/board.c
@@ -0,0 +1,29 @@
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
+
+static int toradex_colibri_t20_device_init(void)
+{
+	if (!of_machine_is_compatible("toradex,colibri_t20-512"))
+		return 0;
+
+	barebox_set_hostname("colibri-t20");
+
+	return 0;
+}
+device_initcall(toradex_colibri_t20_device_init);
-- 
1.9.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
