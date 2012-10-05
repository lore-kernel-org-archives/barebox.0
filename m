Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TK3Za-0006yx-SC
 for barebox@lists.infradead.org; Fri, 05 Oct 2012 08:47:55 +0000
Received: by mail-la0-f49.google.com with SMTP id z14so709642lag.36
 for <barebox@lists.infradead.org>; Fri, 05 Oct 2012 01:47:54 -0700 (PDT)
MIME-Version: 1.0
Date: Fri, 5 Oct 2012 10:47:54 +0200
Message-ID: <CAOQ7t2aY5Y98iMjJANRAhdhvKuqEzbor-Dn7+B=BckPUN2sqrA@mail.gmail.com>
From: Carlo Caione <carlo.caione@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/4] Add support for Raspberry-Pi
To: barebox@lists.infradead.org

Tested-By: Jan Luebbe <jlu@pengutronix.de>
Signed-off-by: Carlo Caione <carlo.caione@gmail.com>
---
 arch/arm/Makefile                                  |  1 +
 arch/arm/boards/raspberry-pi/Makefile              |  1 +
 arch/arm/boards/raspberry-pi/config.h              |  4 ++
 arch/arm/boards/raspberry-pi/env/config            |  1 +
 .../arm/boards/raspberry-pi/env/init/bootargs-base |  8 +++
 arch/arm/boards/raspberry-pi/env/init/hostname     |  8 +++
 arch/arm/boards/raspberry-pi/rpi.c                 | 58 ++++++++++++++++++++++
 7 files changed, 81 insertions(+)
 create mode 100644 arch/arm/boards/raspberry-pi/Makefile
 create mode 100644 arch/arm/boards/raspberry-pi/config.h
 create mode 100644 arch/arm/boards/raspberry-pi/env/config
 create mode 100644 arch/arm/boards/raspberry-pi/env/init/bootargs-base
 create mode 100644 arch/arm/boards/raspberry-pi/env/init/hostname
 create mode 100644 arch/arm/boards/raspberry-pi/rpi.c

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 2ea11d6..adfe590 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -113,6 +113,7 @@ board-$(CONFIG_MACH_PCM043)			:= pcm043
 board-$(CONFIG_MACH_PM9261)			:= pm9261
 board-$(CONFIG_MACH_PM9263)			:= pm9263
 board-$(CONFIG_MACH_PM9G45)			:= pm9g45
+board-$(CONFIG_MACH_RPI)				:= raspberry-pi
 board-$(CONFIG_MACH_SCB9328)			:= scb9328
 board-$(CONFIG_MACH_NESO)			:= guf-neso
 board-$(CONFIG_MACH_MX23EVK)			:= freescale-mx23-evk
diff --git a/arch/arm/boards/raspberry-pi/Makefile
b/arch/arm/boards/raspberry-pi/Makefile
new file mode 100644
index 0000000..6ce5ede
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_MACH_RPI) += rpi.o
diff --git a/arch/arm/boards/raspberry-pi/config.h
b/arch/arm/boards/raspberry-pi/config.h
new file mode 100644
index 0000000..ca15136
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/config.h
@@ -0,0 +1,4 @@
+#ifndef __CONFIG_H
+#define __CONFIG_H
+
+#endif	/* __CONFIG_H */
diff --git a/arch/arm/boards/raspberry-pi/env/config
b/arch/arm/boards/raspberry-pi/env/config
new file mode 100644
index 0000000..1a24852
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/env/config
@@ -0,0 +1 @@
+#!/bin/sh
diff --git a/arch/arm/boards/raspberry-pi/env/init/bootargs-base
b/arch/arm/boards/raspberry-pi/env/init/bootargs-base
new file mode 100644
index 0000000..d869754
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/env/init/bootargs-base
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "Base bootargs"
+	exit
+fi
+
+global.linux.bootargs.base="console=ttymxc0,115200"
diff --git a/arch/arm/boards/raspberry-pi/env/init/hostname
b/arch/arm/boards/raspberry-pi/env/init/hostname
new file mode 100644
index 0000000..7e8f294
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/env/init/hostname
@@ -0,0 +1,8 @@
+#!/bin/sh
+
+if [ "$1" = menu ]; then
+	init-menu-add-entry "$0" "hostname"
+	exit
+fi
+
+global.hostname=Raspberry-Pi
diff --git a/arch/arm/boards/raspberry-pi/rpi.c
b/arch/arm/boards/raspberry-pi/rpi.c
new file mode 100644
index 0000000..3717b54
--- /dev/null
+++ b/arch/arm/boards/raspberry-pi/rpi.c
@@ -0,0 +1,58 @@
+/*
+ * Copyright (C) 2009 Carlo Caione <carlo@carlocaione.org>
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
+ */
+
+#include <common.h>
+#include <init.h>
+#include <asm/armlinux.h>
+#include <generated/mach-types.h>
+#include <environment.h>
+#include <partition.h>
+#include <sizes.h>
+
+#include <mach/gpio.h>
+#include <mach/core.h>
+#include <mach/platform.h>
+#include <io.h>
+
+static int rpi_mem_init(void)
+{
+    ulong memsize;
+
+    memsize = get_ram_size((ulong *)0x00000000, SZ_128M);
+    bcm2835_add_device_sdram(memsize);
+    return 0;
+}
+mem_initcall(rpi_mem_init);
+
+static int rpi_console_init(void)
+{
+    bcm2835_register_uart();
+    return 0;
+}
+console_initcall(rpi_console_init);
+
+static int rpi_devices_init(void)
+{
+	armlinux_set_architecture(MACH_TYPE_BCM2708);
+	armlinux_set_bootparams((void *)(0x00000100));
+	return 0;
+}
+
+device_initcall(rpi_devices_init);
-- 
1.7.12.2

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
