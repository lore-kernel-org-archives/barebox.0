Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo2.mail-out.ovh.net ([188.165.53.149]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T4lvD-0006xv-OG
 for barebox@lists.infradead.org; Fri, 24 Aug 2012 04:55:06 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 54926DC0EC6
 for <barebox@lists.infradead.org>; Fri, 24 Aug 2012 07:00:01 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 24 Aug 2012 06:55:11 +0200
Message-Id: <1345784113-29643-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1345784113-29643-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120824045246.GJ6271@game.jcrosoft.org>
 <1345784113-29643-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/5] defaultenv-2: boot use global.linux.bootargs.dyn for
 dynamic globarvar
To: barebox@lists.infradead.org

linux.bootargs.dyn.* will be clearer at the beginning of boot

This is need for boot sequence to do not have the previous boot param.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv-2/base/bin/bootargs-ip          |    4 ++--
 defaultenv-2/base/bin/bootargs-ip-barebox  |    2 +-
 defaultenv-2/base/bin/bootargs-ip-dhcp     |    2 +-
 defaultenv-2/base/bin/bootargs-ip-none     |    2 +-
 defaultenv-2/base/bin/bootargs-root-disk   |    2 +-
 defaultenv-2/base/bin/bootargs-root-ext    |    2 +-
 defaultenv-2/base/bin/bootargs-root-initrd |    2 +-
 defaultenv-2/base/bin/bootargs-root-jffs2  |    2 +-
 defaultenv-2/base/bin/bootargs-root-nfs    |    2 +-
 defaultenv-2/base/bin/bootargs-root-ubi    |    2 +-
 defaultenv-2/base/bin/init                 |    5 +++--
 defaultenv-2/base/boot/initrd              |    2 +-
 12 files changed, 15 insertions(+), 14 deletions(-)

diff --git a/defaultenv-2/base/bin/bootargs-ip b/defaultenv-2/base/bin/bootargs-ip
index 15041c6..2d4486c 100644
--- a/defaultenv-2/base/bin/bootargs-ip
+++ b/defaultenv-2/base/bin/bootargs-ip
@@ -5,7 +5,7 @@
 . /env/network/eth0
 
 if [ $ip = dhcp ]; then
-	global.linux.bootargs.ip="ip=dhcp"
+	global.linux.bootargs.dyn.ip="ip=dhcp"
 else
-	global.linux.bootargs.ip="ip=$ipaddr:$serverip:$gateway:$netmask::eth0:"
+	global.linux.bootargs.dyn.ip="ip=$ipaddr:$serverip:$gateway:$netmask::eth0:"
 fi
diff --git a/defaultenv-2/base/bin/bootargs-ip-barebox b/defaultenv-2/base/bin/bootargs-ip-barebox
index 986c142..5a3b984 100644
--- a/defaultenv-2/base/bin/bootargs-ip-barebox
+++ b/defaultenv-2/base/bin/bootargs-ip-barebox
@@ -4,4 +4,4 @@
 
 ifup eth0
 
-global.linux.bootargs.ip="ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0:"
+global.linux.bootargs.dyn.ip="ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0:"
diff --git a/defaultenv-2/base/bin/bootargs-ip-dhcp b/defaultenv-2/base/bin/bootargs-ip-dhcp
index c542b24..dec8ae4 100644
--- a/defaultenv-2/base/bin/bootargs-ip-dhcp
+++ b/defaultenv-2/base/bin/bootargs-ip-dhcp
@@ -2,4 +2,4 @@
 
 # Do dhcp in Linux
 
-global.linux.bootargs.ip="ip=dhcp"
+global.linux.bootargs.dyn.ip="ip=dhcp"
diff --git a/defaultenv-2/base/bin/bootargs-ip-none b/defaultenv-2/base/bin/bootargs-ip-none
index c010154..88aaa21 100644
--- a/defaultenv-2/base/bin/bootargs-ip-none
+++ b/defaultenv-2/base/bin/bootargs-ip-none
@@ -2,4 +2,4 @@
 
 # disable ip setup in Linux
 
-global.linux.bootargs.ip="ip=none"
+global.linux.bootargs.dyn.ip="ip=none"
diff --git a/defaultenv-2/base/bin/bootargs-root-disk b/defaultenv-2/base/bin/bootargs-root-disk
index df8750e..aa60cf3 100644
--- a/defaultenv-2/base/bin/bootargs-root-disk
+++ b/defaultenv-2/base/bin/bootargs-root-disk
@@ -23,4 +23,4 @@ if [ -z "${fstype}" ]; then
 	exit 1
 fi
 
-global.linux.bootargs.root="root=/dev/$part rootfstype=$fstype rootwait"
+global.linux.bootargs.dyn.root="root=/dev/$part rootfstype=$fstype rootwait"
diff --git a/defaultenv-2/base/bin/bootargs-root-ext b/defaultenv-2/base/bin/bootargs-root-ext
index 45fcd5a..dbdddb9 100644
--- a/defaultenv-2/base/bin/bootargs-root-ext
+++ b/defaultenv-2/base/bin/bootargs-root-ext
@@ -9,4 +9,4 @@ while getopt "m:r:" opt; do
 	fi
 done
 
-global.linux.bootargs.root="root=/dev/$part rootfstype=ext$type rootwait"
+global.linux.bootargs.dyn.root="root=/dev/$part rootfstype=ext$type rootwait"
diff --git a/defaultenv-2/base/bin/bootargs-root-initrd b/defaultenv-2/base/bin/bootargs-root-initrd
index 7072cea..cc711a1 100644
--- a/defaultenv-2/base/bin/bootargs-root-initrd
+++ b/defaultenv-2/base/bin/bootargs-root-initrd
@@ -13,4 +13,4 @@ while getopt "i:h" opt; do
 	fi
 done
 
-global.linux.bootargs.root="root=/dev/ram0 rdinit=${rdinit}"
+global.linux.bootargs.dyn.root="root=/dev/ram0 rdinit=${rdinit}"
diff --git a/defaultenv-2/base/bin/bootargs-root-jffs2 b/defaultenv-2/base/bin/bootargs-root-jffs2
index 74d59af..a8eb5e7 100644
--- a/defaultenv-2/base/bin/bootargs-root-jffs2
+++ b/defaultenv-2/base/bin/bootargs-root-jffs2
@@ -18,4 +18,4 @@ if [ -z "$mtd" ]; then
 	exit 1
 fi
 
-global.linux.bootargs.root="root=$mtd rootfstype=jffs2"
+global.linux.bootargs.dyn.root="root=$mtd rootfstype=jffs2"
diff --git a/defaultenv-2/base/bin/bootargs-root-nfs b/defaultenv-2/base/bin/bootargs-root-nfs
index 27bb6c4..355f93d 100644
--- a/defaultenv-2/base/bin/bootargs-root-nfs
+++ b/defaultenv-2/base/bin/bootargs-root-nfs
@@ -17,4 +17,4 @@ if [ -n ${serverip} ]; then
 	nfsroot="$serverip:$nfsroot"
 fi
 
-global.linux.bootargs.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
+global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
diff --git a/defaultenv-2/base/bin/bootargs-root-ubi b/defaultenv-2/base/bin/bootargs-root-ubi
index fb7f328..4260336 100644
--- a/defaultenv-2/base/bin/bootargs-root-ubi
+++ b/defaultenv-2/base/bin/bootargs-root-ubi
@@ -21,4 +21,4 @@ if [ -z "$mtd" ]; then
 	exit 1
 fi
 
-global.linux.bootargs.root="root=ubi0:$ubiroot ubi.mtd=$mtd rootfstype=ubifs"
+global.linux.bootargs.dyn.root="root=ubi0:$ubiroot ubi.mtd=$mtd rootfstype=ubifs"
diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index 9d7eb2e..8e8871d 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -8,8 +8,9 @@ global autoboot_timeout=3
 global boot.default=net
 global allow_color=true
 global linux.bootargs.base
-global linux.bootargs.ip
-global linux.bootargs.root
+#linux.bootargs.dyn.* will be clearer at the beginning of boot
+global linux.bootargs.dyn.ip
+global linux.bootargs.dyn.root
 global editcmd=sedit
 
 /env/init/general
diff --git a/defaultenv-2/base/boot/initrd b/defaultenv-2/base/boot/initrd
index 79a353a..7c44d07 100644
--- a/defaultenv-2/base/boot/initrd
+++ b/defaultenv-2/base/boot/initrd
@@ -11,7 +11,7 @@ global.bootm.initrd="${path}/initramfs"
 bootargs-root-initrd
 #global.bootm.oftree=<path to oftree>
 
-global.linux.bootargs.root="root=/dev/ram0"
+global.linux.bootargs.dyn.root="root=/dev/ram0"
 
 #bootargs-root-nfs -n "<path on server>" -s <serverip>
 #bootargs-root-ubi -r <volume> -m <mtdname>
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
