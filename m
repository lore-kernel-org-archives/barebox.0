Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKTd-0001RZ-OH
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:29:42 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id 4537218B425A
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:27:56 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:37 +0200
Message-Id: <1397395668-9325-8-git-send-email-dev@lynxeye.de>
In-Reply-To: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
References: <1397395668-9325-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 07/18] tegra: add Tegra3 mem initcall
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/mach-tegra/tegra20.c | 16 +++++++++++++++-
 1 file changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
index cc2d74864140..0d76df9844dd 100644
--- a/arch/arm/mach-tegra/tegra20.c
+++ b/arch/arm/mach-tegra/tegra20.c
@@ -1,5 +1,5 @@
 /*
- * Copyright (C) 2013 Lucas Stach <l.stach@pengutronix.de>
+ * Copyright (C) 2013-2014 Lucas Stach <l.stach@pengutronix.de>
  *
  * This program is free software; you can redistribute it and/or modify it
  * under the terms and conditions of the GNU General Public License,
@@ -58,8 +58,22 @@ console_initcall(tegra20_add_debug_console);
 
 static int tegra20_mem_init(void)
 {
+	if (!of_machine_is_compatible("nvidia,tegra20"))
+		return 0;
+
 	arm_add_mem_device("ram0", 0x0, tegra20_get_ramsize());
 
 	return 0;
 }
 mem_initcall(tegra20_mem_init);
+
+static int tegra30_mem_init(void)
+{
+	if (!of_machine_is_compatible("nvidia,tegra30"))
+		return 0;
+
+	arm_add_mem_device("ram0", SZ_2G, tegra30_get_ramsize());
+
+	return 0;
+}
+mem_initcall(tegra30_mem_init);
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
