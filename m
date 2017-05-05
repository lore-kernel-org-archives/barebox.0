Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.rapiddevelopmentkit.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d6eVz-0005y8-8w
 for barebox@lists.infradead.org; Fri, 05 May 2017 14:47:29 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id BD9F1A0079B
 for <barebox@lists.infradead.org>; Fri,  5 May 2017 16:47:47 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 5 May 2017 16:46:58 +0200
Message-Id: <1493995618-7289-5-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v2 5/5] arm: boards: afi-gf: Update SD card boot script
To: barebox@lists.infradead.org

The default mount path for SD cards changed from /boot to /mnt/mmc0.0.
Updated paths in SD card boot script.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 arch/arm/boards/afi-gf/defaultenv-gf/boot/sd | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/afi-gf/defaultenv-gf/boot/sd b/arch/arm/boards/afi-gf/defaultenv-gf/boot/sd
index aa94b2f..1a6fab5 100644
--- a/arch/arm/boards/afi-gf/defaultenv-gf/boot/sd
+++ b/arch/arm/boards/afi-gf/defaultenv-gf/boot/sd
@@ -1,6 +1,6 @@
 #!/bin/sh
 
-global.bootm.image=/boot/uImage
-global.bootm.oftree=/boot/oftree
+global.bootm.image=/mnt/mmc0.0/uImage
+global.bootm.oftree=/mnt/mmc0.0/oftree
 #global.bootm.initrd=<path to initrd>
 global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootfstype=ext4 rootwait"
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
