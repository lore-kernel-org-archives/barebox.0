Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo4.mail-out.ovh.net ([178.32.228.4])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SOpbI-0002AY-R4
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 12:21:09 +0000
Received: from mail97.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id D2BDF1050791
 for <barebox@lists.infradead.org>; Mon, 30 Apr 2012 14:22:25 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 30 Apr 2012 14:00:07 +0200
Message-Id: <1335787207-27838-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120430115703.GD2992@game.jcrosoft.org>
References: <20120430115703.GD2992@game.jcrosoft.org>
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
Subject: [PATCH 3/3] qemu-malta: add nor flash support
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/mips/boards/qemu-malta/init.c     |   13 +++++++++++++
 arch/mips/configs/qemu-malta_defconfig |    5 +++++
 2 files changed, 18 insertions(+), 0 deletions(-)

diff --git a/arch/mips/boards/qemu-malta/init.c b/arch/mips/boards/qemu-malta/init.c
index 502b346..4709989 100644
--- a/arch/mips/boards/qemu-malta/init.c
+++ b/arch/mips/boards/qemu-malta/init.c
@@ -25,8 +25,21 @@
 #include <ns16550.h>
 #include <mach/hardware.h>
 #include <io.h>
+#include <partition.h>
+#include <sizes.h>
 #include <asm/common.h>
 
+static int malta_devices_init(void)
+{
+	add_cfi_flash_device(0, 0x1e000000, SZ_4M, 0);
+
+	devfs_add_partition("nor0", 0x0, SZ_512K, PARTITION_FIXED, "self");
+	devfs_add_partition("nor0", SZ_512K, SZ_64K, PARTITION_FIXED, "env0");
+
+	return 0;
+}
+device_initcall(malta_devices_init);
+
 static struct NS16550_plat serial_plat = {
 	.clock = 1843200, /* no matter for emulated port */
 	.shift = 0,
diff --git a/arch/mips/configs/qemu-malta_defconfig b/arch/mips/configs/qemu-malta_defconfig
index eac21e7..50e0dc4 100644
--- a/arch/mips/configs/qemu-malta_defconfig
+++ b/arch/mips/configs/qemu-malta_defconfig
@@ -50,6 +50,11 @@ CONFIG_NET_TFTP_PUSH=y
 CONFIG_NET_NETCONSOLE=y
 CONFIG_NET_RESOLV=y
 # CONFIG_SPI is not set
+CONFIG_DRIVER_CFI=y
+# CONFIG_DRIVER_CFI_AMD is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
+# CONFIG_DRIVER_CFI_BANK_WIDTH_2 is not set
+CONFIG_CFI_BUFFER_WRITE=y
 CONFIG_MTD=y
 CONFIG_FS_CRAMFS=y
 CONFIG_FS_FAT=y
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
