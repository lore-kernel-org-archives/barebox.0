Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8C2i-0000Uy-SS
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 13:48:10 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  8 Apr 2011 15:40:08 +0200
Message-Id: <1302270008-21346-4-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 4/4] defaultenv/boot: add -i option to select the ip mode
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/boot      |    4 +++-
 defaultenv/bin/boot_help |    3 ++-
 2 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index bae73d4..a020cd3 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -6,7 +6,7 @@ opt_mode=""
 opt_kernel_loc=""
 opt_rootfs_loc=""
 
-while getopt "hm:k:t:r:T:" Option
+while getopt "hm:k:t:r:T:i:" Option
 do
 if [ ${Option} = m ]; then
 	opt_mode=${OPTARG}
@@ -18,6 +18,8 @@ elif [ ${Option} = r ]; then
 	opt_rootfs_loc=${OPTARG}
 elif [ ${Option} = T ]; then
 	rootfs_type=${OPTARG}
+elif [ ${Option} = i ]; then
+	ip=${OPTARG}
 else
 	. /env/bin/boot_help
 	exit 0
diff --git a/defaultenv/bin/boot_help b/defaultenv/bin/boot_help
index 41b5353..8e00977 100644
--- a/defaultenv/bin/boot_help
+++ b/defaultenv/bin/boot_help
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-echo "usage: boot [-m <mode>] [-k <kernel location>] [-t <kernel image type] [-r <rootfs location>] [-T <rootfs type>]"
+echo "usage: boot [-m <mode>] [-k <kernel location>] [-t <kernel image type] [-r <rootfs location>] [-T <rootfs type>] [-i <ip mode>]"
 echo "boot."
 echo ""
 echo "options"
@@ -15,6 +15,7 @@ echo " -k      kernel location tftp, nfs, nand, nor"
 echo " -t      kernel image type uimage, zimage, raw or raw_lzo"
 echo " -r      rootfs location nfs, nand, nor, initrd"
 echo " -T      rootfs type ubi, jffs2, ext2, etc..."
+echo " -i      ip mode dhcp, none, static"
 echo ""
 echo ""
 echo "default is"
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
