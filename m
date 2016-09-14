Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bk5Xq-0004uQ-4i
 for barebox@lists.infradead.org; Wed, 14 Sep 2016 08:27:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Sep 2016 10:27:22 +0200
Message-Id: <1473841642-16373-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] defenv-1: remove unused variable kernelimage_type
To: Barebox List <barebox@lists.infradead.org>

kernelimage_type is used nowwhere, remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/friendlyarm-mini6410/env/config | 4 ----
 arch/arm/boards/friendlyarm-tiny6410/env/config | 4 ----
 2 files changed, 8 deletions(-)

diff --git a/arch/arm/boards/friendlyarm-mini6410/env/config b/arch/arm/boards/friendlyarm-mini6410/env/config
index 74beeff..924d7b8 100644
--- a/arch/arm/boards/friendlyarm-mini6410/env/config
+++ b/arch/arm/boards/friendlyarm-mini6410/env/config
@@ -24,13 +24,9 @@ rootfs_type=ubifs
 rootfsimage=root-${machine}.${rootfs_type}
 
 # The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-${machine}
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
diff --git a/arch/arm/boards/friendlyarm-tiny6410/env/config b/arch/arm/boards/friendlyarm-tiny6410/env/config
index 6422e9f..f38535b 100644
--- a/arch/arm/boards/friendlyarm-tiny6410/env/config
+++ b/arch/arm/boards/friendlyarm-tiny6410/env/config
@@ -24,13 +24,9 @@ rootfs_type=ubifs
 rootfsimage=root-${machine}.${rootfs_type}
 
 # The image type of the kernel. Can be uimage, zimage, raw, or raw_lzo
-kernelimage_type=zimage
 kernelimage=zImage-${machine}
-#kernelimage_type=uimage
 #kernelimage=uImage-$machine
-#kernelimage_type=raw
 #kernelimage=Image-$machine
-#kernelimage_type=raw_lzo
 #kernelimage=Image-$machine.lzo
 
 if [ -n $user ]; then
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
