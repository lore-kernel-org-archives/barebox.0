Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TOamE-00027O-Rw
 for barebox@lists.infradead.org; Wed, 17 Oct 2012 21:03:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Oct 2012 23:03:16 +0200
Message-Id: <1350507817-7819-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
References: <1350507817-7819-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/28] ARM AT91 boards: switch to barebox_arm_entry
To: barebox@lists.infradead.org

Most boards use hardcoded addresses, some automatically determine the
SDRAM size using at91_get_sdram_size(),

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/at91rm9200ek/lowlevel.c        |   14 ++++++++++++++
 arch/arm/boards/at91sam9260ek/Makefile         |    2 ++
 arch/arm/boards/at91sam9260ek/lowlevel.c       |   12 ++++++++++++
 arch/arm/boards/at91sam9261ek/Makefile         |    2 ++
 arch/arm/boards/at91sam9261ek/lowlevel.c       |   12 ++++++++++++
 arch/arm/boards/at91sam9m10g45ek/Makefile      |    2 ++
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c    |   11 +++++++++++
 arch/arm/boards/at91sam9x5ek/Makefile          |    2 ++
 arch/arm/boards/at91sam9x5ek/lowlevel.c        |   11 +++++++++++
 arch/arm/boards/dss11/Makefile                 |    2 ++
 arch/arm/boards/dss11/lowlevel.c               |   12 ++++++++++++
 arch/arm/boards/mmccpu/Makefile                |    2 ++
 arch/arm/boards/mmccpu/lowlevel.c              |   12 ++++++++++++
 arch/arm/boards/pm9g45/Makefile                |    2 ++
 arch/arm/boards/pm9g45/lowlevel.c              |   11 +++++++++++
 arch/arm/boards/qil-a9260/Makefile             |    2 ++
 arch/arm/boards/qil-a9260/lowlevel.c           |   12 ++++++++++++
 arch/arm/boards/tny-a926x/Makefile             |    2 ++
 arch/arm/boards/tny-a926x/lowlevel.c           |   12 ++++++++++++
 arch/arm/boards/usb-a926x/Makefile             |    2 ++
 arch/arm/boards/usb-a926x/lowlevel.c           |   12 ++++++++++++
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c  |    2 +-
 arch/arm/mach-at91/at91sam926x_lowlevel_init.c |    2 +-
 23 files changed, 153 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/at91rm9200ek/lowlevel.c
 create mode 100644 arch/arm/boards/at91sam9260ek/lowlevel.c
 create mode 100644 arch/arm/boards/at91sam9261ek/lowlevel.c
 create mode 100644 arch/arm/boards/at91sam9m10g45ek/lowlevel.c
 create mode 100644 arch/arm/boards/at91sam9x5ek/lowlevel.c
 create mode 100644 arch/arm/boards/dss11/lowlevel.c
 create mode 100644 arch/arm/boards/mmccpu/lowlevel.c
 create mode 100644 arch/arm/boards/pm9g45/lowlevel.c
 create mode 100644 arch/arm/boards/qil-a9260/lowlevel.c
 create mode 100644 arch/arm/boards/tny-a926x/lowlevel.c
 create mode 100644 arch/arm/boards/usb-a926x/lowlevel.c

diff --git a/arch/arm/boards/at91rm9200ek/lowlevel.c b/arch/arm/boards/at91rm9200ek/lowlevel.c
new file mode 100644
index 0000000..5240596
--- /dev/null
+++ b/arch/arm/boards/at91rm9200ek/lowlevel.c
@@ -0,0 +1,14 @@
+#include <common.h>
+#include <init.h>
+#include <sizes.h>
+#include <asm/barebox-arm.h>
+#include <asm/barebox-arm-head.h>
+#include <mach/hardware.h>
+#include <mach/board.h>
+
+void __naked __bare_init reset(void)
+{
+	common_reset();
+
+	at91rm9200_entry(AT91_SDRAM_BASE, SZ_64M);
+}
diff --git a/arch/arm/boards/at91sam9260ek/Makefile b/arch/arm/boards/at91sam9260ek/Makefile
index eb072c0..47ab803 100644
--- a/arch/arm/boards/at91sam9260ek/Makefile
+++ b/arch/arm/boards/at91sam9260ek/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/at91sam9260ek/lowlevel.c b/arch/arm/boards/at91sam9260ek/lowlevel.c
new file mode 100644
index 0000000..82520c3
--- /dev/null
+++ b/arch/arm/boards/at91sam9260ek/lowlevel.c
@@ -0,0 +1,12 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+#include <mach/at91sam9_sdramc.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+}
diff --git a/arch/arm/boards/at91sam9261ek/Makefile b/arch/arm/boards/at91sam9261ek/Makefile
index eb072c0..47ab803 100644
--- a/arch/arm/boards/at91sam9261ek/Makefile
+++ b/arch/arm/boards/at91sam9261ek/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/at91sam9261ek/lowlevel.c b/arch/arm/boards/at91sam9261ek/lowlevel.c
new file mode 100644
index 0000000..82520c3
--- /dev/null
+++ b/arch/arm/boards/at91sam9261ek/lowlevel.c
@@ -0,0 +1,12 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+#include <mach/at91sam9_sdramc.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+}
diff --git a/arch/arm/boards/at91sam9m10g45ek/Makefile b/arch/arm/boards/at91sam9m10g45ek/Makefile
index eb072c0..47ab803 100644
--- a/arch/arm/boards/at91sam9m10g45ek/Makefile
+++ b/arch/arm/boards/at91sam9m10g45ek/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/at91sam9m10g45ek/lowlevel.c b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
new file mode 100644
index 0000000..83da64d
--- /dev/null
+++ b/arch/arm/boards/at91sam9m10g45ek/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(AT91_CHIPSELECT_1, SZ_128M, 0);
+}
diff --git a/arch/arm/boards/at91sam9x5ek/Makefile b/arch/arm/boards/at91sam9x5ek/Makefile
index eb072c0..47ab803 100644
--- a/arch/arm/boards/at91sam9x5ek/Makefile
+++ b/arch/arm/boards/at91sam9x5ek/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/at91sam9x5ek/lowlevel.c b/arch/arm/boards/at91sam9x5ek/lowlevel.c
new file mode 100644
index 0000000..83da64d
--- /dev/null
+++ b/arch/arm/boards/at91sam9x5ek/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(AT91_CHIPSELECT_1, SZ_128M, 0);
+}
diff --git a/arch/arm/boards/dss11/Makefile b/arch/arm/boards/dss11/Makefile
index eb072c0..47ab803 100644
--- a/arch/arm/boards/dss11/Makefile
+++ b/arch/arm/boards/dss11/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/dss11/lowlevel.c b/arch/arm/boards/dss11/lowlevel.c
new file mode 100644
index 0000000..82520c3
--- /dev/null
+++ b/arch/arm/boards/dss11/lowlevel.c
@@ -0,0 +1,12 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+#include <mach/at91sam9_sdramc.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+}
diff --git a/arch/arm/boards/mmccpu/Makefile b/arch/arm/boards/mmccpu/Makefile
index eb072c0..47ab803 100644
--- a/arch/arm/boards/mmccpu/Makefile
+++ b/arch/arm/boards/mmccpu/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/mmccpu/lowlevel.c b/arch/arm/boards/mmccpu/lowlevel.c
new file mode 100644
index 0000000..9f6290c
--- /dev/null
+++ b/arch/arm/boards/mmccpu/lowlevel.c
@@ -0,0 +1,12 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+
+void __naked reset(void)
+{
+	common_reset();
+
+	barebox_arm_entry(AT91_CHIPSELECT_1, SZ_128M, 0);
+}
diff --git a/arch/arm/boards/pm9g45/Makefile b/arch/arm/boards/pm9g45/Makefile
index eb072c0..47ab803 100644
--- a/arch/arm/boards/pm9g45/Makefile
+++ b/arch/arm/boards/pm9g45/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/pm9g45/lowlevel.c b/arch/arm/boards/pm9g45/lowlevel.c
new file mode 100644
index 0000000..83da64d
--- /dev/null
+++ b/arch/arm/boards/pm9g45/lowlevel.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(AT91_CHIPSELECT_1, SZ_128M, 0);
+}
diff --git a/arch/arm/boards/qil-a9260/Makefile b/arch/arm/boards/qil-a9260/Makefile
index eb072c0..47ab803 100644
--- a/arch/arm/boards/qil-a9260/Makefile
+++ b/arch/arm/boards/qil-a9260/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/qil-a9260/lowlevel.c b/arch/arm/boards/qil-a9260/lowlevel.c
new file mode 100644
index 0000000..82520c3
--- /dev/null
+++ b/arch/arm/boards/qil-a9260/lowlevel.c
@@ -0,0 +1,12 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+#include <mach/at91sam9_sdramc.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+}
diff --git a/arch/arm/boards/tny-a926x/Makefile b/arch/arm/boards/tny-a926x/Makefile
index eb072c0..47ab803 100644
--- a/arch/arm/boards/tny-a926x/Makefile
+++ b/arch/arm/boards/tny-a926x/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/tny-a926x/lowlevel.c b/arch/arm/boards/tny-a926x/lowlevel.c
new file mode 100644
index 0000000..82520c3
--- /dev/null
+++ b/arch/arm/boards/tny-a926x/lowlevel.c
@@ -0,0 +1,12 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+#include <mach/at91sam9_sdramc.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+}
diff --git a/arch/arm/boards/usb-a926x/Makefile b/arch/arm/boards/usb-a926x/Makefile
index eb072c0..47ab803 100644
--- a/arch/arm/boards/usb-a926x/Makefile
+++ b/arch/arm/boards/usb-a926x/Makefile
@@ -1 +1,3 @@
 obj-y += init.o
+obj-y += lowlevel.o
+pbl-y += lowlevel.o
diff --git a/arch/arm/boards/usb-a926x/lowlevel.c b/arch/arm/boards/usb-a926x/lowlevel.c
new file mode 100644
index 0000000..82520c3
--- /dev/null
+++ b/arch/arm/boards/usb-a926x/lowlevel.c
@@ -0,0 +1,12 @@
+#include <common.h>
+#include <sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+#include <mach/at91sam9_sdramc.h>
+
+void __naked reset(void)
+{
+	common_reset();
+	barebox_arm_entry(AT91_CHIPSELECT_1, at91_get_sdram_size(), 0);
+}
diff --git a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
index a0a0d5e..897d266 100644
--- a/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91rm9200_lowlevel_init.c
@@ -130,5 +130,5 @@ void __naked __bare_init at91rm9200_entry(unsigned long sdram_base,
 	set_cr(r);
 
 end:
-	board_init_lowlevel_return();
+	barebox_arm_entry(sdram_base, sdram_size, 0);
 }
diff --git a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
index a399854..b8463aa 100644
--- a/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
+++ b/arch/arm/mach-at91/at91sam926x_lowlevel_init.c
@@ -175,5 +175,5 @@ void __naked __bare_init at91sam926x_entry(unsigned long sdram_base,
 #endif
 
 end:
-	board_init_lowlevel_return();
+	barebox_arm_entry(sdram_base, sdram_size, 0);
 }
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
