Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hcoRg-0002IS-PL
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 10:01:03 +0000
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 17 Jun 2019 12:00:53 +0200
Message-Id: <20190617100056.25331-2-m.felsch@pengutronix.de>
In-Reply-To: <20190617100056.25331-1-m.felsch@pengutronix.de>
References: <20190617100056.25331-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] ARM: phytec-som-imx6: update automount net entries
To: barebox@lists.infradead.org
Cc: Stefan Christ <s.christ@phytec.de>

It seems that the /mnt/tftp was copied from the defaultenv-2. The
defaultenv-2 got a update to make it more robust by enabling all
interfaces. During this sync I added a entry to support automount for
/mnt/nfs mountpoint.

Cc: Stefan Christ <s.christ@phytec.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 .../defaultenv-physom-imx6-phycore/init/automount     | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount
index 91ded44119..13a5b626b7 100644
--- a/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount
+++ b/arch/arm/boards/phytec-som-imx6/defaultenv-physom-imx6-phycore/init/automount
@@ -1,9 +1,16 @@
 #!/bin/sh
 
-# automount tftp server based on $eth0.serverip
+# automount tftp server
 
 mkdir -p /mnt/tftp
-automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
+automount /mnt/tftp 'ifup -a && mount -t tftp $global.net.server /mnt/tftp'
+
+# automount nfs server's nfsroot
+
+mkdir -p /mnt/nfs
+automount /mnt/nfs 'ifup -a && mount -t nfs ${global.net.server}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
+
+# automount phycore specific local mounts
 
 mkdir -p /mnt/mmc
 automount -d /mnt/mmc 'mmc0.probe=1 && [ -e /dev/mmc0.0 ] && mount /dev/mmc0.0 /mnt/mmc'
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
