Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f46.google.com ([209.85.215.46])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YM9Bk-0001J4-G8
 for barebox@lists.infradead.org; Fri, 13 Feb 2015 05:53:19 +0000
Received: by labpn19 with SMTP id pn19so14355645lab.4
 for <barebox@lists.infradead.org>; Thu, 12 Feb 2015 21:52:51 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Fri, 13 Feb 2015 08:53:14 +0300
Message-Id: <1423806794-23881-4-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1423806794-23881-1-git-send-email-antonynpavlov@gmail.com>
References: <1423806794-23881-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 3/3] MIPS: add gxemul-malta_defconfig
To: barebox@lists.infradead.org

GXemul supports MIPS Malta but with some limitations.
The most notable problems:

  * PCI-enabled barebox just hangs under GXemul;
  * by default gxemul uses 5Kc processor,
    so we have to force MIPS32R1 processor usage.

To fix these problems the special gxemul-malta_defconfig
is introduced and the board's documentation is updated.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/mips/qemu-malta.rst | 17 +++++++---
 arch/mips/configs/gxemul-malta_defconfig | 57 ++++++++++++++++++++++++++++++++
 2 files changed, 70 insertions(+), 4 deletions(-)
 create mode 100644 arch/mips/configs/gxemul-malta_defconfig

diff --git a/Documentation/boards/mips/qemu-malta.rst b/Documentation/boards/mips/qemu-malta.rst
index 22da600..0c4d639 100644
--- a/Documentation/boards/mips/qemu-malta.rst
+++ b/Documentation/boards/mips/qemu-malta.rst
@@ -10,10 +10,6 @@ QEMU run string::
       -nographic -serial stdio -monitor null \
       -bios barebox-flash-image
 
-Also you can use GXemul::
-
-  gxemul -Q -x -e maltabe -M 256 0xbfc00000:barebox-flash-image
-
 
 Little-endian mode
 ------------------
@@ -35,6 +31,19 @@ QEMU run string::
       -bios barebox-flash-image
 
 
+Using GXemul
+------------
+
+GXemul supports MIPS Malta except PCI stuff.
+You can use GXemul to run little-endian barebox (use gxemul-malta_defconfig).
+
+N.B. There is no need to swap words in ``zbarebox.bin`` for little-endian GXemul!
+
+GXemul run string::
+
+  gxemul -Q -e malta -M 256 0xbfc00000:barebox-flash-image
+
+
 Links
 -----
 
diff --git a/arch/mips/configs/gxemul-malta_defconfig b/arch/mips/configs/gxemul-malta_defconfig
new file mode 100644
index 0000000..2352d38
--- /dev/null
+++ b/arch/mips/configs/gxemul-malta_defconfig
@@ -0,0 +1,57 @@
+CONFIG_BUILTIN_DTB=y
+CONFIG_BUILTIN_DTB_NAME="qemu-malta"
+CONFIG_CPU_LITTLE_ENDIAN=y
+CONFIG_CPU_MIPS32_R1=y
+CONFIG_PBL_IMAGE=y
+CONFIG_STACK_SIZE=0x7000
+CONFIG_EXPERIMENTAL=y
+CONFIG_BAUDRATE=38400
+CONFIG_HUSH_FANCY_PROMPT=y
+CONFIG_CMDLINE_EDITING=y
+CONFIG_AUTO_COMPLETE=y
+CONFIG_MENU=y
+CONFIG_PARTITION=y
+# CONFIG_DEFAULT_ENVIRONMENT is not set
+CONFIG_POLLER=y
+CONFIG_LONGHELP=y
+CONFIG_CMD_IOMEM=y
+CONFIG_CMD_IMD=y
+CONFIG_CMD_MEMINFO=y
+CONFIG_CMD_BOOTM_SHOW_TYPE=y
+CONFIG_CMD_GO=y
+CONFIG_CMD_LOADB=y
+CONFIG_CMD_LOADY=y
+CONFIG_CMD_RESET=y
+CONFIG_CMD_PARTITION=y
+CONFIG_CMD_EXPORT=y
+CONFIG_CMD_LOADENV=y
+CONFIG_CMD_PRINTENV=y
+CONFIG_CMD_SAVEENV=y
+CONFIG_CMD_MD5SUM=y
+CONFIG_CMD_SHA1SUM=y
+CONFIG_CMD_SHA256SUM=y
+CONFIG_CMD_UNCOMPRESS=y
+CONFIG_CMD_GETOPT=y
+CONFIG_CMD_SLEEP=y
+CONFIG_CMD_ECHO_E=y
+CONFIG_CMD_EDIT=y
+CONFIG_CMD_LOGIN=y
+CONFIG_CMD_MENU=y
+CONFIG_CMD_MENU_MANAGEMENT=y
+CONFIG_CMD_PASSWD=y
+CONFIG_CMD_READLINE=y
+CONFIG_CMD_TIMEOUT=y
+CONFIG_CMD_CRC=y
+CONFIG_CMD_CRC_CMP=y
+CONFIG_CMD_GPIO=y
+CONFIG_CMD_OF_NODE=y
+CONFIG_CMD_OF_PROPERTY=y
+CONFIG_CMD_OFTREE=y
+CONFIG_CMD_TIME=y
+CONFIG_OFDEVICE=y
+CONFIG_OF_BAREBOX_DRIVERS=y
+# CONFIG_SPI is not set
+CONFIG_FS_CRAMFS=y
+CONFIG_FS_FAT=y
+CONFIG_FS_FAT_WRITE=y
+CONFIG_FS_FAT_LFN=y
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
