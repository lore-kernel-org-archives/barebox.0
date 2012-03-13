Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S7Vxy-0003fk-V2
 for barebox@lists.infradead.org; Tue, 13 Mar 2012 17:56:59 +0000
Received: from mail621.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 4674ADC632E
 for <barebox@lists.infradead.org>; Tue, 13 Mar 2012 19:00:14 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 13 Mar 2012 18:45:07 +0100
Message-Id: <1331660707-9518-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1331660707-9518-1-git-send-email-plagnioj@jcrosoft.com>
References: <1331660707-9518-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 2/2] defaultenv: add dhcp-barebox option
To: barebox@lists.infradead.org

barebox will use DHCP and pass the result to the kernel
update the help

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/_boot_help |    8 +++++++-
 defaultenv/bin/boot       |    5 ++++-
 2 files changed, 11 insertions(+), 2 deletions(-)

diff --git a/defaultenv/bin/_boot_help b/defaultenv/bin/_boot_help
index e7f7f16..7c96444 100644
--- a/defaultenv/bin/_boot_help
+++ b/defaultenv/bin/_boot_help
@@ -5,7 +5,7 @@ echo ""
 echo "options"
 echo " - kernel        nand, nor, nfs, tftp, disk"
 echo " - rootfs        nand, nor, net, disk"
-echo " - ip            dhcp, none, empty"
+echo " - ip            dhcp, dhcp-barebox none, empty"
 echo ""
 echo "mode option"
 echo "   mode       kernel      rootfs"
@@ -15,4 +15,10 @@ echo "   nfs        nfs         net"
 echo "   tftp       fttp        net"
 echo "   disk       disk        disk"
 echo ""
+echo "ip option"
+echo "   dhcp          barebox and kernel will use DHCP"
+echo "   dhcp-barebox  barebox will use DHCP and pass the result to the kernel"
+echo "   none          do not pass ip parameter to the kernel and set it to none"
+echo "   empty         pass ip parameter to the kernel"
+echo ""
 echo "default mode are used from the /env/config"
diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 1566c6a..ba04373 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -39,7 +39,7 @@ elif [ x$mode = xdisk ]; then
 	kernel_loc=disk
 fi
 
-if [ x$ip = xdhcp ]; then
+if [ x$ip = xdhcp -o x$ip = "xdhcp-barebox" ]; then
 	if [ x$kernel_loc = xnfs -o x$kernel_loc = xtftp ]; then
 		dhcp
 		if [ x$rootpath != x ]; then
@@ -49,6 +49,9 @@ if [ x$ip = xdhcp ]; then
 			kernelimage=$bootfile
 		fi
 	fi
+fi
+
+if [ x$ip = xdhcp -o ]; then
 	bootargs="$bootargs ip=dhcp"
 elif [ x$ip = xnone ]; then
 	bootargs="$bootargs ip=none"
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
