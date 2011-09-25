Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R7viT-0006c3-El
	for barebox@lists.infradead.org; Sun, 25 Sep 2011 20:54:28 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Sun, 25 Sep 2011 22:54:09 +0200
Message-Id: <1316984054-31295-7-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1316984054-31295-1-git-send-email-w.sang@pengutronix.de>
References: <1316984054-31295-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 06/11] defaultenv: update: add support to update kernel on disk
To: barebox@lists.infradead.org

From: Marc Kleine-Budde <mkl@pengutronix.de>

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 defaultenv/bin/_update_help |    2 +-
 defaultenv/bin/update       |    3 +++
 2 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/_update_help b/defaultenv/bin/_update_help
index 98096da..92d6772 100644
--- a/defaultenv/bin/_update_help
+++ b/defaultenv/bin/_update_help
@@ -7,7 +7,7 @@ echo "options"
 echo " -c     to check the crc32 for the image and flashed one"
 echo ""
 echo "default mode is tftp"
-echo "type update -t kernel -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update kernel into flash"
+echo "type update -t kernel -d <nor|nand|disk> [-m tftp|xmodem] [-f imagename] to update kernel into flash"
 echo "type update -t rootfs -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update rootfs into flash"
 echo "type update -t barebox -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update barebox into flash"
 echo "type update -t bareboxenv -d <nor|nand> [-m tftp|xmodem] [-f imagename] to update bareboxenv into flash"
diff --git a/defaultenv/bin/update b/defaultenv/bin/update
index 6fd5e4c..39e7591 100644
--- a/defaultenv/bin/update
+++ b/defaultenv/bin/update
@@ -27,6 +27,7 @@ done
 
 if [ x${type} = xkernel ]; then
 	image=$kernelimage
+	disk_part=$kernel_part
 elif [ x${type} = xrootfs ]; then
 	image=$rootfsimage
 	type=root
@@ -55,6 +56,8 @@ if [ x${device_type} = xnand ]; then
 	part=/dev/nand0.${type}.bb
 elif [ x${device_type} = xnor ]; then
 	part=/dev/nor0.${type}
+elif [ x${device_type} = xdisk ]; then
+	part=/dev/${disk_part}
 else
 	. /env/bin/_update_help
 	exit 1
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
