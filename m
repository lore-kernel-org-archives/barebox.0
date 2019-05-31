Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWe8M-0007Sn-5X
 for barebox@lists.infradead.org; Fri, 31 May 2019 09:47:35 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1hWe8I-0001n0-PA
 for barebox@lists.infradead.org; Fri, 31 May 2019 11:47:30 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 31 May 2019 11:47:29 +0200
Message-Id: <20190531094730.8265-2-l.stach@pengutronix.de>
In-Reply-To: <20190531094730.8265-1-l.stach@pengutronix.de>
References: <20190531094730.8265-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/3] ARM: zii-imx8mq-dev: add defaultenv with simple boot
 configuration
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/boards/zii-imx8mq-dev/Makefile       |  1 +
 arch/arm/boards/zii-imx8mq-dev/board.c        |  3 +++
 .../defaultenv-imx8mq-zii-dev/boot/net        | 24 +++++++++++++++++++
 .../defaultenv-imx8mq-zii-dev/boot/nfs        |  6 +++++
 .../boot/rdu-default                          |  7 ++++++
 .../nv/autoboot_abort_key                     |  1 +
 .../defaultenv-imx8mq-zii-dev/nv/boot.default |  1 +
 7 files changed, 43 insertions(+)
 create mode 100644 arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/net
 create mode 100644 arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/nfs
 create mode 100644 arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/rdu-default
 create mode 100644 arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/nv/autoboot_abort_key
 create mode 100644 arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/nv/boot.default

diff --git a/arch/arm/boards/zii-imx8mq-dev/Makefile b/arch/arm/boards/zii-imx8mq-dev/Makefile
index 2995f06f0fd9..d0148b506752 100644
--- a/arch/arm/boards/zii-imx8mq-dev/Makefile
+++ b/arch/arm/boards/zii-imx8mq-dev/Makefile
@@ -1,2 +1,3 @@
 obj-y += board.o
 lwl-y += lowlevel.o ddr_init.o ddrphy_train.o
+bbenv-y += defaultenv-imx8mq-zii-dev
diff --git a/arch/arm/boards/zii-imx8mq-dev/board.c b/arch/arm/boards/zii-imx8mq-dev/board.c
index 4dbe23f58ce2..144adb9cef18 100644
--- a/arch/arm/boards/zii-imx8mq-dev/board.c
+++ b/arch/arm/boards/zii-imx8mq-dev/board.c
@@ -6,6 +6,7 @@
 
 #include <bootsource.h>
 #include <common.h>
+#include <envfs.h>
 #include <init.h>
 #include <asm/memory.h>
 #include <linux/sizes.h>
@@ -25,6 +26,8 @@ static int zii_imx8mq_dev_init(void)
 	else
 		of_device_enable_path("/chosen/environment-sd");
 
+	defaultenv_append_directory(defaultenv_imx8mq_zii_dev);
+
 	return 0;
 }
 device_initcall(zii_imx8mq_dev_init);
diff --git a/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/net b/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/net
new file mode 100644
index 000000000000..4090c2f4a9ae
--- /dev/null
+++ b/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/net
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
\ No newline at end of file
diff --git a/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/nfs b/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/nfs
new file mode 100644
index 000000000000..cd3a545409cb
--- /dev/null
+++ b/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/nfs
@@ -0,0 +1,6 @@
+#!/bin/sh
+
+# clear seat network config
+global.linux.bootargs.rdu_network=
+
+boot /mnt/nfs
diff --git a/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/rdu-default b/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/rdu-default
new file mode 100644
index 000000000000..f5d8fe2125d0
--- /dev/null
+++ b/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/boot/rdu-default
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+if [ "$bootsource_instance" = "0" ]; then
+	boot mmc0
+else
+	boot mmc1
+fi
diff --git a/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/nv/autoboot_abort_key b/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/nv/autoboot_abort_key
new file mode 100644
index 000000000000..55920c9a58ca
--- /dev/null
+++ b/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/nv/autoboot_abort_key
@@ -0,0 +1 @@
+ctrl-c
\ No newline at end of file
diff --git a/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/nv/boot.default b/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/nv/boot.default
new file mode 100644
index 000000000000..9076a1e64eb5
--- /dev/null
+++ b/arch/arm/boards/zii-imx8mq-dev/defaultenv-imx8mq-zii-dev/nv/boot.default
@@ -0,0 +1 @@
+rdu-default
\ No newline at end of file
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
