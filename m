Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([88.190.12.23])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SlhPH-0006UF-Jp
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 14:15:17 +0000
From: Maxime Ripard <maxime.ripard@free-electrons.com>
Date: Mon,  2 Jul 2012 16:14:53 +0200
Message-Id: <1341238494-30914-1-git-send-email-maxime.ripard@free-electrons.com>
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
Subject: [PATCH 1/2] Add support for kernel and device tree images stored in a
 partition
To: barebox@lists.infradead.org
Cc: Brian Lilly <brian@crystalfontz.com>

It is a quite common setup to have a partition with all you need to boot
from the bootloader, ie the kernel image, the device tree blob, etc.

This patch introduces a new "file" location for these two images, which
uses in turn the *_part and the new *_part_type variable specifying the
fs type used by mount.

Signed-off-by: Maxime Ripard <maxime.ripard@free-electrons.com>
Cc: Brian Lilly <brian@crystalfontz.com>
---
 defaultenv/bin/boot |   12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 61b893a..26360ed 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -114,6 +114,12 @@ elif [ x$kernel_loc = xnand ]; then
 	kdev="/dev/nand0.kernel.bb"
 elif [ x$kernel_loc = xdisk ]; then
 	kdev="/dev/$kernel_part"
+elif [ x$kernel_loc = xfile ]; then
+	if [ ! -d $kernel_part ]; then
+		mkdir $kernel_part
+		mount /dev/$kernel_part $kernel_part_type $kernel_part
+	fi
+	kdev="$kernel_part/$kernelimage"
 else
 	echo "error: set kernel_loc to one of 'tftp', 'nfs', 'nand', 'nor' or 'disk'"
 	exit 1
@@ -128,6 +134,12 @@ elif [ x$oftree_loc = xnand ]; then
 	odev="/dev/nand0.oftree.bb"
 elif [ x$oftree_loc = xdisk ]; then
 	odev="/dev/$oftree_part"
+elif [ x$oftree_loc = xfile ]; then
+	if [ ! -d $oftree_part ]; then
+		mkdir $oftree_loc
+		mount /dev/$oftree_part $oftree_part_type $oftree_part
+	fi
+	odev="$oftree_part/$oftreeimage"
 fi
 
 [ x$odev = x ] || bootm_opt="$bootm_opt -o $odev"
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
