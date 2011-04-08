Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8C2g-0000U8-Rq
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 13:48:07 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Apr 2011 15:40:06 +0200
Message-Id: <1302270008-21346-2-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110408133713.GC13978@game.jcrosoft.org>
References: <20110408133713.GC13978@game.jcrosoft.org>
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
Subject: [PATCH 2/4] defaultenv/boot: add -k and -t option to specify the
	kernel location and image type
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/boot      |   17 ++++++++++++++++-
 defaultenv/bin/boot_help |    6 +++++-
 2 files changed, 21 insertions(+), 2 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 4289b29..597b080 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -3,11 +3,16 @@
 . /env/config
 
 opt_mode=""
+opt_kernel_loc=""
 
-while getopt "hm:" Option
+while getopt "hm:k:t:" Option
 do
 if [ ${Option} = m ]; then
 	opt_mode=${OPTARG}
+elif [ ${Option} = k ]; then
+	opt_kernel_loc=${OPTARG}
+elif [ ${Option} = t ]; then
+	kernelimage_type=${OPTARG}
 else
 	. /env/bin/boot_help
 	exit 0
@@ -28,6 +33,16 @@ elif [ x${opt_mode} = xtftp ]; then
 	kernel_loc=tftp
 fi
 
+if [ x${opt_kernel_loc} = xnand ]; then
+	kernel_loc=nand
+elif [ x${opt_kernel_loc} = xnor ]; then
+	kernel_loc=nor
+elif [ x${opt_kernel_loc} = xnfs ]; then
+	kernel_loc=nfs
+elif [ x${opt_kernel_loc} = xtftp ]; then
+	kernel_loc=tftp
+fi
+
 if [ x$ip = xdhcp ]; then
 	bootargs="$bootargs ip=dhcp"
 elif [ x$ip = xnone ]; then
diff --git a/defaultenv/bin/boot_help b/defaultenv/bin/boot_help
index 425c718..28436b8 100644
--- a/defaultenv/bin/boot_help
+++ b/defaultenv/bin/boot_help
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-echo "usage: boot [-m <mode>]"
+echo "usage: boot [-m <mode>] [-k <kernel location>] [-t <kernel image type]"
 echo "boot."
 echo ""
 echo "options"
@@ -11,6 +11,10 @@ echo "         tftp      tftp       nfs"
 echo "         nor       nor        nor"
 echo "         nand      nand       nand"
 echo ""
+echo " -k      kernel location tftp, nfs, nand, nor"
+echo " -t      kernel image type uimage, zimage, raw or raw_lzo"
+echo ""
+echo ""
 echo "default is"
 echo -n "kernel_loc        "
 echo ${kernel_loc}
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
