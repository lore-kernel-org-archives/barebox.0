Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1axqnF-00073b-FO
 for barebox@lists.infradead.org; Wed, 04 May 2016 07:00:26 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 8B3EFA004EE
 for <barebox@lists.infradead.org>; Wed,  4 May 2016 09:00:01 +0200 (CEST)
From: Stefan Christ <s.christ@phytec.de>
Date: Wed, 4 May 2016 08:59:12 +0200
Message-Id: <1462345152-3509-1-git-send-email-s.christ@phytec.de>
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
Subject: [PATCH] ARM: phytec-som-imx6: add automount for first partition on
 eMMC
To: barebox@lists.infradead.org

For the phyCORE-i.MX6 add an automount command for the first partition
on the eMMC device.

Signed-off-by: Stefan Christ <s.christ@phytec.de>
---
 .../phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount      | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount
index 3659cf7..a059e19 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount
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
