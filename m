Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pd0-f179.google.com ([209.85.192.179])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Uj9g5-0004fj-7m
 for barebox@lists.infradead.org; Sun, 02 Jun 2013 14:54:38 +0000
Received: by mail-pd0-f179.google.com with SMTP id q11so4482432pdj.10
 for <barebox@lists.infradead.org>; Sun, 02 Jun 2013 07:54:14 -0700 (PDT)
From: Masaki Muranaka <monaka@monami-ya.jp>
Date: Sun,  2 Jun 2013 23:53:47 +0900
Message-Id: <1370184829-66576-1-git-send-email-monaka@monami-ya.com>
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
Subject: [PATCH 1/3] Remove unnesessory malloc.h inclusions.
To: barebox@lists.infradead.org

---
 commands/barebox-update.c | 1 -
 commands/bootm.c          | 1 -
 commands/cat.c            | 1 -
 commands/cp.c             | 1 -
 commands/crc.c            | 1 -
 commands/dfu.c            | 1 -
 commands/edit.c           | 1 -
 commands/exec.c           | 1 -
 commands/global.c         | 1 -
 commands/i2c.c            | 1 -
 commands/insmod.c         | 1 -
 commands/let.c            | 1 -
 commands/linux16.c        | 1 -
 commands/loadxy.c         | 1 -
 commands/ls.c             | 1 -
 commands/md.c             | 1 -
 commands/memcmp.c         | 1 -
 commands/memcpy.c         | 1 -
 commands/meminfo.c        | 1 -
 commands/memset.c         | 1 -
 commands/miitool.c        | 1 -
 commands/mm.c             | 1 -
 commands/mw.c             | 1 -
 commands/nand.c           | 1 -
 commands/nandtest.c       | 1 -
 commands/of_node.c        | 1 -
 commands/oftree.c         | 1 -
 commands/partition.c      | 1 -
 commands/readline.c       | 1 -
 commands/readlink.c       | 1 -
 commands/spi.c            | 1 -
 commands/splash.c         | 1 -
 commands/time.c           | 1 -
 commands/ubiformat.c      | 1 -
 commands/uimage.c         | 1 -
 commands/usbserial.c      | 1 -
 common/binfmt.c           | 1 -
 common/block.c            | 1 -
 common/bootargs.c         | 1 -
 common/console.c          | 1 -
 common/filetype.c         | 1 -
 common/globalvar.c        | 1 -
 common/image.c            | 1 -
 common/menu.c             | 1 -
 common/module.c           | 2 --
 common/oftree.c           | 1 -
 common/partitions.c       | 1 -
 common/resource.c         | 1 -
 48 files changed, 49 deletions(-)

diff --git a/commands/barebox-update.c b/commands/barebox-update.c
index f550572..bb6e108 100644
--- a/commands/barebox-update.c
+++ b/commands/barebox-update.c
@@ -18,7 +18,6 @@
 #include <common.h>
 #include <command.h>
 #include <getopt.h>
-#include <malloc.h>
 #include <errno.h>
 #include <bbu.h>
 #include <fs.h>
diff --git a/commands/bootm.c b/commands/bootm.c
index 5dd1703..d2602b0 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -24,7 +24,6 @@
 #include <driver.h>
 #include <command.h>
 #include <image.h>
-#include <malloc.h>
 #include <environment.h>
 #include <asm/byteorder.h>
 #include <xfuncs.h>
diff --git a/commands/cat.c b/commands/cat.c
index 1c112fc..476e1bb 100644
--- a/commands/cat.c
+++ b/commands/cat.c
@@ -27,7 +27,6 @@
 #include <linux/ctype.h>
 #include <errno.h>
 #include <xfuncs.h>
-#include <malloc.h>
 
 #define BUFSIZE 1024
 
diff --git a/commands/cp.c b/commands/cp.c
index 45f08d8..03369d9 100644
--- a/commands/cp.c
+++ b/commands/cp.c
@@ -27,7 +27,6 @@
 #include <linux/stat.h>
 #include <libbb.h>
 #include <fs.h>
-#include <malloc.h>
 #include <libgen.h>
 #include <getopt.h>
 
diff --git a/commands/crc.c b/commands/crc.c
index a0071b0..78b3eca 100644
--- a/commands/crc.c
+++ b/commands/crc.c
@@ -24,7 +24,6 @@
 #include <fcntl.h>
 #include <errno.h>
 #include <xfuncs.h>
-#include <malloc.h>
 #include <linux/ctype.h>
 
 static int file_crc(char* filename, ulong start, ulong size, ulong *crc,
diff --git a/commands/dfu.c b/commands/dfu.c
index af6573a..b1e54b9 100644
--- a/commands/dfu.c
+++ b/commands/dfu.c
@@ -19,7 +19,6 @@
 #include <common.h>
 #include <command.h>
 #include <errno.h>
-#include <malloc.h>
 #include <getopt.h>
 #include <fs.h>
 #include <xfuncs.h>
diff --git a/commands/edit.c b/commands/edit.c
index 295d0a7..8c72521 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -22,7 +22,6 @@
 
 #include <common.h>
 #include <command.h>
-#include <malloc.h>
 #include <fs.h>
 #include <linux/ctype.h>
 #include <fcntl.h>
diff --git a/commands/exec.c b/commands/exec.c
index bd7d54a..af08f2a 100644
--- a/commands/exec.c
+++ b/commands/exec.c
@@ -23,7 +23,6 @@
 #include <fcntl.h>
 #include <linux/stat.h>
 #include <errno.h>
-#include <malloc.h>
 #include <xfuncs.h>
 
 static int do_exec(int argc, char *argv[])
diff --git a/commands/global.c b/commands/global.c
index 427a231..e3e7a58 100644
--- a/commands/global.c
+++ b/commands/global.c
@@ -17,7 +17,6 @@
  *
  */
 #include <common.h>
-#include <malloc.h>
 #include <command.h>
 #include <globalvar.h>
 #include <environment.h>
diff --git a/commands/i2c.c b/commands/i2c.c
index 626255d..f3ec556 100644
--- a/commands/i2c.c
+++ b/commands/i2c.c
@@ -18,7 +18,6 @@
 #include <common.h>
 #include <command.h>
 #include <errno.h>
-#include <malloc.h>
 #include <getopt.h>
 #include <i2c/i2c.h>
 
diff --git a/commands/insmod.c b/commands/insmod.c
index f547e9d..3a0dfbc 100644
--- a/commands/insmod.c
+++ b/commands/insmod.c
@@ -3,7 +3,6 @@
 #include <module.h>
 #include <errno.h>
 #include <fs.h>
-#include <malloc.h>
 
 static int do_insmod(int argc, char *argv[])
 {
diff --git a/commands/let.c b/commands/let.c
index 644ede5..cae6c97 100644
--- a/commands/let.c
+++ b/commands/let.c
@@ -20,7 +20,6 @@
 #include <environment.h>
 #include <errno.h>
 #include <init.h>
-#include <malloc.h>
 #include <xfuncs.h>
 #include <math.h>
 
diff --git a/commands/linux16.c b/commands/linux16.c
index 30fa2de..3ce49dc 100644
--- a/commands/linux16.c
+++ b/commands/linux16.c
@@ -25,7 +25,6 @@
 #include <fs.h>
 #include <errno.h>
 #include <getopt.h>
-#include <malloc.h>
 #include <boot.h>
 #include <asm/syslib.h>
 
diff --git a/commands/loadxy.c b/commands/loadxy.c
index 52ecdca..1059512 100644
--- a/commands/loadxy.c
+++ b/commands/loadxy.c
@@ -36,7 +36,6 @@
 #include <getopt.h>
 #include <fcntl.h>
 #include <fs.h>
-#include <malloc.h>
 
 #define DEF_FILE	"image.bin"
 
diff --git a/commands/ls.c b/commands/ls.c
index f2d9903..9aa8d41 100644
--- a/commands/ls.c
+++ b/commands/ls.c
@@ -22,7 +22,6 @@
 #include <fs.h>
 #include <linux/stat.h>
 #include <errno.h>
-#include <malloc.h>
 #include <getopt.h>
 #include <stringlist.h>
 
diff --git a/commands/md.c b/commands/md.c
index 03c5905..46d17a5 100644
--- a/commands/md.c
+++ b/commands/md.c
@@ -25,7 +25,6 @@
 #include <command.h>
 #include <init.h>
 #include <driver.h>
-#include <malloc.h>
 #include <errno.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/commands/memcmp.c b/commands/memcmp.c
index 4a03862..ddb5dbf 100644
--- a/commands/memcmp.c
+++ b/commands/memcmp.c
@@ -25,7 +25,6 @@
 #include <command.h>
 #include <init.h>
 #include <driver.h>
-#include <malloc.h>
 #include <errno.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/commands/memcpy.c b/commands/memcpy.c
index 98f099f..939451e 100644
--- a/commands/memcpy.c
+++ b/commands/memcpy.c
@@ -25,7 +25,6 @@
 #include <command.h>
 #include <init.h>
 #include <driver.h>
-#include <malloc.h>
 #include <errno.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/commands/meminfo.c b/commands/meminfo.c
index 6e1e8c3..7b2019c 100644
--- a/commands/meminfo.c
+++ b/commands/meminfo.c
@@ -19,7 +19,6 @@
 #include <common.h>
 #include <command.h>
 #include <complete.h>
-#include <malloc.h>
 
 static int do_meminfo(int argc, char *argv[])
 {
diff --git a/commands/memset.c b/commands/memset.c
index 48e55bc..57bce5f 100644
--- a/commands/memset.c
+++ b/commands/memset.c
@@ -25,7 +25,6 @@
 #include <command.h>
 #include <init.h>
 #include <driver.h>
-#include <malloc.h>
 #include <errno.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/commands/miitool.c b/commands/miitool.c
index 3a9ac45..495a285 100644
--- a/commands/miitool.c
+++ b/commands/miitool.c
@@ -29,7 +29,6 @@
 #include <command.h>
 #include <init.h>
 #include <driver.h>
-#include <malloc.h>
 #include <errno.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/commands/mm.c b/commands/mm.c
index f51fd27..442f804 100644
--- a/commands/mm.c
+++ b/commands/mm.c
@@ -19,7 +19,6 @@
 #include <command.h>
 #include <init.h>
 #include <driver.h>
-#include <malloc.h>
 #include <errno.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/commands/mw.c b/commands/mw.c
index d7d73a8..01d08ff 100644
--- a/commands/mw.c
+++ b/commands/mw.c
@@ -25,7 +25,6 @@
 #include <command.h>
 #include <init.h>
 #include <driver.h>
-#include <malloc.h>
 #include <errno.h>
 #include <fs.h>
 #include <fcntl.h>
diff --git a/commands/nand.c b/commands/nand.c
index 39fb64e..62b7405 100644
--- a/commands/nand.c
+++ b/commands/nand.c
@@ -19,7 +19,6 @@
 #include <fs.h>
 #include <linux/stat.h>
 #include <errno.h>
-#include <malloc.h>
 #include <getopt.h>
 #include <xfuncs.h>
 #include <init.h>
diff --git a/commands/nandtest.c b/commands/nandtest.c
index ba15ecf..9f7cbff 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -15,7 +15,6 @@
 #include <command.h>
 #include <fs.h>
 #include <errno.h>
-#include <malloc.h>
 #include <getopt.h>
 #include <ioctl.h>
 #include <linux/mtd/mtd-abi.h>
diff --git a/commands/of_node.c b/commands/of_node.c
index 0249d97..d9803e6 100644
--- a/commands/of_node.c
+++ b/commands/of_node.c
@@ -23,7 +23,6 @@
 #include <of.h>
 #include <command.h>
 #include <fs.h>
-#include <malloc.h>
 #include <linux/ctype.h>
 #include <asm/byteorder.h>
 #include <errno.h>
diff --git a/commands/oftree.c b/commands/oftree.c
index 468235a..f0f502a 100644
--- a/commands/oftree.c
+++ b/commands/oftree.c
@@ -29,7 +29,6 @@
 #include <of.h>
 #include <command.h>
 #include <fs.h>
-#include <malloc.h>
 #include <linux/ctype.h>
 #include <linux/err.h>
 #include <asm/byteorder.h>
diff --git a/commands/partition.c b/commands/partition.c
index fdd6041..01ce941 100644
--- a/commands/partition.c
+++ b/commands/partition.c
@@ -31,7 +31,6 @@
 #include <command.h>
 #include <complete.h>
 #include <driver.h>
-#include <malloc.h>
 #include <partition.h>
 #include <errno.h>
 #include <xfuncs.h>
diff --git a/commands/readline.c b/commands/readline.c
index 60670fa..7d13ab2 100644
--- a/commands/readline.c
+++ b/commands/readline.c
@@ -19,7 +19,6 @@
 
 #include <common.h>
 #include <command.h>
-#include <malloc.h>
 #include <xfuncs.h>
 #include <environment.h>
 
diff --git a/commands/readlink.c b/commands/readlink.c
index d2671e0..8f16b31 100644
--- a/commands/readlink.c
+++ b/commands/readlink.c
@@ -25,7 +25,6 @@
 #include <libgen.h>
 #include <environment.h>
 #include <fs.h>
-#include <malloc.h>
 #include <getopt.h>
 
 static int do_readlink(int argc, char *argv[])
diff --git a/commands/spi.c b/commands/spi.c
index 2f6b430..c0da77b 100644
--- a/commands/spi.c
+++ b/commands/spi.c
@@ -8,7 +8,6 @@
 #include <common.h>
 #include <command.h>
 #include <errno.h>
-#include <malloc.h>
 #include <getopt.h>
 #include <spi/spi.h>
 
diff --git a/commands/splash.c b/commands/splash.c
index 0955c01..d69c7b5 100644
--- a/commands/splash.c
+++ b/commands/splash.c
@@ -1,7 +1,6 @@
 #include <common.h>
 #include <command.h>
 #include <errno.h>
-#include <malloc.h>
 #include <getopt.h>
 #include <fb.h>
 #include <gui/image_renderer.h>
diff --git a/commands/time.c b/commands/time.c
index 987c25e..b40bd59 100644
--- a/commands/time.c
+++ b/commands/time.c
@@ -2,7 +2,6 @@
 #include <command.h>
 #include <clock.h>
 #include <asm-generic/div64.h>
-#include <malloc.h>
 
 static int do_time(int argc, char *argv[])
 {
diff --git a/commands/ubiformat.c b/commands/ubiformat.c
index 121816f..d508119 100644
--- a/commands/ubiformat.c
+++ b/commands/ubiformat.c
@@ -37,7 +37,6 @@
 #include <crc.h>
 #include <stdlib.h>
 #include <clock.h>
-#include <malloc.h>
 #include <ioctl.h>
 #include <libbb.h>
 #include <linux/mtd/mtd.h>
diff --git a/commands/uimage.c b/commands/uimage.c
index 345e496..415347c 100644
--- a/commands/uimage.c
+++ b/commands/uimage.c
@@ -4,7 +4,6 @@
 #include <libbb.h>
 #include <fcntl.h>
 #include <fs.h>
-#include <malloc.h>
 #include <errno.h>
 #include <getopt.h>
 
diff --git a/commands/usbserial.c b/commands/usbserial.c
index a884a28..041d7f2 100644
--- a/commands/usbserial.c
+++ b/commands/usbserial.c
@@ -21,7 +21,6 @@
 #include <common.h>
 #include <command.h>
 #include <errno.h>
-#include <malloc.h>
 #include <getopt.h>
 #include <fs.h>
 #include <xfuncs.h>
diff --git a/common/binfmt.c b/common/binfmt.c
index 7dcf5d7..5073549 100644
--- a/common/binfmt.c
+++ b/common/binfmt.c
@@ -7,7 +7,6 @@
 #include <common.h>
 #include <binfmt.h>
 #include <libbb.h>
-#include <malloc.h>
 #include <command.h>
 #include <errno.h>
 
diff --git a/common/block.c b/common/block.c
index 120d659..9855f8f 100644
--- a/common/block.c
+++ b/common/block.c
@@ -18,7 +18,6 @@
  */
 #include <common.h>
 #include <block.h>
-#include <malloc.h>
 #include <linux/err.h>
 #include <linux/list.h>
 #include <dma.h>
diff --git a/common/bootargs.c b/common/bootargs.c
index 6624f72..660f5f5 100644
--- a/common/bootargs.c
+++ b/common/bootargs.c
@@ -18,7 +18,6 @@
  */
 #include <common.h>
 #include <boot.h>
-#include <malloc.h>
 #include <magicvar.h>
 #include <globalvar.h>
 #include <environment.h>
diff --git a/common/console.c b/common/console.c
index a0a06f6..86aecbe 100644
--- a/common/console.c
+++ b/common/console.c
@@ -20,7 +20,6 @@
 #include <config.h>
 #include <common.h>
 #include <stdarg.h>
-#include <malloc.h>
 #include <param.h>
 #include <console.h>
 #include <driver.h>
diff --git a/common/filetype.c b/common/filetype.c
index 1ff3dd2..78f23fc 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -21,7 +21,6 @@
 #include <asm/unaligned.h>
 #include <fcntl.h>
 #include <fs.h>
-#include <malloc.h>
 #include <errno.h>
 
 struct filetype_str {
diff --git a/common/globalvar.c b/common/globalvar.c
index a8aaa72..ebf6be3 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -1,5 +1,4 @@
 #include <common.h>
-#include <malloc.h>
 #include <globalvar.h>
 #include <init.h>
 
diff --git a/common/image.c b/common/image.c
index 9252d5e..ceb216f 100644
--- a/common/image.c
+++ b/common/image.c
@@ -25,7 +25,6 @@
 #include <rtc.h>
 #include <errno.h>
 #include <fcntl.h>
-#include <malloc.h>
 #include <fs.h>
 #else
 #include <time.h>
diff --git a/common/menu.c b/common/menu.c
index a672e59..cb7f684 100644
--- a/common/menu.c
+++ b/common/menu.c
@@ -21,7 +21,6 @@
 #include <environment.h>
 #include <init.h>
 #include <menu.h>
-#include <malloc.h>
 #include <xfuncs.h>
 #include <errno.h>
 #include <readkey.h>
diff --git a/common/module.c b/common/module.c
index 109fe5c..50f3a7d 100644
--- a/common/module.c
+++ b/common/module.c
@@ -18,8 +18,6 @@
 #include <errno.h>
 #include <module.h>
 #include <elf.h>
-#include <malloc.h>
-#include <xfuncs.h>
 #include <command.h>
 #include <fs.h>
 #include <kallsyms.h>
diff --git a/common/oftree.c b/common/oftree.c
index 776d301..ae62262 100644
--- a/common/oftree.c
+++ b/common/oftree.c
@@ -4,7 +4,6 @@
 #include <of.h>
 #include <command.h>
 #include <fs.h>
-#include <malloc.h>
 #include <linux/ctype.h>
 #include <asm/byteorder.h>
 #include <errno.h>
diff --git a/common/partitions.c b/common/partitions.c
index 683b258..eee3210 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -22,7 +22,6 @@
  * @todo Reliable size detection for BIOS based disks (on x86 only)
  */
 #include <common.h>
-#include <malloc.h>
 #include <errno.h>
 #include <block.h>
 #include <asm/unaligned.h>
diff --git a/common/resource.c b/common/resource.c
index 5795e79..954357e 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -16,7 +16,6 @@
  * GNU General Public License for more details.
  */
 #include <common.h>
-#include <malloc.h>
 #include <errno.h>
 #include <init.h>
 #include <linux/ioport.h>
-- 
1.8.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
