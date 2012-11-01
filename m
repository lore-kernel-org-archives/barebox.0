Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TTzsq-0008Ee-Jz
 for barebox@lists.infradead.org; Thu, 01 Nov 2012 18:52:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  1 Nov 2012 19:52:46 +0100
Message-Id: <1351795968-2352-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1351795968-2352-1-git-send-email-s.hauer@pengutronix.de>
References: <1351795968-2352-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/3] defenv-2: remove initrd boot script
To: barebox@lists.infradead.org

This is mostly an example and does not have a real use, so remove
it to not have it in each and every environment.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv-2/base/boot/initrd |   17 -----------------
 1 file changed, 17 deletions(-)
 delete mode 100644 defaultenv-2/base/boot/initrd

diff --git a/defaultenv-2/base/boot/initrd b/defaultenv-2/base/boot/initrd
deleted file mode 100644
index 7c44d07..0000000
--- a/defaultenv-2/base/boot/initrd
+++ /dev/null
@@ -1,17 +0,0 @@
-#!/bin/sh
-
-if [ "$1" = menu ]; then
-	boot-menu-add-entry "$0" "kernel + initrd via tftp"
-	exit
-fi
-
-path="/mnt/tftp"
-global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
-global.bootm.initrd="${path}/initramfs"
-bootargs-root-initrd
-#global.bootm.oftree=<path to oftree>
-
-global.linux.bootargs.dyn.root="root=/dev/ram0"
-
-#bootargs-root-nfs -n "<path on server>" -s <serverip>
-#bootargs-root-ubi -r <volume> -m <mtdname>
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
