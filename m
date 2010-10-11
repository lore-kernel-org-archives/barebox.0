Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 29.mail-out.ovh.net ([87.98.216.213])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1P5JUm-00085g-7Z
	for barebox@lists.infradead.org; Mon, 11 Oct 2010 14:36:57 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 11 Oct 2010 16:34:42 +0200
Message-Id: <1286807684-17355-4-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20101011135329.GA7412@game.jcrosoft.org>
References: <20101011135329.GA7412@game.jcrosoft.org>
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
Subject: [PATCH 4/6] defaultenv/update: add check crc32 options
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/Kconfig              |    2 ++
 defaultenv/bin/_update_help |    8 +++++---
 defaultenv/bin/update       |    8 +++++++-
 3 files changed, 14 insertions(+), 4 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index e8d467e..617f640 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -394,6 +394,8 @@ config DEFAULT_ENVIRONMENT_GENERIC
 	depends on DEFAULT_ENVIRONMENT
 	select SHELL_HUSH
 	select HUSH_GETOPT
+	select CMD_CRC
+	select CMD_CRC_CMP
 	prompt "Default environment generic"
 	help
 	  With this option barebox will use the generic default
diff --git a/defaultenv/bin/_update_help b/defaultenv/bin/_update_help
index e6ea64c..a23f00f 100644
--- a/defaultenv/bin/_update_help
+++ b/defaultenv/bin/_update_help
@@ -1,8 +1,10 @@
 #!/bin/sh
 
-echo "usage: $0 -t <kernel|rootfs> -d <nor|nand> [-f imagename]"
+echo "usage: $0 -t <kernel|rootfs> -d <nor|nand> [-f imagename] -c"
 echo "update tools."
-echo""
+echo ""
+echo "options"
+echo " -c     to check the crc32 for the image and flashed one"
+echo ""
 echo "type update -t kernel -d <nor|nand> [-f imagename] to update kernel into flash"
 echo "type update -t rootfs -d <nor|nand> [-f imagename] to update rootfs into flash"
-
diff --git a/defaultenv/bin/update b/defaultenv/bin/update
index bdac11f..504bff6 100644
--- a/defaultenv/bin/update
+++ b/defaultenv/bin/update
@@ -4,8 +4,9 @@
 
 type=""
 device_type=""
+check=n
 
-while getopt "ht:d:f:" Option
+while getopt "ht:d:f:c" Option
 do
 if [ ${Option} = t ]; then
 	type=${OPTARG}
@@ -13,6 +14,8 @@ elif [ ${Option} = d ]; then
 	device_type=${OPTARG}
 elif [ ${Option} = f ]; then
 	imagename=${OPTARG}
+elif [ ${Option} = c ]; then
+	check=y
 else
 	. /env/bin/_update_help
 	exit 0
@@ -43,3 +46,6 @@ else
 fi
 
 . /env/bin/_update
+if [ x${check} = xy ]; then
+	crc32 -f $image -F $part
+fi
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
