Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 3.mo3.mail-out.ovh.net ([46.105.44.175]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SKUJU-0002Lz-7G
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 12:48:54 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 10404FF9122
 for <barebox@lists.infradead.org>; Wed, 18 Apr 2012 14:50:08 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 18 Apr 2012 14:30:04 +0200
Message-Id: <1334752204-11841-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120418120834.GD1980@game.jcrosoft.org>
References: <20120418120834.GD1980@game.jcrosoft.org>
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
Subject: [PATCH 3/3] config: fix missing switch machine to hostname during
 merge
To: barebox@lists.infradead.org

So we can use it for dhcp request too.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/boards/eukrea_cpuimx35/env/config |   14 +++++++-------
 1 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm/boards/eukrea_cpuimx35/env/config b/arch/arm/boards/eukrea_cpuimx35/env/config
index 8f64ba0..1b19bd2 100644
--- a/arch/arm/boards/eukrea_cpuimx35/env/config
+++ b/arch/arm/boards/eukrea_cpuimx35/env/config
@@ -3,7 +3,7 @@
 # otg port mode : can be 'host' or 'device'
 otg_mode="device"
 
-machine=eukrea-cpuimx35
+hostname=eukrea-cpuimx35
 
 # use 'dhcp' to do dhcp in barebox and in kernel
 # use 'none' if you want to skip kernel ip autoconfiguration
@@ -22,16 +22,16 @@ rootfs_loc=nand
 
 # rootfs
 rootfs_type=ubifs
-rootfsimage=$machine/rootfs.$rootfs_type
+rootfsimage=$hostname/rootfs.$rootfs_type
 
 # kernel
-kernelimage=$machine/uImage-${machine}.bin
+kernelimage=$hostname/uImage-${hostname}.bin
 
 # barebox and it's env
-bareboximage=$machine/barebox-${machine}.bin
-bareboxenvimage=$machine/bareboxenv-${machine}.bin
+bareboximage=$hostname/barebox-${hostname}.bin
+bareboxenvimage=$hostname/bareboxenv-${hostname}.bin
 
-nfsroot="$eth0.serverip:/srv/nfs/$machine"
+nfsroot="$eth0.serverip:/srv/nfs/$hostname"
 
 autoboot_timeout=1
 
@@ -40,7 +40,7 @@ bootargs="console=ttymxc0,115200 otg_mode=$otg_mode"
 nand_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
 rootfs_mtdblock_nand=3
 nand_device="mxc_nand"
-ubiroot="$machine-rootfs"
+ubiroot="$hostname-rootfs"
 device_type="nand"
 
 # set a fancy prompt (if support is compiled in)
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
