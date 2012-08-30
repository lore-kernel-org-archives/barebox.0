Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og111.obsmtp.com ([64.18.0.22])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T75IL-0004k5-IY
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 14:00:30 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
Date: Thu, 30 Aug 2012 15:00:15 +0100
Message-Id: <1346335217-9686-4-git-send-email-renaud.barbier@ge.com>
In-Reply-To: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
References: <1346335217-9686-1-git-send-email-renaud.barbier@ge.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/5] mpc85xx: header update
To: barebox@lists.infradead.org

In order to use the IMX i2c driver on the mpc85xx SOC, the file
mach/clocks.h is renamed mach/clock.h. Files using this header are updated
accordingly. The file mach/generic.h is also added to accommodate the driver.

Finally, there is a clean up of a line too long.

Signed-off-by: Renaud Barbier <renaud.barbier@ge.com>
---
 arch/ppc/boards/freescale-p2020rdb/p2020rdb.c      |    6 ++--
 .../include/mach/{clocks.h => clock.h}             |    0
 arch/ppc/mach-mpc85xx/include/mach/generic.h       |   24 ++++++++++++++++++++
 arch/ppc/mach-mpc85xx/speed.c                      |    2 +-
 arch/ppc/mach-mpc85xx/time.c                       |    2 +-
 5 files changed, 29 insertions(+), 5 deletions(-)
 rename arch/ppc/mach-mpc85xx/include/mach/{clocks.h => clock.h} (100%)
 create mode 100644 arch/ppc/mach-mpc85xx/include/mach/generic.h

diff --git a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
index 734fef9..2de6cc4 100644
--- a/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
+++ b/arch/ppc/boards/freescale-p2020rdb/p2020rdb.c
@@ -34,7 +34,7 @@
 #include <mach/mpc85xx.h>
 #include <mach/mmu.h>
 #include <mach/immap_85xx.h>
-#include <mach/clocks.h>
+#include <mach/clock.h>
 #include <mach/gianfar.h>
 #include <mach/early_udelay.h>
 
@@ -95,8 +95,8 @@ static int p2020_console_init(void)
 {
 	serial_plat.clock = fsl_get_bus_freq(0);
 
-	add_ns16550_device(DEVICE_ID_DYNAMIC, 0xffe04500, 16, IORESOURCE_MEM_8BIT,
-			   &serial_plat);
+	add_ns16550_device(DEVICE_ID_DYNAMIC, 0xffe04500, 16,
+			IORESOURCE_MEM_8BIT, &serial_plat);
 	return 0;
 }
 
diff --git a/arch/ppc/mach-mpc85xx/include/mach/clocks.h b/arch/ppc/mach-mpc85xx/include/mach/clock.h
similarity index 100%
rename from arch/ppc/mach-mpc85xx/include/mach/clocks.h
rename to arch/ppc/mach-mpc85xx/include/mach/clock.h
diff --git a/arch/ppc/mach-mpc85xx/include/mach/generic.h b/arch/ppc/mach-mpc85xx/include/mach/generic.h
new file mode 100644
index 0000000..02f589b
--- /dev/null
+++ b/arch/ppc/mach-mpc85xx/include/mach/generic.h
@@ -0,0 +1,24 @@
+/*
+ * Copyright 2012 GE Intelligent Platforms, Inc.
+ * (C) Copyright 2010 Juergen Beisert - Pengutronix
+ *
+ * This program is free software; you can redistribute it and/or
+ * modify it under the terms of the GNU General Public License as
+ * published by the Free Software Foundation; either version 2 of
+ * the License, or (at your option) any later version.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ * You should have received a copy of the GNU General Public License
+ * along with this program; if not, write to the Free Software
+ * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
+ * MA 02111-1307 USA
+ *
+ * File derived from ARM architecture. Added so that the imx i2c driver
+ * can be used.
+ */
+
+#define cpu_is_mx1()	(0)
diff --git a/arch/ppc/mach-mpc85xx/speed.c b/arch/ppc/mach-mpc85xx/speed.c
index fff2d22..6778d57 100644
--- a/arch/ppc/mach-mpc85xx/speed.c
+++ b/arch/ppc/mach-mpc85xx/speed.c
@@ -30,7 +30,7 @@
 
 #include <common.h>
 #include <asm/processor.h>
-#include <mach/clocks.h>
+#include <mach/clock.h>
 #include <mach/immap_85xx.h>
 #include <mach/mpc85xx.h>
 
diff --git a/arch/ppc/mach-mpc85xx/time.c b/arch/ppc/mach-mpc85xx/time.c
index 408a28a..c50591c 100644
--- a/arch/ppc/mach-mpc85xx/time.c
+++ b/arch/ppc/mach-mpc85xx/time.c
@@ -25,7 +25,7 @@
 #include <common.h>
 #include <clock.h>
 #include <init.h>
-#include <mach/clocks.h>
+#include <mach/clock.h>
 
 uint64_t ppc_clocksource_read(void)
 {
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
