Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SXCLF-0005nP-N5
 for barebox@lists.infradead.org; Wed, 23 May 2012 14:15:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 May 2012 16:15:05 +0200
Message-Id: <1337782505-8382-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1337782505-8382-1-git-send-email-s.hauer@pengutronix.de>
References: <1337782505-8382-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] defaultenv-2: automount script: run mount only when ifup
 succeeds
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv-2/base/init/automount |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/defaultenv-2/base/init/automount b/defaultenv-2/base/init/automount
index e029222..63099f9 100644
--- a/defaultenv-2/base/init/automount
+++ b/defaultenv-2/base/init/automount
@@ -8,20 +8,20 @@ fi
 # automount server returned from dhcp server
 
 mkdir -p /mnt/tftp-dhcp
-automount /mnt/tftp-dhcp 'ifup eth0; mount $eth0.serverip tftp /mnt/tftp-dhcp'
+automount /mnt/tftp-dhcp 'ifup eth0 && mount $eth0.serverip tftp /mnt/tftp-dhcp'
 
 # automount nfs server example
 
 #nfshost=somehost
 #mkdir -p /mnt/${nfshost}
-#automount /mnt/$nfshost "ifup eth0; mount ${nfshost}:/tftpboot nfs /mnt/${nfshost}"
+#automount /mnt/$nfshost "ifup eth0 && mount ${nfshost}:/tftpboot nfs /mnt/${nfshost}"
 
 # static tftp server example
 
 #mkdir -p /mnt/tftp
-#automount -d /mnt/tftp 'ifup eth0; mount $serverip tftp /mnt/tftp'
+#automount -d /mnt/tftp 'ifup eth0 && mount $serverip tftp /mnt/tftp'
 
 # FAT on usb disk example
 
 #mkdir -p /mnt/fat
-#automount -d /mnt/fat 'usb; mount /dev/usbdisk0.0 fat $automount_path'
+#automount -d /mnt/fat 'usb && [ -e /dev/disk0.0 ] && mount /dev/disk0.0 fat /mnt/fat'
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
