Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h41Ys-0006Q3-PG
 for barebox@lists.infradead.org; Wed, 13 Mar 2019 10:56:42 +0000
From: Lucas Stach <l.stach@pengutronix.de>
Date: Wed, 13 Mar 2019 11:56:30 +0100
Message-Id: <20190313105635.22055-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/6] ARM: add Zii common directory and move switch reset
 command
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Chris Healy <cphealy@gmail.com>

The Zii boards share some functionality across different boards. Add
a common directory, so we can implement this once and use across
different boards.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/Makefile                                    | 1 +
 arch/arm/boards/zii-common/Makefile                         | 1 +
 arch/arm/boards/{zii-imx6q-rdu2 => zii-common}/switch-cmd.c | 0
 arch/arm/boards/zii-imx6q-rdu2/Makefile                     | 2 +-
 arch/arm/mach-imx/Kconfig                                   | 4 ++++
 5 files changed, 7 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/zii-common/Makefile
 rename arch/arm/boards/{zii-imx6q-rdu2 => zii-common}/switch-cmd.c (100%)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index c5dc41526b23..fc883e3dea03 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -156,6 +156,7 @@ obj-$(CONFIG_MACH_QEMU_VIRT64)			+= qemu-virt64/
 obj-$(CONFIG_MACH_WARP7)			+= element14-warp7/
 obj-$(CONFIG_MACH_VF610_TWR)			+= freescale-vf610-twr/
 obj-$(CONFIG_MACH_XILINX_ZCU104)		+= xilinx-zcu104/
+obj-$(CONFIG_MACH_ZII_COMMON)			+= zii-common/
 obj-$(CONFIG_MACH_ZII_RDU1)			+= zii-imx51-rdu1/
 obj-$(CONFIG_MACH_ZII_RDU2)			+= zii-imx6q-rdu2/
 obj-$(CONFIG_MACH_ZII_IMX8MQ_DEV)		+= zii-imx8mq-dev/
diff --git a/arch/arm/boards/zii-common/Makefile b/arch/arm/boards/zii-common/Makefile
new file mode 100644
index 000000000000..9decfe85fc13
--- /dev/null
+++ b/arch/arm/boards/zii-common/Makefile
@@ -0,0 +1 @@
+obj-y += switch-cmd.o
diff --git a/arch/arm/boards/zii-imx6q-rdu2/switch-cmd.c b/arch/arm/boards/zii-common/switch-cmd.c
similarity index 100%
rename from arch/arm/boards/zii-imx6q-rdu2/switch-cmd.c
rename to arch/arm/boards/zii-common/switch-cmd.c
diff --git a/arch/arm/boards/zii-imx6q-rdu2/Makefile b/arch/arm/boards/zii-imx6q-rdu2/Makefile
index 10dfba3a3cf3..c6285362f2ee 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/Makefile
+++ b/arch/arm/boards/zii-imx6q-rdu2/Makefile
@@ -1,3 +1,3 @@
-obj-y += board.o switch-cmd.o
+obj-y += board.o
 lwl-y += lowlevel.o
 bbenv-y += defaultenv-rdu2
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index f3f3a493394d..3cfa0c19870f 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -431,6 +431,9 @@ config MACH_VF610_TWR
 	bool "Freescale VF610 Tower Board"
 	select ARCH_VF610
 
+config MACH_ZII_COMMON
+	bool
+
 config MACH_ZII_RDU1
 	bool "ZII i.MX51 RDU1"
 	select ARCH_IMX51
@@ -441,6 +444,7 @@ config MACH_ZII_RDU2
 	bool "ZII i.MX6Q(+) RDU2"
 	select ARCH_IMX6
 	select MCI_IMX_ESDHC_PBL
+	select MACH_ZII_COMMON
 
 config MACH_ZII_IMX8MQ_DEV
 	bool "ZII i.MX8MQ based devices"
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
