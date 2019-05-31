Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWeoj-00052W-T1
 for barebox@lists.infradead.org; Fri, 31 May 2019 10:31:23 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1hWeoi-0005rd-H2
 for barebox@lists.infradead.org; Fri, 31 May 2019 12:31:20 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 31 May 2019 12:31:13 +0200
Message-Id: <20190531103116.27378-1-l.stach@pengutronix.de>
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
Subject: [PATCH 1/4] ARM: rdu2: extend environment for netboot
To: barebox@lists.infradead.org

This adds the necessary scripts to clear the seat network
configuration and reset the switch in the development case.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 .../zii-imx6q-rdu2/defaultenv-rdu2/boot/net   | 24 +++++++++++++++++++
 .../zii-imx6q-rdu2/defaultenv-rdu2/boot/nfs   |  7 ++++++
 .../defaultenv-rdu2/boot/rdu-default          |  4 ++++
 .../defaultenv-rdu2/network/eth0-discover     |  4 ++++
 .../defaultenv-rdu2/nv/autoboot_abort_key     |  1 +
 .../defaultenv-rdu2/nv/boot.default           |  2 +-
 6 files changed, 41 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/net
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/nfs
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth0-discover
 create mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/autoboot_abort_key

diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/net b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/net
new file mode 100644
index 000000000000..4090c2f4a9ae
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/net
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
diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/nfs b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/nfs
new file mode 100644
index 000000000000..4f9671f9cd20
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/nfs
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+# clear seat network config
+global.linux.bootargs.rdu_network=
+
+backlight0.brightness=0
+boot /mnt/nfs
diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default
new file mode 100644
index 000000000000..40346f69f4d9
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/boot/rdu-default
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+backlight0.brightness=0
+boot mmc1
\ No newline at end of file
diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth0-discover b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth0-discover
new file mode 100644
index 000000000000..00f312011549
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/network/eth0-discover
@@ -0,0 +1,4 @@
+#!/bin/sh
+
+# reset switch to clear DSA config
+rave_reset_switch
diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/autoboot_abort_key b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/autoboot_abort_key
new file mode 100644
index 000000000000..55920c9a58ca
--- /dev/null
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/autoboot_abort_key
@@ -0,0 +1 @@
+ctrl-c
\ No newline at end of file
diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/boot.default b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/boot.default
index 3cfe9bafdca5..9076a1e64eb5 100644
--- a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/boot.default
+++ b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/nv/boot.default
@@ -1 +1 @@
-mmc1
\ No newline at end of file
+rdu-default
\ No newline at end of file
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
