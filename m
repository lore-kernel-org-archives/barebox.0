Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q88mz-0007Ap-0O
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 10:19:41 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri,  8 Apr 2011 12:19:06 +0200
Message-Id: <1302257948-18174-6-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
References: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 5/7] defaultenv: boot: add support to boot from disk
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 defaultenv/bin/boot |    9 ++++++++-
 1 files changed, 8 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 4284308..652ae0c 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -18,6 +18,9 @@ elif [ x$1 = xnfs ]; then
 elif [ x$1 = xtftp ]; then
 	rootfs_loc=net
 	kernel_loc=tftp
+elif [ x$1 = xdisk ]; then
+	rootfs_loc=disk
+	kernel_loc=disk
 fi
 
 if [ x$ip = xdhcp ]; then
@@ -31,6 +34,8 @@ fi
 
 if [ x$rootfs_loc = xnet ]; then
 	bootargs="$bootargs root=/dev/nfs nfsroot=$nfsroot,v3,tcp noinitrd"
+elif [ x$rootfs_loc = xdisk ]; then
+	bootargs="$bootargs root=/dev/$rootfs_part_linux_dev rootfstype=$rootfs_type noinitrd rootwait"
 elif [ x$rootfs_loc = xinitrd ]; then
 	bootargs="$bootargs root=/dev/ram0 rdinit=/sbin/init"
 else
@@ -100,8 +105,10 @@ elif [ x$kernel_loc = xnor ]; then
 	kdev="/dev/nor0.kernel"
 elif [ x$kernel_loc = xnand ]; then
 	kdev="/dev/nand0.kernel.bb"
+elif [ x$kernel_loc = xdisk ]; then
+	kdev="/dev/$kernel_part"
 else
-	echo "error: set kernel_loc to one of 'nfs', 'tftp', 'nand' or 'nor'"
+	echo "error: set kernel_loc to one of 'tftp', 'nfs', 'nand', 'nor' or 'disk'"
 	exit 1
 fi
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
