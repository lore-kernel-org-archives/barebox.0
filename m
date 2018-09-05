Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fxVlM-0007bl-Uh
 for barebox@lists.infradead.org; Wed, 05 Sep 2018 11:14:22 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 00E82A00302
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2018 13:14:42 +0200 (CEST)
From: Teresa Remmet <t.remmet@phytec.de>
Date: Wed, 5 Sep 2018 13:13:55 +0200
Message-Id: <1536146035-20364-1-git-send-email-t.remmet@phytec.de>
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
Subject: [PATCH] arm: boards: phytec-som-am335x: Rename kernel image
To: barebox@lists.infradead.org

Use zImage instead of linuximage for kernel.

Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
---
 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc | 2 +-
 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc  | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
index b1792a6ff060..47dc9516e6a0 100644
--- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
@@ -1,5 +1,5 @@
 #!/bin/sh
 
-global.bootm.image=/mnt/mmc1.0/linuximage
+global.bootm.image=/mnt/mmc1.0/zImage
 global.bootm.oftree=/mnt/mmc1.0/oftree
 global.linux.bootargs.dyn.root="root=/dev/mmcblk1p2 rootflags='data=journal'"
diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
index 77a076df58c0..b025a578d027 100644
--- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
@@ -1,5 +1,5 @@
 #!/bin/sh
 
-global.bootm.image=/mnt/mmc0.0/linuximage
+global.bootm.image=/mnt/mmc0.0/zImage
 global.bootm.oftree=/mnt/mmc0.0/oftree
 global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootflags='data=journal'"
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
