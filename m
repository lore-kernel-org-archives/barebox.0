Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RhgJV-0002nZ-4R
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 11:44:26 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJ9-0002o1-Vb
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:03 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RhgJ9-0002Sz-Sv
 for barebox@lists.infradead.org; Mon, 02 Jan 2012 12:44:03 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Mon,  2 Jan 2012 12:43:51 +0100
Message-Id: <1325504642-9324-4-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
References: <1325504642-9324-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 03/14] MACH SAMSUNG/S3C: Make it more generic for future
 updates
To: barebox@lists.infradead.org

Start with renaming files to share them in the S3C CPU family,

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 arch/arm/boards/a9m2410/a9m2410.c                  |    2 +-
 arch/arm/boards/a9m2410/lowlevel_init.S            |    2 +-
 arch/arm/boards/a9m2440/a9m2410dev.c               |    2 +-
 arch/arm/boards/a9m2440/a9m2440.c                  |    4 ++--
 arch/arm/boards/a9m2440/lowlevel_init.S            |    2 +-
 arch/arm/boards/mini2440/lowlevel_init.S           |    2 +-
 arch/arm/boards/mini2440/mini2440.c                |    4 ++--
 arch/arm/mach-samsung/generic.c                    |    2 +-
 arch/arm/mach-samsung/gpio-s3c24x0.c               |    2 +-
 arch/arm/mach-samsung/include/mach/gpio.h          |    7 +------
 .../mach/{s3c24xx-generic.h => s3c-generic.h}      |    0
 .../include/mach/{s3c24x0-iomap.h => s3c-iomap.h}  |    0
 arch/arm/mach-samsung/lowlevel-init.S              |    2 +-
 drivers/mci/s3c.c                                  |    4 ++--
 drivers/mtd/nand/nand_s3c2410.c                    |    4 ++--
 drivers/serial/serial_s3c24x0.c                    |    4 ++--
 drivers/video/s3c.c                                |    2 +-
 17 files changed, 20 insertions(+), 25 deletions(-)
 rename arch/arm/mach-samsung/include/mach/{s3c24xx-generic.h => s3c-generic.h} (100%)
 rename arch/arm/mach-samsung/include/mach/{s3c24x0-iomap.h => s3c-iomap.h} (100%)

diff --git a/arch/arm/boards/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
index bbe1604..14eaa1b 100644
--- a/arch/arm/boards/a9m2410/a9m2410.c
+++ b/arch/arm/boards/a9m2410/a9m2410.c
@@ -32,7 +32,7 @@
 #include <partition.h>
 #include <nand.h>
 #include <io.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 #include <mach/s3c24x0-nand.h>
 
 // {"NAND 1MiB 3,3V 8-bit", 0xec, 256, 1, 0x1000, 0},
diff --git a/arch/arm/boards/a9m2410/lowlevel_init.S b/arch/arm/boards/a9m2410/lowlevel_init.S
index 461b93c..752c668 100644
--- a/arch/arm/boards/a9m2410/lowlevel_init.S
+++ b/arch/arm/boards/a9m2410/lowlevel_init.S
@@ -3,7 +3,7 @@
  */
 
 #include <config.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 
 	.section ".text_bare_init.board_init_lowlevel","ax"
 
diff --git a/arch/arm/boards/a9m2440/a9m2410dev.c b/arch/arm/boards/a9m2440/a9m2410dev.c
index 5f7c53b..aa5da88 100644
--- a/arch/arm/boards/a9m2440/a9m2410dev.c
+++ b/arch/arm/boards/a9m2440/a9m2410dev.c
@@ -28,7 +28,7 @@
 #include <driver.h>
 #include <init.h>
 #include <io.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 
 /**
  * Initialize the CPU to be able to work with the a9m2410dev evaluation board
diff --git a/arch/arm/boards/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
index 964d376..9002052 100644
--- a/arch/arm/boards/a9m2440/a9m2440.c
+++ b/arch/arm/boards/a9m2440/a9m2440.c
@@ -32,9 +32,9 @@
 #include <partition.h>
 #include <nand.h>
 #include <io.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 #include <mach/s3c24x0-nand.h>
-#include <mach/s3c24xx-generic.h>
+#include <mach/s3c-generic.h>
 
 #include "baseboards.h"
 
diff --git a/arch/arm/boards/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
index 4b5c596..bfdd7f0 100644
--- a/arch/arm/boards/a9m2440/lowlevel_init.S
+++ b/arch/arm/boards/a9m2440/lowlevel_init.S
@@ -3,7 +3,7 @@
  */
 
 #include <config.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 
 	.section ".text_bare_init.board_init_lowlevel","ax"
 
diff --git a/arch/arm/boards/mini2440/lowlevel_init.S b/arch/arm/boards/mini2440/lowlevel_init.S
index 41f50cb..f114bb7 100644
--- a/arch/arm/boards/mini2440/lowlevel_init.S
+++ b/arch/arm/boards/mini2440/lowlevel_init.S
@@ -3,7 +3,7 @@
  */
 
 #include <config.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 
 	.section ".text_bare_init.board_init_lowlevel","ax"
 
diff --git a/arch/arm/boards/mini2440/mini2440.c b/arch/arm/boards/mini2440/mini2440.c
index b4cc0f8..5e6910b 100644
--- a/arch/arm/boards/mini2440/mini2440.c
+++ b/arch/arm/boards/mini2440/mini2440.c
@@ -38,9 +38,9 @@
 #include <asm/armlinux.h>
 #include <io.h>
 #include <mach/gpio.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 #include <mach/s3c24x0-nand.h>
-#include <mach/s3c24xx-generic.h>
+#include <mach/s3c-generic.h>
 #include <mach/mci.h>
 #include <mach/fb.h>
 
diff --git a/arch/arm/mach-samsung/generic.c b/arch/arm/mach-samsung/generic.c
index d2f2ac7..3c24b1a 100644
--- a/arch/arm/mach-samsung/generic.c
+++ b/arch/arm/mach-samsung/generic.c
@@ -27,7 +27,7 @@
 #include <init.h>
 #include <clock.h>
 #include <io.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 
 /**
  * Calculate the current M-PLL clock.
diff --git a/arch/arm/mach-samsung/gpio-s3c24x0.c b/arch/arm/mach-samsung/gpio-s3c24x0.c
index 946ec33..23b2609 100644
--- a/arch/arm/mach-samsung/gpio-s3c24x0.c
+++ b/arch/arm/mach-samsung/gpio-s3c24x0.c
@@ -18,7 +18,7 @@
 #include <common.h>
 #include <errno.h>
 #include <io.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 #include <mach/gpio.h>
 
 static const unsigned char group_offset[] =
diff --git a/arch/arm/mach-samsung/include/mach/gpio.h b/arch/arm/mach-samsung/include/mach/gpio.h
index 37db4f5..3723394 100644
--- a/arch/arm/mach-samsung/include/mach/gpio.h
+++ b/arch/arm/mach-samsung/include/mach/gpio.h
@@ -8,17 +8,12 @@
  * but WITHOUT ANY WARRANTY; without even the implied warranty of
  * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
- * MA 02111-1307 USA
  */
 
 #ifndef __ASM_MACH_GPIO_H
 #define __ASM_MACH_GPIO_H
 
-#if defined(CONFIG_CPU_S3C2440) || defined(CONFIG_CPU_S3C2410)
+#ifdef CONFIG_ARCH_S3C24xx
 # include <mach/iomux-s3c24x0.h>
 #endif
 
diff --git a/arch/arm/mach-samsung/include/mach/s3c24xx-generic.h b/arch/arm/mach-samsung/include/mach/s3c-generic.h
similarity index 100%
rename from arch/arm/mach-samsung/include/mach/s3c24xx-generic.h
rename to arch/arm/mach-samsung/include/mach/s3c-generic.h
diff --git a/arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h b/arch/arm/mach-samsung/include/mach/s3c-iomap.h
similarity index 100%
rename from arch/arm/mach-samsung/include/mach/s3c24x0-iomap.h
rename to arch/arm/mach-samsung/include/mach/s3c-iomap.h
diff --git a/arch/arm/mach-samsung/lowlevel-init.S b/arch/arm/mach-samsung/lowlevel-init.S
index e8004e5..8529283 100644
--- a/arch/arm/mach-samsung/lowlevel-init.S
+++ b/arch/arm/mach-samsung/lowlevel-init.S
@@ -19,7 +19,7 @@
  */
 
 #include <config.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-iomap.h>
 
 	.section ".text_bare_init.s3c24x0_disable_wd","ax"
 
diff --git a/drivers/mci/s3c.c b/drivers/mci/s3c.c
index 89c8168..c877e09 100644
--- a/drivers/mci/s3c.c
+++ b/drivers/mci/s3c.c
@@ -41,8 +41,8 @@
 #include <clock.h>
 #include <io.h>
 #include <mach/mci.h>
-#include <mach/s3c24xx-generic.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c-iomap.h>
 
 #define SDICON 0x0
 # define SDICON_SDRESET (1 << 8)
diff --git a/drivers/mtd/nand/nand_s3c2410.c b/drivers/mtd/nand/nand_s3c2410.c
index ed45788..3117614 100644
--- a/drivers/mtd/nand/nand_s3c2410.c
+++ b/drivers/mtd/nand/nand_s3c2410.c
@@ -30,8 +30,8 @@
 #include <init.h>
 #include <linux/mtd/mtd.h>
 #include <linux/mtd/nand.h>
-#include <mach/s3c24xx-generic.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c-iomap.h>
 #include <mach/s3c24x0-nand.h>
 #include <io.h>
 #include <asm-generic/errno.h>
diff --git a/drivers/serial/serial_s3c24x0.c b/drivers/serial/serial_s3c24x0.c
index 1e27d48..4e95e5c 100644
--- a/drivers/serial/serial_s3c24x0.c
+++ b/drivers/serial/serial_s3c24x0.c
@@ -25,8 +25,8 @@
 #include <init.h>
 #include <malloc.h>
 #include <io.h>
-#include <mach/s3c24xx-generic.h>
-#include <mach/s3c24x0-iomap.h>
+#include <mach/s3c-generic.h>
+#include <mach/s3c-iomap.h>
 
 /* Note: Offsets are for little endian access */
 #define ULCON 0x00		/* line control */
diff --git a/drivers/video/s3c.c b/drivers/video/s3c.c
index b17aeb6..a03ec3d 100644
--- a/drivers/video/s3c.c
+++ b/drivers/video/s3c.c
@@ -31,7 +31,7 @@
 #include <errno.h>
 #include <io.h>
 #include <mach/gpio.h>
-#include <mach/s3c24xx-generic.h>
+#include <mach/s3c-generic.h>
 #include <mach/fb.h>
 
 #define LCDCON1 0x00
-- 
1.7.7.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
