Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ea0-x22e.google.com ([2a00:1450:4013:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VR7c2-0006np-Dk
 for barebox@lists.infradead.org; Tue, 01 Oct 2013 21:36:11 +0000
Received: by mail-ea0-f174.google.com with SMTP id z15so3702944ead.5
 for <barebox@lists.infradead.org>; Tue, 01 Oct 2013 14:35:48 -0700 (PDT)
From: Rostislav Lisovy <lisovy@gmail.com>
Date: Tue,  1 Oct 2013 23:35:21 +0200
Message-Id: <1380663322-25733-4-git-send-email-lisovy@gmail.com>
In-Reply-To: <1380663322-25733-1-git-send-email-lisovy@gmail.com>
References: <1380663322-25733-1-git-send-email-lisovy@gmail.com>
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
Subject: [PATCH 3/4] i.mx53: voipac: Add barebox environment configuration file
To: barebox@lists.infradead.org
Cc: Rostislav Lisovy <lisovy@gmail.com>, pisa@cmp.felk.cvut.cz

Signed-off-by: Rostislav Lisovy <lisovy@gmail.com>
---
 create mode 100644 arch/arm/boards/freescale-mx53-voipac/env/config

diff --git a/arch/arm/boards/freescale-mx53-voipac/env/config b/arch/arm/boards/freescale-mx53-voipac/env/config
new file mode 100644
index 0000000..59432d7
--- /dev/null
+++ b/arch/arm/boards/freescale-mx53-voipac/env/config
@@ -0,0 +1,46 @@
+#!/bin/sh
+
+global.hostname=imx53-voipac
+eth0.serverip=
+user=
+
+# use 'dhcp' to do dhcp in barebox and in kernel
+# use 'none' if you want to skip kernel ip autoconfiguration
+ip=dhcp
+
+# or set your networking parameters here
+#eth0.ipaddr=a.b.c.d
+#eth0.netmask=a.b.c.d
+#eth0.gateway=a.b.c.d
+#eth0.serverip=a.b.c.d
+
+# can be either 'nfs', 'tftp', 'nor' or 'nand'
+kernel_loc=tftp
+# can be either 'net', 'nor', 'nand' or 'initrd'
+rootfs_loc=net
+
+# can be either 'jffs2' or 'ubifs'
+rootfs_type=ubifs
+rootfsimage=root-${global.hostname}.$rootfs_type
+
+kernelimage=zImage-${global.hostname}
+#kernelimage=uImage-${global.hostname}
+#kernelimage=Image-${global.hostname}
+#kernelimage=Image-${global.hostname}.lzo
+
+if [ -n $user ]; then
+	kernelimage="$user"-"$kernelimage"
+	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
+	rootfsimage="$user"-"$rootfsimage"
+else
+	nfsroot="$eth0.serverip:/path/to/nfs/root"
+fi
+
+autoboot_timeout=3
+
+bootargs="console=ttymxc0,115200"
+
+disk_parts="256k(barebox)ro,128k(bareboxenv),4M(kernel),-(root)"
+
+# set a fancy prompt (if support is compiled in)
+PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
