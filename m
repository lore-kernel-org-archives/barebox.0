Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo3.mail-out.ovh.net ([87.98.184.141]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJPaQ-0007Br-1k
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 13:33:51 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id D2185FF853F
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2012 15:35:00 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 15 Apr 2012 15:15:41 +0200
Message-Id: <1334495741-9222-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] defaultenv: add oftree file support
To: barebox@lists.infradead.org

This will allow to use a file in the env as oftree.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/_boot_help |    2 +-
 defaultenv/bin/boot       |    2 ++
 2 files changed, 3 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/_boot_help b/defaultenv/bin/_boot_help
index a07e4e0..c610a9c 100644
--- a/defaultenv/bin/_boot_help
+++ b/defaultenv/bin/_boot_help
@@ -4,7 +4,7 @@ echo "boot: boot [-m <mode>] [-k <kernel_option>] [-r <rootfs_option>] [-i <ip_m
 echo ""
 echo "options"
 echo " - kernel        nand, nor, nfs, tftp, disk"
-echo " - oftree        nand, nor, nfs, tftp, disk or empty"
+echo " - oftree        nand, nor, nfs, tftp, disk, file or empty"
 echo " - rootfs        nand, nor, net, disk"
 echo " - ip            dhcp, dhcp-barebox none, empty"
 echo ""
diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 61b893a..a497edf 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -128,6 +128,8 @@ elif [ x$oftree_loc = xnand ]; then
 	odev="/dev/nand0.oftree.bb"
 elif [ x$oftree_loc = xdisk ]; then
 	odev="/dev/$oftree_part"
+elif [ x$oftree_loc = xfile ]; then
+	odev=$oftreeimage
 fi
 
 [ x$odev = x ] || bootm_opt="$bootm_opt -o $odev"
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
