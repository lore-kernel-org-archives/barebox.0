Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d6eVz-0005y6-8j
 for barebox@lists.infradead.org; Fri, 05 May 2017 14:47:29 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 8F3B4A00785
 for <barebox@lists.infradead.org>; Fri,  5 May 2017 16:47:47 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 5 May 2017 16:46:57 +0200
Message-Id: <1493995618-7289-4-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1493995618-7289-1-git-send-email-d.schultz@phytec.de>
References: <1493995618-7289-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v2 4/5] arm: boards: beaglebone: Delete default env
To: barebox@lists.infradead.org

The Beaglebone environment should be set from outside with an application
specific environment.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/beaglebone/Makefile                                 | 1 -
 arch/arm/boards/beaglebone/board.c                                  | 2 --
 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd            | 6 ------
 .../arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300 | 5 -----
 4 files changed, 14 deletions(-)
 delete mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
 delete mode 100644 arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300

diff --git a/arch/arm/boards/beaglebone/Makefile b/arch/arm/boards/beaglebone/Makefile
index 21a1a29..092c31d 100644
--- a/arch/arm/boards/beaglebone/Makefile
+++ b/arch/arm/boards/beaglebone/Makefile
@@ -1,3 +1,2 @@
 lwl-y += lowlevel.o
 obj-y += board.o
-bbenv-y += defaultenv-beaglebone
diff --git a/arch/arm/boards/beaglebone/board.c b/arch/arm/boards/beaglebone/board.c
index 5717c45..fc16aea 100644
--- a/arch/arm/boards/beaglebone/board.c
+++ b/arch/arm/boards/beaglebone/board.c
@@ -85,8 +85,6 @@ static int beaglebone_devices_init(void)
 
 	black = is_beaglebone_black();
 
-	defaultenv_append_directory(defaultenv_beaglebone);
-
 	globalvar_add_simple("board.variant", black ? "boneblack" : "bone");
 
 	printf("detected 'BeagleBone %s'\n", black ? "Black" : "White");
diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd b/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
deleted file mode 100644
index aa94b2f..0000000
--- a/arch/arm/boards/beaglebone/defaultenv-beaglebone/boot/sd
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-global.bootm.image=/boot/uImage
-global.bootm.oftree=/boot/oftree
-#global.bootm.initrd=<path to initrd>
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
diff --git a/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300 b/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300
deleted file mode 100644
index 56313bf..0000000
--- a/arch/arm/boards/beaglebone/defaultenv-beaglebone/init/usb-limit-1300
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-echo -n "changing USB current limit to 1300 mA... "
-i2c_write -b 0 -a 0x24 -r 0x01 0x3e
-echo "done"
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
