Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihBDX-00083E-PK
 for barebox@lists.infradead.org; Tue, 17 Dec 2019 11:40:45 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1ihBDW-0007Zw-KC
 for barebox@lists.infradead.org; Tue, 17 Dec 2019 12:40:42 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 17 Dec 2019 12:40:42 +0100
Message-Id: <20191217114042.11301-1-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: rdu1: add default environment
To: barebox@lists.infradead.org

Adds scripts for network detection in development case and
autoboot from the SD card.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx51-rdu1/Makefile       |  1 +
 arch/arm/boards/zii-imx51-rdu1/board.c        |  3 +++
 .../zii-imx51-rdu1/defaultenv-rdu1/boot/net   | 24 +++++++++++++++++++
 .../zii-imx51-rdu1/defaultenv-rdu1/boot/nfs   |  6 +++++
 .../defaultenv-rdu1/boot/rdu-default          | 14 +++++++++++
 .../defaultenv-rdu1/network/eth0-discover     |  4 ++++
 .../defaultenv-rdu1/nv/autoboot_abort_key     |  1 +
 .../defaultenv-rdu1/nv/boot.default           |  1 +
 8 files changed, 54 insertions(+)
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/net
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/nfs
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/rdu-default
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/network/eth0-discover
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/nv/autoboot_abort_key
 create mode 100644 arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/nv/boot.default

diff --git a/arch/arm/boards/zii-imx51-rdu1/Makefile b/arch/arm/boards/zii-imx51-rdu1/Makefile
index 604b3621be59..a17cf5684adb 100644
--- a/arch/arm/boards/zii-imx51-rdu1/Makefile
+++ b/arch/arm/boards/zii-imx51-rdu1/Makefile
@@ -1,3 +1,4 @@
 obj-y += board.o
 CFLAGS_pbl-lowlevel.o := -fno-tree-switch-conversion -fno-jump-tables
 lwl-y += lowlevel.o
+bbenv-y += defaultenv-rdu1
diff --git a/arch/arm/boards/zii-imx51-rdu1/board.c b/arch/arm/boards/zii-imx51-rdu1/board.c
index f739f3b7b445..640bb0d1b70c 100644
--- a/arch/arm/boards/zii-imx51-rdu1/board.c
+++ b/arch/arm/boards/zii-imx51-rdu1/board.c
@@ -16,6 +16,7 @@
  */
 
 #include <common.h>
+#include <envfs.h>
 #include <init.h>
 #include <environment.h>
 #include <mach/bbu.h>
@@ -49,6 +50,8 @@ static int zii_rdu1_init(void)
 		BBU_HANDLER_FLAG_DEFAULT |
 		IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER);
 
+	defaultenv_append_directory(defaultenv_rdu1);
+
 	return 0;
 }
 coredevice_initcall(zii_rdu1_init);
diff --git a/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/net b/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/net
new file mode 100644
index 000000000000..4be8e1e2d79b
--- /dev/null
+++ b/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/net
@@ -0,0 +1,24 @@
+#!/bin/sh
+
+path="/mnt/tftp"
+
+# clear seat network config
+global.linux.bootargs.rdu_network=
+
+global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
+
+oftree="${path}/${global.user}-oftree-${global.hostname}"
+if [ -f "${oftree}" ]; then
+	global.bootm.oftree="$oftree"
+fi
+
+nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
+
+ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
+
+initramfs="${path}/${global.user}-initramfs-${global.hostname}"
+if [ -f "${initramfs}" ]; then
+	global.bootm.initrd="$initramfs"
+else
+	global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
+fi
diff --git a/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/nfs b/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/nfs
new file mode 100644
index 000000000000..0a2fa07b16e9
--- /dev/null
+++ b/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/nfs
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+# clear seat network config (not implemented on RDU1 yet)
+#global.linux.bootargs.rdu_network=
+
+boot /mnt/nfs
diff --git a/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/rdu-default b/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/rdu-default
new file mode 100644
index 000000000000..97cc1dcdeab9
--- /dev/null
+++ b/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/boot/rdu-default
@@ -0,0 +1,14 @@
+#!/bin/sh
+
+sp.usb_power=1
+usb
+if [ "$bootsource" = "spi" ]; then
+	boot disk1.0 || boot disk2.0
+else
+	detect mmc0
+	if [ "$mmc0.boot" = "boot0" ]; then
+		boot mmc0.0
+	else
+		boot mmc0.1
+	fi
+fi
diff --git a/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/network/eth0-discover b/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/network/eth0-discover
new file mode 100644
index 000000000000..ce35613ef1b0
--- /dev/null
+++ b/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/network/eth0-discover
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+sp.usb_power=1
+usb
diff --git a/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/nv/autoboot_abort_key b/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/nv/autoboot_abort_key
new file mode 100644
index 000000000000..55920c9a58ca
--- /dev/null
+++ b/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/nv/autoboot_abort_key
@@ -0,0 +1 @@
+ctrl-c
\ No newline at end of file
diff --git a/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/nv/boot.default b/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/nv/boot.default
new file mode 100644
index 000000000000..9076a1e64eb5
--- /dev/null
+++ b/arch/arm/boards/zii-imx51-rdu1/defaultenv-rdu1/nv/boot.default
@@ -0,0 +1 @@
+rdu-default
\ No newline at end of file
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
