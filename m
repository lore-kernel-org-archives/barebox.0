Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UBMBC-0001uO-EV
 for barebox@lists.infradead.org; Fri, 01 Mar 2013 09:23:04 +0000
Received: from antimon.pengutronix.de (port-212-202-120-50.static.qsc.de
 [212.202.120.50])
 by km20343-01.keymachine.de (Postfix) with ESMTPA id 2121E7D4422
 for <barebox@lists.infradead.org>; Fri,  1 Mar 2013 10:23:00 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Fri,  1 Mar 2013 10:22:50 +0100
Message-Id: <1362129773-4579-5-git-send-email-dev@lynxeye.de>
In-Reply-To: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
References: <1362129773-4579-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 4/7] tegra: add blank tegra20 platform init
To: barebox@lists.infradead.org

Devices will get initialised here, as soon as the drivers are added.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/Makefile  |  1 +
 arch/arm/mach-tegra/tegra20.c | 26 ++++++++++++++++++++++++++
 2 files changed, 27 insertions(+)
 create mode 100644 arch/arm/mach-tegra/tegra20.c

diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index 11915e5..7777d0a 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -1,2 +1,3 @@
 obj-y += clock.o
 obj-y += reset.o
+obj-y += tegra20.o
diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
new file mode 100644
index 0000000..bf99b16
--- /dev/null
+++ b/arch/arm/mach-tegra/tegra20.c
@@ -0,0 +1,26 @@
+/*
+ * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
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
+#include <mach/tegra20-silicon.h>
+
+static int tegra20_init(void)
+{
+	return 0;
+}
+
+postcore_initcall(tegra20_init);
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
