Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T3Sqd-0006Qq-Hh
 for barebox@lists.infradead.org; Mon, 20 Aug 2012 14:21:04 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 20 Aug 2012 16:20:27 +0200
Message-Id: <1345472428-17417-13-git-send-email-jlu@pengutronix.de>
In-Reply-To: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
References: <1345472428-17417-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH 12/13] defaultenv: support kernel and oftree on a filesystem
To: barebox@lists.infradead.org

The path specified by kernel/oftree_path must be mounted
aready (either via automount or by the board code).

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 defaultenv/bin/boot |   18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index bf6ec76..81593bd 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -129,7 +129,14 @@ elif [ x$kernel_loc = xnand ]; then
 	fi
 	kdev="/dev/nand0.${kernel_mtd_nand}.bb"
 elif [ x$kernel_loc = xdisk ]; then
-	kdev="/dev/$kernel_part"
+	if [ -n $kernel_path ]; then
+		kdev="$kernel_path"
+	elif [ -n $kernel_part ]; then
+		kdev="/dev/$kernel_part"
+	else
+		echo "error: set either kernel_path or kernel_part"
+		exit 1
+	fi
 else
 	echo "error: set kernel_loc to one of 'tftp', 'nfs', 'nand', 'nor' or 'disk'"
 	exit 1
@@ -145,7 +152,14 @@ elif [ x$oftree_loc = xnor ]; then
 elif [ x$oftree_loc = xnand ]; then
 	odev="/dev/nand0.oftree.bb"
 elif [ x$oftree_loc = xdisk ]; then
-	odev="/dev/$oftree_part"
+	if [ -n $oftree_path ]; then
+		odev="$oftree_path"
+	elif [ -n $oftree_part ]; then
+		odev="/dev/$oftree_part"
+	else
+		echo "error: set either oftree_path or oftree_part"
+		exit 1
+	fi
 fi
 
 [ x$odev = x ] || bootm_opt="$bootm_opt -o $odev"
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
