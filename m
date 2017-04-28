Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.eu ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1d45IF-0001TN-Ou
 for barebox@lists.infradead.org; Fri, 28 Apr 2017 12:46:42 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 827E3A004D7
 for <barebox@lists.infradead.org>; Fri, 28 Apr 2017 14:46:54 +0200 (CEST)
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 28 Apr 2017 14:46:05 +0200
Message-Id: <1493383568-27798-4-git-send-email-d.schultz@phytec.de>
In-Reply-To: <1493383568-27798-1-git-send-email-d.schultz@phytec.de>
References: <1493383568-27798-1-git-send-email-d.schultz@phytec.de>
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
Subject: [PATCH 4/7] arm: boards: phytec-som-am335x: Add automount script
To: barebox@lists.infradead.org

Each boot source is mounted to either /mnt/mmc or /mnt/emmc. To make the
not-mounted boot source available in Barebox, an automount script mounts
this device to /mnt/{mmc, emmc}, if the directory will be accessed.

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
 .../defaultenv-physom-am335x/init/automount           | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)
 create mode 100644 arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/automount

diff --git a/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/automount b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/automount
new file mode 100644
index 0000000..3d109ec
--- /dev/null
+++ b/arch/arm/boards/phytec-som-am335x/defaultenv-physom-am335x/init/automount
@@ -0,0 +1,19 @@
+#!/bin/sh
+
+# automount tftp server based on $eth0.serverip
+
+mkdir -p /mnt/tftp
+automount /mnt/tftp 'ifup eth0 && mount -t tftp $eth0.serverip /mnt/tftp'
+
+# automount nfs server's nfsroot
+
+mkdir -p /mnt/nfs
+automount /mnt/nfs 'ifup eth0 && mount -t nfs ${eth0.serverip}:/home/${global.user}/nfsroot/${global.hostname} /mnt/nfs'
+
+#automount SD card and EMMC boot partitions
+
+if [ $bootsource = mmc -a $bootsource_instance = 1 ]; then
+	automount /mnt/mmc '[ -e /dev/mmc0.0 ] && mount /dev/mmc0.0 /mnt/mmc'
+else
+	automount /mnt/emmc '[ -e /dev/mmc1.0 ] && mount /dev/mmc1.0 /mnt/emmc'
+fi
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
