Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PcFmX-0004ju-9V
	for barebox@lists.infradead.org; Mon, 10 Jan 2011 11:19:26 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Mon, 10 Jan 2011 12:19:18 +0100
Message-Id: <1294658358-18311-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH] defaultenv: make 'boot' work from subdirs
To: barebox@lists.infradead.org

Wrong pathnames prevented that.

Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 defaultenv/bin/boot |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 42c7ec2..4c2975d 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -56,13 +56,13 @@ fi
 
 if [ ! -e /dev/ram0.kernelraw ]; then
 	# arm raw kernel images are usually located at sdram start + 0x8000
-	addpart dev/ram0 8M@0x8000(kernelraw)
+	addpart /dev/ram0 8M@0x8000(kernelraw)
 fi
 
 if [ ! -e /dev/ram0.kernel ]; then
 	# Here we can safely put the kernel without risking of overwriting it
 	# while extracting
-	addpart dev/ram0 8M@8M(kernel)
+	addpart /dev/ram0 8M@8M(kernel)
 fi
 
 if [ x$kernel_loc = xnet ]; then
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
