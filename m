Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ScjSe-0005jW-J5
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 20:37:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 Jun 2012 22:37:35 +0200
Message-Id: <1339101456-8116-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1339101456-8116-1-git-send-email-s.hauer@pengutronix.de>
References: <1339101456-8116-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] defaultenv-2: mount tftp server specified in
 $eth0.serverip
To: barebox@lists.infradead.org

This is always the tftp server specified in /env/network/eth0,
this could be either the one returned from a dhcp request or
a manually specified one, but in the end it's always the right
one.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv-2/base/init/automount |   11 +++--------
 defaultenv-2/base/init/general   |    2 +-
 2 files changed, 4 insertions(+), 9 deletions(-)

diff --git a/defaultenv-2/base/init/automount b/defaultenv-2/base/init/automount
index 63099f9..7b53309 100644
--- a/defaultenv-2/base/init/automount
+++ b/defaultenv-2/base/init/automount
@@ -5,10 +5,10 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
-# automount server returned from dhcp server
+# automount tftp server based on $eth0.serverip
 
-mkdir -p /mnt/tftp-dhcp
-automount /mnt/tftp-dhcp 'ifup eth0 && mount $eth0.serverip tftp /mnt/tftp-dhcp'
+mkdir -p /mnt/tftp
+automount /mnt/tftp 'ifup eth0 && mount $eth0.serverip tftp /mnt/tftp'
 
 # automount nfs server example
 
@@ -16,11 +16,6 @@ automount /mnt/tftp-dhcp 'ifup eth0 && mount $eth0.serverip tftp /mnt/tftp-dhcp'
 #mkdir -p /mnt/${nfshost}
 #automount /mnt/$nfshost "ifup eth0 && mount ${nfshost}:/tftpboot nfs /mnt/${nfshost}"
 
-# static tftp server example
-
-#mkdir -p /mnt/tftp
-#automount -d /mnt/tftp 'ifup eth0 && mount $serverip tftp /mnt/tftp'
-
 # FAT on usb disk example
 
 #mkdir -p /mnt/fat
diff --git a/defaultenv-2/base/init/general b/defaultenv-2/base/init/general
index ad6c860..2fea03d 100644
--- a/defaultenv-2/base/init/general
+++ b/defaultenv-2/base/init/general
@@ -15,4 +15,4 @@ global.autoboot_timeout=3
 global.boot.default=net
 
 # default tftp path
-global.tftp.path=/mnt/tftp-dhcp
+global.tftp.path=/mnt/tftp
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
