Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avMM4-0001Lo-BS
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 10:06:01 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 204F6A004EC
 for <barebox@lists.infradead.org>; Wed, 27 Apr 2016 12:05:37 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 27 Apr 2016 12:04:42 +0200
Message-Id: <1461751489-13302-9-git-send-email-s.christ@phytec.de>
In-Reply-To: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
References: <1461751489-13302-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH for next 08/15] ARM: phytec-som-imx6: add boot device emmc and
 automount
To: barebox@lists.infradead.org

Add boot file 'emmc' and automount configuration for phyCORE-i.MX6.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 .../arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc | 5 +++++
 .../phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount       | 3 +++
 2 files changed, 8 insertions(+)
 create mode 100644 arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc

diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc
new file mode 100644
index 0000000..e3cc9e3
--- /dev/null
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/boot/emmc
@@ -0,0 +1,5 @@
+#!/bin/sh
+
+global.bootm.image="/mnt/emmc/linuximage"
+global.bootm.oftree="/mnt/emmc/oftree"
+global.linux.bootargs.dyn.root="root=/dev/mmcblk3p2 rootwait rw"
diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount
index 3659cf7..a059e19 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-mira/init/automount
@@ -12,3 +12,6 @@ automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
 
 mkdir -p /mnt/mmc
 automount -d /mnt/mmc 'mmc0.probe=1 && [ -e /dev/mmc0.0 ] && mount /dev/mmc0.0 /mnt/mmc'
+
+mkdir -p /mnt/emmc
+automount -d /mnt/emmc 'mmc3.probe=1 && [ -e /dev/mmc3.0 ] && mount /dev/mmc3.0 /mnt/emmc'
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
