Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTzsq-0008Ef-Jv
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 18:52:55 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 19:52:47 +0100
Message-Id: <1351795968-2352-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351795968-2352-1-git-send-email-s.hauer@pengutronix.de>
References: <1351795968-2352-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] defenv-2: remove some helper scripts
To: barebox@lists.infradead.org

The added complexity of bootargs-ip-* and bootargs-root-* makes
understanding defenv-2 more complicated. remove them and open
code the scripts instead in their users.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |    2 +-
 arch/arm/boards/pcm038/env/boot/nand-ubi           |    2 +-
 defaultenv-2/base/bin/bootargs-ip-barebox          |    7 ------
 defaultenv-2/base/bin/bootargs-ip-dhcp             |    5 ----
 defaultenv-2/base/bin/bootargs-ip-none             |    5 ----
 defaultenv-2/base/bin/bootargs-root-disk           |   26 --------------------
 defaultenv-2/base/bin/bootargs-root-ext            |   12 ---------
 defaultenv-2/base/bin/bootargs-root-initrd         |   16 ------------
 defaultenv-2/base/bin/bootargs-root-jffs2          |   21 ----------------
 defaultenv-2/base/bin/bootargs-root-nfs            |   20 ---------------
 defaultenv-2/base/bin/bootargs-root-ubi            |   24 ------------------
 defaultenv-2/base/boot/net                         |    2 +-
 defaultenv-2/base/data/boot-template               |    4 +--
 13 files changed, 4 insertions(+), 142 deletions(-)
 delete mode 100644 defaultenv-2/base/bin/bootargs-ip-barebox
 delete mode 100644 defaultenv-2/base/bin/bootargs-ip-dhcp
 delete mode 100644 defaultenv-2/base/bin/bootargs-ip-none
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-disk
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-ext
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-initrd
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-jffs2
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-nfs
 delete mode 100644 defaultenv-2/base/bin/bootargs-root-ubi

diff --git a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3 b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
index 7d7eb50..b2325af 100644
--- a/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
+++ b/arch/arm/boards/crystalfontz-cfa10036/env/boot/mmc-ext3
@@ -7,4 +7,4 @@ fi
 
 global.bootm.image="/mnt/disk0.1/zImage-cfa10036"
 global.bootm.oftree="/mnt/disk0.1/oftree-cfa10036"
-bootargs-root-ext -r 3 -m mmcblk0p3
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p3 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/pcm038/env/boot/nand-ubi b/arch/arm/boards/pcm038/env/boot/nand-ubi
index a3f748e..67b0cb4 100644
--- a/arch/arm/boards/pcm038/env/boot/nand-ubi
+++ b/arch/arm/boards/pcm038/env/boot/nand-ubi
@@ -7,4 +7,4 @@ fi
 
 global.bootm.image="/dev/nand0.kernel.bb"
 #global.bootm.oftree="/env/oftree"
-bootargs-root-ubi -r root -m nand0.root
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/defaultenv-2/base/bin/bootargs-ip-barebox b/defaultenv-2/base/bin/bootargs-ip-barebox
deleted file mode 100644
index 5a3b984..0000000
--- a/defaultenv-2/base/bin/bootargs-ip-barebox
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-# pass barebox ip settings for eth0 to Linux
-
-ifup eth0
-
-global.linux.bootargs.dyn.ip="ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0:"
diff --git a/defaultenv-2/base/bin/bootargs-ip-dhcp b/defaultenv-2/base/bin/bootargs-ip-dhcp
deleted file mode 100644
index dec8ae4..0000000
--- a/defaultenv-2/base/bin/bootargs-ip-dhcp
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-# Do dhcp in Linux
-
-global.linux.bootargs.dyn.ip="ip=dhcp"
diff --git a/defaultenv-2/base/bin/bootargs-ip-none b/defaultenv-2/base/bin/bootargs-ip-none
deleted file mode 100644
index 88aaa21..0000000
--- a/defaultenv-2/base/bin/bootargs-ip-none
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-# disable ip setup in Linux
-
-global.linux.bootargs.dyn.ip="ip=none"
diff --git a/defaultenv-2/base/bin/bootargs-root-disk b/defaultenv-2/base/bin/bootargs-root-disk
deleted file mode 100644
index aa60cf3..0000000
--- a/defaultenv-2/base/bin/bootargs-root-disk
+++ /dev/null
@@ -1,26 +0,0 @@
-#!/bin/sh
-
-usage="$0 [OPTIONS]\n -p <partition>\n -t <fstype>"
-
-while getopt "p:t:h" opt; do
-	if [ ${opt} = p ]; then
-		part=${OPTARG}
-	elif [ ${opt} = t ]; then
-		fstype=${OPTARG}
-	elif [ ${opt} = h ]; then
-		echo -e "$usage"
-		exit 0
-	fi
-done
-
-if [ -z "${part}" ]; then
-	echo "$0: no partition given"
-	exit 1
-fi
-
-if [ -z "${fstype}" ]; then
-	echo "$0: no filesystem type given"
-	exit 1
-fi
-
-global.linux.bootargs.dyn.root="root=/dev/$part rootfstype=$fstype rootwait"
diff --git a/defaultenv-2/base/bin/bootargs-root-ext b/defaultenv-2/base/bin/bootargs-root-ext
deleted file mode 100644
index dbdddb9..0000000
--- a/defaultenv-2/base/bin/bootargs-root-ext
+++ /dev/null
@@ -1,12 +0,0 @@
-#!/bin/sh
-
-while getopt "m:r:" opt; do
-	if [ ${opt} = m ]; then
-		part=${OPTARG}
-	fi
-	if [ ${opt} = r ]; then
-		type=${OPTARG}
-	fi
-done
-
-global.linux.bootargs.dyn.root="root=/dev/$part rootfstype=ext$type rootwait"
diff --git a/defaultenv-2/base/bin/bootargs-root-initrd b/defaultenv-2/base/bin/bootargs-root-initrd
deleted file mode 100644
index cc711a1..0000000
--- a/defaultenv-2/base/bin/bootargs-root-initrd
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-rdinit="/sbin/init"
-
-usage="$0 [OPTIONS]\n -i <rdinitpath> (/sbin/init)"
-
-while getopt "i:h" opt; do
-	if [ ${opt} = i ]; then
-		rdinit=${OPTARG}
-	elif [ ${opt} = h ]; then
-		echo -e "$usage"
-		exit 0
-	fi
-done
-
-global.linux.bootargs.dyn.root="root=/dev/ram0 rdinit=${rdinit}"
diff --git a/defaultenv-2/base/bin/bootargs-root-jffs2 b/defaultenv-2/base/bin/bootargs-root-jffs2
deleted file mode 100644
index a8eb5e7..0000000
--- a/defaultenv-2/base/bin/bootargs-root-jffs2
+++ /dev/null
@@ -1,21 +0,0 @@
-#!/bin/sh
-
-mtd=
-
-usage="$0 [OPTIONS]\n -m <mtd>"
-
-while getopt "m:h" opt; do
-	if [ ${opt} = m ]; then
-		mtd=${OPTARG}
-	elif [ ${opt} = h ]; then
-		echo -e "$usage"
-		exit 0
-	fi
-done
-
-if [ -z "$mtd" ]; then
-	echo -e "$usage"
-	exit 1
-fi
-
-global.linux.bootargs.dyn.root="root=$mtd rootfstype=jffs2"
diff --git a/defaultenv-2/base/bin/bootargs-root-nfs b/defaultenv-2/base/bin/bootargs-root-nfs
deleted file mode 100644
index 355f93d..0000000
--- a/defaultenv-2/base/bin/bootargs-root-nfs
+++ /dev/null
@@ -1,20 +0,0 @@
-#!/bin/sh
-
-usage="$0 [OPTIONS]\n -n <nfspath>\n -s <serverip>"
-
-while getopt "n:s:h" opt; do
-	if [ ${opt} = n ]; then
-		nfsroot=${OPTARG}
-	elif [ ${opt} = s ]; then
-		serverip=${OPTARG}
-	elif [ ${opt} = h ]; then
-		echo -e "$usage"
-		exit 0
-	fi
-done
-
-if [ -n ${serverip} ]; then
-	nfsroot="$serverip:$nfsroot"
-fi
-
-global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
diff --git a/defaultenv-2/base/bin/bootargs-root-ubi b/defaultenv-2/base/bin/bootargs-root-ubi
deleted file mode 100644
index 4260336..0000000
--- a/defaultenv-2/base/bin/bootargs-root-ubi
+++ /dev/null
@@ -1,24 +0,0 @@
-#!/bin/sh
-
-ubiroot=root
-mtd=
-
-usage="$0 [OPTIONS]\n -r <ubiroot> (root)\n -m <mtd>"
-
-while getopt "m:r:h" opt; do
-	if [ ${opt} = r ]; then
-		ubiroot=${OPTARG}
-	elif [ ${opt} = m ]; then
-		mtd=${OPTARG}
-	elif [ ${opt} = h ]; then
-		echo -e "$usage"
-		exit 0
-	fi
-done
-
-if [ -z "$mtd" ]; then
-	echo -e "$usage"
-	exit 1
-fi
-
-global.linux.bootargs.dyn.root="root=ubi0:$ubiroot ubi.mtd=$mtd rootfstype=ubifs"
diff --git a/defaultenv-2/base/boot/net b/defaultenv-2/base/boot/net
index 922bef1..90c25aa 100644
--- a/defaultenv-2/base/boot/net
+++ b/defaultenv-2/base/boot/net
@@ -11,4 +11,4 @@ global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
 #global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
 nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
 bootargs-ip
-bootargs-root-nfs -n "$nfsroot"
+global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
diff --git a/defaultenv-2/base/data/boot-template b/defaultenv-2/base/data/boot-template
index 1cacf18..9297499 100644
--- a/defaultenv-2/base/data/boot-template
+++ b/defaultenv-2/base/data/boot-template
@@ -11,6 +11,4 @@ global.bootm.image=<path to image>
 
 #bootargs-ip
 
-#bootargs-root-nfs -n "<path on server>" -s <serverip>
-#bootargs-root-jffs2 -m <mtdname>
-#bootargs-root-ubi -r <volume> -m <mtdname>
+global.linux.bootargs.dyn.root="root=<rootfs here>"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
