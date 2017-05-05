Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycore.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d6eVz-0005y4-8k
 for barebox@lists.infradead.org; Fri, 05 May 2017 14:47:32 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 86F74A00782
 for <barebox@lists.infradead.org>; Fri,  5 May 2017 16:47:47 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 5 May 2017 16:46:56 +0200
Message-Id: <1493995618-7289-3-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH v2 3/5] arm: boards: phytec-som-am335x: Update boot scripts
To: barebox@lists.infradead.org

Expand the boot scripts with EMMC and add a default file source for
expansions.

Removed "rw" and "rootwait" bootargs from existing boot scripts.
Added "rootflags='data=journal'" bootarg to SD card boot script.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 .../defaultenv-physom-am335x/boot/emmc                  |  7 +++++++
 .../phytec-som-am335x/defaultenv-physom-am335x/boot/mmc |  7 ++++---
 .../defaultenv-physom-am335x/boot/nand                  |  4 +++-
 .../phytec-som-am335x/defaultenv-physom-am335x/boot/net | 17 +++++++++++++++++
 .../phytec-som-am335x/defaultenv-physom-am335x/boot/spi |  4 +++-
 .../defaultenv-physom-am335x/init/bootsource            | 16 ++++++++++++----
 6 files changed, 46 insertions(+), 9 deletions(-)
 create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
 create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/net

diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
new file mode 100644
index 0000000..6ad5f87
--- /dev/null
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/emmc
@@ -0,0 +1,7 @@
+#!/bin/sh
+
+[ -e /env/config-expansions ] && /env/config-expansions
+
+global.bootm.image=/mnt/mmc1.0/linuximage
+global.bootm.oftree=/mnt/mmc1.0/oftree
+global.linux.bootargs.dyn.root="root=/dev/mmcblk1p2 rootflags='data=journal'"
diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
index 834669d..0fefeb2 100644
--- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/mmc
@@ -1,6 +1,7 @@
 #!/bin/sh
 
-global.bootm.image=/boot/linuximage
-global.bootm.oftree=/boot/oftree
+[ -e /env/config-expansions ] && /env/config-expansions
 
-global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rw rootwait"
+global.bootm.image=/mnt/mmc0.0/linuximage
+global.bootm.oftree=/mnt/mmc0.0/oftree
+global.linux.bootargs.dyn.root="root=/dev/mmcblk0p2 rootflags='data=journal'"
diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
index ece44b7..fa695bb 100644
--- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/nand
@@ -1,8 +1,10 @@
 #!/bin/sh
 
+[ -e /env/config-expansions ] && /env/config-expansions
+
 [ ! -e /dev/nand0.root.ubi ] && ubiattach /dev/nand0.root
 
 global.bootm.image="/dev/nand0.root.ubi.kernel"
 global.bootm.oftree="/dev/nand0.root.ubi.oftree"
 
-global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rw rootfstype=ubifs"
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=root rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/net b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/net
new file mode 100644
index 0000000..6dbd2aa
--- /dev/null
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/net
@@ -0,0 +1,17 @@
+#!/bin/sh
+
+path="/mnt/tftp"
+
+global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
+
+oftree="${path}/${global.user}-oftree-${global.hostname}"
+if [ -f "${oftree}" ]; then
+    global.bootm.oftree="$oftree"
+fi
+
+nfsroot="/nfsroot/${global.hostname}"
+bootargs-ip
+
+[ -e /env/config-expansions ] && /env/config-expansions
+
+global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,vers=3,udp"
diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
index 71c5834..2d88626 100644
--- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/boot/spi
@@ -1,7 +1,9 @@
 #!/bin/sh
 
+[ -e /env/config-expansions ] && /env/config-expansions
+
 global.bootm.image="/dev/m25p0.kernel"
 global.bootm.oftree="/dev/m25p0.oftree"
 
 # Use rootfs from NAND
-global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rw rootfstype=ubifs"
+global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource
index 3f2ff4b..61a0879 100644
--- a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/bootsource
@@ -4,12 +4,20 @@ if [ -n "$nv.boot.default" ]; then
 	exit
 fi
 
-if [ $bootsource = mmc ]; then
-	global.boot.default="mmc nand spi net"
+if [ -e /dev/mmc1.0 ]; then
+	nvmem="emmc"
+else
+	nvmem="nand"
+fi
+
+if [ $bootsource = mmc -a $bootsource_instance = 1 ]; then
+	global.boot.default="emmc mmc spi net"
+elif [ $bootsource = mmc -a $bootsource_instance = 0 ]; then
+	global.boot.default="mmc $nvmem spi net"
 elif [ $bootsource = nand ]; then
 	global.boot.default="nand spi mmc net"
 elif [ $bootsource = spi ]; then
-	global.boot.default="spi nand mmc net"
+	global.boot.default="spi $nvmem mmc net"
 elif [ $bootsource = net ]; then
-	global.boot.default="net nand spi mmc"
+	global.boot.default="net $nvmem spi mmc"
 fi
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
