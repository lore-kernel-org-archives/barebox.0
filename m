Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZKTd-0001RW-O9
 for barebox@lists.infradead.org; Sun, 13 Apr 2014 13:29:42 +0000
Received: from antimon.intern.lynxeye.de.intern.lynxeye.de
 (p578FE321.dip0.t-ipconnect.de [87.143.227.33])
 by lynxeye.de (Postfix) with ESMTPA id 1450D18B4246
 for <barebox@lists.infradead.org>; Sun, 13 Apr 2014 15:27:53 +0200 (CEST)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 13 Apr 2014 15:27:33 +0200
Message-Id: <1397395668-9325-4-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 03/18] tegra: disable more lowlevel unsafe switch optimizations
To: barebox@lists.infradead.org

fno-jump-tables isn't enough to guard against
gcc switch optimizations that are unsafe to use
in code that runs before relocation.

The switch-tree-conversion opt pass may generate
lookup tables that are placed in the data section
and accessed via absolute adressing, which fails
prior to relocation.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/toradex-colibri-t20/Makefile |  4 +++-
 arch/arm/boards/toshiba-ac100/Makefile       |  4 +++-
 arch/arm/mach-tegra/Makefile                 | 12 ++++++++++--
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/toradex-colibri-t20/Makefile b/arch/arm/boards/toradex-colibri-t20/Makefile
index 5be3dd0e7c2e..d2d217319b34 100644
--- a/arch/arm/boards/toradex-colibri-t20/Makefile
+++ b/arch/arm/boards/toradex-colibri-t20/Makefile
@@ -1,2 +1,4 @@
-CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
+CFLAGS_pbl-entry.o := \
+	-mcpu=arm7tdmi -march=armv4t \
+	-fno-tree-switch-conversion -fno-jump-tables
 lwl-y += entry.o
diff --git a/arch/arm/boards/toshiba-ac100/Makefile b/arch/arm/boards/toshiba-ac100/Makefile
index 4ef18c0ce919..2b6c09e2798e 100644
--- a/arch/arm/boards/toshiba-ac100/Makefile
+++ b/arch/arm/boards/toshiba-ac100/Makefile
@@ -1,3 +1,5 @@
-CFLAGS_pbl-entry.o := -mcpu=arm7tdmi -march=armv4t
+CFLAGS_pbl-entry.o := \
+	-mcpu=arm7tdmi -march=armv4t \
+	-fno-tree-switch-conversion -fno-jump-tables
 lwl-y += entry.o
 obj-y += board.o
diff --git a/arch/arm/mach-tegra/Makefile b/arch/arm/mach-tegra/Makefile
index 791d5d45a718..e68156a772ac 100644
--- a/arch/arm/mach-tegra/Makefile
+++ b/arch/arm/mach-tegra/Makefile
@@ -1,5 +1,13 @@
-CFLAGS_tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t -fno-jump-tables
-CFLAGS_pbl-tegra_avp_init.o := -mcpu=arm7tdmi -march=armv4t -fno-jump-tables
+CFLAGS_tegra_avp_init.o := \
+	-mcpu=arm7tdmi -march=armv4t \
+	-fno-tree-switch-conversion -fno-jump-tables
+CFLAGS_pbl-tegra_avp_init.o := \
+	-mcpu=arm7tdmi -march=armv4t \
+	-fno-tree-switch-conversion -fno-jump-tables
+CFLAGS_tegra_maincomplex_init.o := \
+	-fno-tree-switch-conversion -fno-jump-tables
+CFLAGS_pbl-tegra_maincomplex_init.o := \
+	-fno-tree-switch-conversion -fno-jump-tables
 lwl-y += tegra_avp_init.o
 lwl-y += tegra_maincomplex_init.o
 obj-y += tegra20.o
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
