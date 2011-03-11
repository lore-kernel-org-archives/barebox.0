Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pxqxf-0003YJ-3R
	for barebox@lists.infradead.org; Fri, 11 Mar 2011 01:16:14 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 11 Mar 2011 02:10:39 +0100
Message-Id: <1299805841-23710-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/3] defaultenv: add kernel_loc nfs and tftp support
To: barebox@lists.infradead.org
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>, Nicolas Ferre <nicolas.ferre@atmel.com>

before we can only support tftp
so keep it as default

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Nicolas Ferre <nicolas.ferre@atmel.com>
Cc: Patrice Vilchez <patrice.vilchez@atmel.com>
---
 arch/arm/boards/at91sam9261ek/env/config          |    4 ++--
 arch/arm/boards/at91sam9263ek/env/config          |    4 ++--
 arch/arm/boards/at91sam9m10g45ek/env/config       |    4 ++--
 arch/arm/boards/eukrea_cpuimx25/env/config        |    2 +-
 arch/arm/boards/eukrea_cpuimx35/env/config        |    2 +-
 arch/arm/boards/eukrea_cpuimx51/env/config        |    2 +-
 arch/arm/boards/freescale-mx35-3-stack/env/config |    4 ++--
 arch/arm/boards/freescale-mx51-pdk/env/config     |    4 ++--
 arch/arm/boards/guf-cupid/env/config              |    4 ++--
 arch/arm/boards/guf-neso/env/config               |    4 ++--
 arch/arm/boards/karo-tx25/env/config              |    4 ++--
 arch/arm/boards/karo-tx28/env/config              |    4 ++--
 arch/arm/boards/mini2440/env/config               |    4 ++--
 arch/arm/boards/nhk8815/env/config                |    4 ++--
 arch/arm/boards/pcm037/env/config                 |    4 ++--
 arch/arm/boards/pcm038/env/config                 |    4 ++--
 arch/arm/boards/pcm043/env/config                 |    4 ++--
 arch/arm/boards/phycard-i.MX27/env/config         |    4 ++--
 arch/arm/boards/pm9261/env/config                 |    4 ++--
 arch/arm/boards/pm9g45/env/config                 |    4 ++--
 arch/arm/boards/versatile/env/config              |    4 ++--
 defaultenv/bin/boot                               |   13 ++++++++-----
 22 files changed, 47 insertions(+), 44 deletions(-)

diff --git a/arch/arm/boards/at91sam9261ek/env/config b/arch/arm/boards/at91sam9261ek/env/config
index 3b92233..1203705 100644
--- a/arch/arm/boards/at91sam9261ek/env/config
+++ b/arch/arm/boards/at91sam9261ek/env/config
@@ -10,8 +10,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
index 49c4339..25036af 100644
--- a/arch/arm/boards/at91sam9263ek/env/config
+++ b/arch/arm/boards/at91sam9263ek/env/config
@@ -10,8 +10,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net' , 'nor' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/at91sam9m10g45ek/env/config b/arch/arm/boards/at91sam9m10g45ek/env/config
index 3b92233..1203705 100644
--- a/arch/arm/boards/at91sam9m10g45ek/env/config
+++ b/arch/arm/boards/at91sam9m10g45ek/env/config
@@ -10,8 +10,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/eukrea_cpuimx25/env/config b/arch/arm/boards/eukrea_cpuimx25/env/config
index 927010c..5cedbf8 100644
--- a/arch/arm/boards/eukrea_cpuimx25/env/config
+++ b/arch/arm/boards/eukrea_cpuimx25/env/config
@@ -15,7 +15,7 @@ ip=none
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net' or 'nand'
+# can be either 'nfs', 'tftp' or 'nand'
 kernel_loc=nand
 # can be either 'net', 'nand' or 'initrd'
 rootfs_loc=nand
diff --git a/arch/arm/boards/eukrea_cpuimx35/env/config b/arch/arm/boards/eukrea_cpuimx35/env/config
index 6ed6b24..776d19a 100644
--- a/arch/arm/boards/eukrea_cpuimx35/env/config
+++ b/arch/arm/boards/eukrea_cpuimx35/env/config
@@ -15,7 +15,7 @@ ip=none
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net' or 'nand'
+# can be either 'nfs', 'tftp' or 'nand'
 kernel_loc=nand
 # can be either 'net', 'nand' or 'initrd'
 rootfs_loc=nand
diff --git a/arch/arm/boards/eukrea_cpuimx51/env/config b/arch/arm/boards/eukrea_cpuimx51/env/config
index 51fcdde..737f8e3 100644
--- a/arch/arm/boards/eukrea_cpuimx51/env/config
+++ b/arch/arm/boards/eukrea_cpuimx51/env/config
@@ -18,7 +18,7 @@ ip=none
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net' or 'nand'
+# can be either 'nfs', 'tftp' or 'nand'
 kernel_loc=nand
 # can be either 'net', 'nand' or 'initrd'
 rootfs_loc=nand
diff --git a/arch/arm/boards/freescale-mx35-3-stack/env/config b/arch/arm/boards/freescale-mx35-3-stack/env/config
index df01d42..ee9bd07 100644
--- a/arch/arm/boards/freescale-mx35-3-stack/env/config
+++ b/arch/arm/boards/freescale-mx35-3-stack/env/config
@@ -14,8 +14,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net', 'nor' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/freescale-mx51-pdk/env/config b/arch/arm/boards/freescale-mx51-pdk/env/config
index d9b8407..8e6b34e 100644
--- a/arch/arm/boards/freescale-mx51-pdk/env/config
+++ b/arch/arm/boards/freescale-mx51-pdk/env/config
@@ -14,8 +14,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net', 'nor' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/guf-cupid/env/config b/arch/arm/boards/guf-cupid/env/config
index 4db05b6..cd11eb1 100644
--- a/arch/arm/boards/guf-cupid/env/config
+++ b/arch/arm/boards/guf-cupid/env/config
@@ -14,8 +14,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net', 'nor' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/guf-neso/env/config b/arch/arm/boards/guf-neso/env/config
index 6327e69..162488f 100644
--- a/arch/arm/boards/guf-neso/env/config
+++ b/arch/arm/boards/guf-neso/env/config
@@ -14,8 +14,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net', 'nor' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/karo-tx25/env/config b/arch/arm/boards/karo-tx25/env/config
index e4ff756..9113a87 100644
--- a/arch/arm/boards/karo-tx25/env/config
+++ b/arch/arm/boards/karo-tx25/env/config
@@ -14,8 +14,8 @@ ip=dhcp
 #eth0.serverip=a.b.c.d
 #eth0.gateway=a.b.c.d
 
-# can be either 'net'
-kernel_loc=net
+# can be either 'nfs' or 'tftp'
+kernel_loc=tftp
 # can be either 'net' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/karo-tx28/env/config b/arch/arm/boards/karo-tx28/env/config
index 9b302b8..fdf57ea 100644
--- a/arch/arm/boards/karo-tx28/env/config
+++ b/arch/arm/boards/karo-tx28/env/config
@@ -15,8 +15,8 @@ ip=dhcp
 #eth0.serverip=a.b.c.d
 #eth0.gateway=a.b.c.d
 
-# can be either 'net'
-kernel_loc=net
+# can be either 'nfs' or 'tftp'
+kernel_loc=tftp
 # can be either 'net' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/mini2440/env/config b/arch/arm/boards/mini2440/env/config
index b24877e..ff6f1ea 100644
--- a/arch/arm/boards/mini2440/env/config
+++ b/arch/arm/boards/mini2440/env/config
@@ -14,8 +14,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net', or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/nhk8815/env/config b/arch/arm/boards/nhk8815/env/config
index e657a76..7428c43 100644
--- a/arch/arm/boards/nhk8815/env/config
+++ b/arch/arm/boards/nhk8815/env/config
@@ -10,8 +10,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/pcm037/env/config b/arch/arm/boards/pcm037/env/config
index df2f694..3748cc4 100644
--- a/arch/arm/boards/pcm037/env/config
+++ b/arch/arm/boards/pcm037/env/config
@@ -14,8 +14,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net', 'nor' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp', nor' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/pcm038/env/config b/arch/arm/boards/pcm038/env/config
index a8be5c9..9e28f5d 100644
--- a/arch/arm/boards/pcm038/env/config
+++ b/arch/arm/boards/pcm038/env/config
@@ -14,8 +14,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net', 'nor' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/pcm043/env/config b/arch/arm/boards/pcm043/env/config
index 212b6a9..e7f94f8 100644
--- a/arch/arm/boards/pcm043/env/config
+++ b/arch/arm/boards/pcm043/env/config
@@ -14,8 +14,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net', 'nor' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/phycard-i.MX27/env/config b/arch/arm/boards/phycard-i.MX27/env/config
index d0670de..0e20b48 100644
--- a/arch/arm/boards/phycard-i.MX27/env/config
+++ b/arch/arm/boards/phycard-i.MX27/env/config
@@ -14,8 +14,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net', 'nor' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nor', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/pm9261/env/config b/arch/arm/boards/pm9261/env/config
index f7e133e..7933379 100644
--- a/arch/arm/boards/pm9261/env/config
+++ b/arch/arm/boards/pm9261/env/config
@@ -10,8 +10,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/pm9g45/env/config b/arch/arm/boards/pm9g45/env/config
index 3b92233..1203705 100644
--- a/arch/arm/boards/pm9g45/env/config
+++ b/arch/arm/boards/pm9g45/env/config
@@ -10,8 +10,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net' or 'nand'
-kernel_loc=net
+# can be either 'nfs', 'tftp' or 'nand'
+kernel_loc=tftp
 # can be either 'net', 'nand' or 'initrd'
 rootfs_loc=net
 
diff --git a/arch/arm/boards/versatile/env/config b/arch/arm/boards/versatile/env/config
index 9dec3f2..9c5ce61 100644
--- a/arch/arm/boards/versatile/env/config
+++ b/arch/arm/boards/versatile/env/config
@@ -10,8 +10,8 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
-# can be either 'net' or 'nor'
-kernel_loc=net
+# can be either 'nfs', 'tftp' or 'nor'
+kernel_loc=tftp
 # can be either 'net', 'nor' or 'initrd'
 rootfs_loc=initrd
 
diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 7497791..de4fa24 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -8,9 +8,12 @@ if [ x$1 = xnand ]; then
 elif [ x$1 = xnor ]; then
 	rootfs_loc=nor
 	kernel_loc=nor
-elif [ x$1 = xnet ]; then
+elif [ x$1 = xnfs ]; then
 	rootfs_loc=net
-	kernel_loc=net
+	kernel_loc=nfs
+elif [ x$1 = xtftp ]; then
+	rootfs_loc=net
+	kernel_loc=tftp
 fi
 
 if [ x$ip = xdhcp ]; then
@@ -71,7 +74,7 @@ if [ ! -e /dev/ram0.kernel ]; then
 	addpart /dev/ram0 8M@8M(kernel)
 fi
 
-if [ x$kernel_loc = xnet ]; then
+if [ x$kernel_loc = xnfs ] || [ x$kernel_loc = xtftp ]; then
 	if [ x$ip = xdhcp ]; then
 		dhcp
 	fi
@@ -87,14 +90,14 @@ if [ x$kernel_loc = xnet ]; then
 		echo "error: set kernelimage_type to one of 'uimage', 'zimage', 'raw' or 'raw_lzo'"
 		exit 1
 	fi
-	tftp $kernelimage $netload || exit 1
+	$kernel_loc $kernelimage $netload || exit 1
 	kdev="$netload"
 elif [ x$kernel_loc = xnor ]; then
 	kdev="/dev/nor0.kernel"
 elif [ x$kernel_loc = xnand ]; then
 	kdev="/dev/nand0.kernel.bb"
 else
-	echo "error: set kernel_loc to one of 'net', 'nand' or 'nor'"
+	echo "error: set kernel_loc to one of 'nfs', 'tftp', 'nand' or 'nor'"
 	exit 1
 fi
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
