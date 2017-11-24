Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eI96v-0008NN-Mj
 for barebox@lists.infradead.ORG; Fri, 24 Nov 2017 08:13:36 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Nov 2017 09:12:36 +0100
Message-Id: <20171124081237.6830-21-s.hauer@pengutronix.de>
In-Reply-To: <20171124081237.6830-1-s.hauer@pengutronix.de>
References: <20171124081237.6830-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 20/21] net: environment: update automounts
To: Barebox List <barebox@lists.infradead.org>

Instead of using "ifup ethx" use "ifup -a" which works with all
network interfaces. Also replace "$ethx.serverip" with
"$global.net.server". This makes the automount independent of
the actual network interface. Remove all board specific
/env/init/automount files which were only there to use eth1 instead
of the previously hardcoded eth0.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 Documentation/user/automount.rst                        |  2 +-
 arch/arm/boards/afi-gf/defaultenv-gf/init/automount     | 10 ----------
 .../defaultenv-pico-hobbit/init/automount               | 11 -----------
 .../zii-imx6q-rdu2/defaultenv-rdu2/init/automount       | 17 -----------------
 defaultenv/defaultenv-2-base/init/automount             |  4 ++--
 5 files changed, 3 insertions(+), 41 deletions(-)
 delete mode 100644 arch/arm/boards/afi-gf/defaultenv-gf/init/automount
 delete mode 100644 arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/init/automount
 delete mode 100644 arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/init/automount

diff --git a/Documentation/user/automount.rst b/Documentation/user/automount.rst
index a5e4313576..7de8261354 100644
--- a/Documentation/user/automount.rst
+++ b/Documentation/user/automount.rst
@@ -13,7 +13,7 @@ Typical usage is for accessing the TFTP server. To set up an automount for a
 TFTP server, the following is required::
 
   mkdir -p /mnt/tftp
-  automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
+  automount /mnt/tftp 'ifup -a && mount -t tftp $global.net.server /mnt/tftp'
 
 This creates an automountpoint on ``/mnt/tftp``. Whenever this directory is accessed,
 the command ``ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp`` is executed.
diff --git a/arch/arm/boards/afi-gf/defaultenv-gf/init/automount b/arch/arm/boards/afi-gf/defaultenv-gf/init/automount
deleted file mode 100644
index 560bdb7975..0000000000
--- a/arch/arm/boards/afi-gf/defaultenv-gf/init/automount
+++ /dev/null
@@ -1,10 +0,0 @@
-#!/bin/sh
-
-# automount tftp server based on $eth1.serverip
-
-mkdir -p /mnt/tftp
-automount /mnt/tftp 'ifup eth1 && mount -t tftp $eth1.serverip /mnt/tftp'
-
-# eth0 is on the mezzanine board
-mkdir -p /mnt/tftp-eth0
-automount /mnt/tftp-eth0 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
diff --git a/arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/init/automount b/arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/init/automount
deleted file mode 100644
index fdcfa36045..0000000000
--- a/arch/arm/boards/technexion-pico-hobbit/defaultenv-pico-hobbit/init/automount
+++ /dev/null
@@ -1,11 +0,0 @@
-#!/bin/sh
-
-# automount tftp server based on $eth1.serverip
-
-mkdir -p /mnt/tftp
-automount /mnt/tftp 'ifup eth1 && mount -t tftp $eth1.serverip /mnt/tftp'
-
-# automount nfs server's nfsroot
-
-mkdir -p /mnt/nfs
-automount /mnt/nfs 'ifup eth1 && mount -t nfs ${eth1.serverip}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
diff --git a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/init/automount b/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/init/automount
deleted file mode 100644
index 6c04eb48a1..0000000000
--- a/arch/arm/boards/zii-imx6q-rdu2/defaultenv-rdu2/init/automount
+++ /dev/null
@@ -1,17 +0,0 @@
-#!/bin/sh
-
-# automount tftp server based on $eth0.serverip
-
-mkdir -p /mnt/tftp
-automount /mnt/tftp 'ifup eth1 && mount -t tftp $eth1.serverip /mnt/tftp'
-
-# automount nfs server's nfsroot
-
-mkdir -p /mnt/nfs
-automount /mnt/nfs 'ifup eth1 && mount -t nfs ${eth1.serverip}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
-
-
-# FAT on usb disk example
-
-#mkdir -p /mnt/fat
-#automount -d /mnt/fat 'usb && [ -e /dev/disk0.0 ] && mount /dev/disk0.0 /mnt/fat'
diff --git a/defaultenv/defaultenv-2-base/init/automount b/defaultenv/defaultenv-2-base/init/automount
index 959b2c148e..5e0cb4d938 100644
--- a/defaultenv/defaultenv-2-base/init/automount
+++ b/defaultenv/defaultenv-2-base/init/automount
@@ -3,12 +3,12 @@
 # automount tftp server based on $eth0.serverip
 
 mkdir -p /mnt/tftp
-automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
+automount /mnt/tftp 'ifup -a && mount -t tftp $global.net.server /mnt/tftp'
 
 # automount nfs server's nfsroot
 
 mkdir -p /mnt/nfs
-automount /mnt/nfs 'ifup eth0 && mount -t nfs ${eth0.serverip}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
+automount /mnt/nfs 'ifup -a && mount -t nfs ${global.net.server}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
 
 
 # FAT on usb disk example
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
