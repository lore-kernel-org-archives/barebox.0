Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S7Vxy-0003fj-V0
 for barebox@lists.infradead.org; Tue, 13 Mar 2012 17:56:59 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 90178DC62CC
 for <barebox@lists.infradead.org>; Tue, 13 Mar 2012 19:00:13 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Mar 2012 18:45:06 +0100
Message-Id: <1331660707-9518-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/2] defaultenv: add bootp support
To: barebox@lists.infradead.org

use rootpath as nfsroot and bootfile as kernelimage if present
when ip mode is dhcp

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/boot |   12 +++++++++---
 1 files changed, 9 insertions(+), 3 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index d37eca8..1566c6a 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -40,6 +40,15 @@ elif [ x$mode = xdisk ]; then
 fi
 
 if [ x$ip = xdhcp ]; then
+	if [ x$kernel_loc = xnfs -o x$kernel_loc = xtftp ]; then
+		dhcp
+		if [ x$rootpath != x ]; then
+			nfsroot=$rootpath
+		fi
+		if [ x$bootfile != x ]; then
+			kernelimage=$bootfile
+		fi
+	fi
 	bootargs="$bootargs ip=dhcp"
 elif [ x$ip = xnone ]; then
 	bootargs="$bootargs ip=none"
@@ -89,9 +98,6 @@ if [ -n $mtdparts ]; then
 fi
 
 if [ x$kernel_loc = xnfs -o x$kernel_loc = xtftp ]; then
-	if [ x$ip = xdhcp ]; then
-		dhcp
-	fi
 	kdev=/image
 	$kernel_loc $kernelimage $kdev || exit 1
 elif [ x$kernel_loc = xnor ]; then
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
