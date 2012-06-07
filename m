Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1ScjSe-0005jX-J9
 for barebox@lists.infradead.org; Thu, 07 Jun 2012 20:37:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 Jun 2012 22:37:36 +0200
Message-Id: <1339101456-8116-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/3] defaultenv-2: remove global.tftp.path
To: barebox@lists.infradead.org

This variable is set in /env/init/general and then used
in /env/boot/* which is a bit confusing. Also it does not
necessarily have to be a tftp path (could be nfs aswell).
Use a local variable in the scripts using it instead to make
the meaning a bit more clear.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv-2/base/bin/init     |    2 --
 defaultenv-2/base/boot/initrd  |    5 +++--
 defaultenv-2/base/boot/net     |    6 ++++--
 defaultenv-2/base/init/general |    3 ---
 4 files changed, 7 insertions(+), 9 deletions(-)

diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
index e293c62..9d7eb2e 100644
--- a/defaultenv-2/base/bin/init
+++ b/defaultenv-2/base/bin/init
@@ -4,8 +4,6 @@ export PATH=/env/bin
 
 global hostname=generic
 global user=none
-global tftp.server
-global tftp.path=/mnt/tftp-dhcp
 global autoboot_timeout=3
 global boot.default=net
 global allow_color=true
diff --git a/defaultenv-2/base/boot/initrd b/defaultenv-2/base/boot/initrd
index 1a1e629..79a353a 100644
--- a/defaultenv-2/base/boot/initrd
+++ b/defaultenv-2/base/boot/initrd
@@ -5,8 +5,9 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
-global.bootm.image="${global.tftp.path}/${global.user}-linux-${global.hostname}"
-global.bootm.initrd="${global.tftp.path}/initramfs"
+path="/mnt/tftp"
+global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
+global.bootm.initrd="${path}/initramfs"
 bootargs-root-initrd
 #global.bootm.oftree=<path to oftree>
 
diff --git a/defaultenv-2/base/boot/net b/defaultenv-2/base/boot/net
index 2684c20..922bef1 100644
--- a/defaultenv-2/base/boot/net
+++ b/defaultenv-2/base/boot/net
@@ -5,8 +5,10 @@ if [ "$1" = menu ]; then
 	exit
 fi
 
-global.bootm.image="${global.tftp.path}/${global.user}-linux-${global.hostname}"
-#global.bootm.oftree="${global.tftp.path}/${global.user}-oftree-${global.hostname}"
+path="/mnt/tftp"
+
+global.bootm.image="${path}/${global.user}-linux-${global.hostname}"
+#global.bootm.oftree="${path}/${global.user}-oftree-${global.hostname}"
 nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
 bootargs-ip
 bootargs-root-nfs -n "$nfsroot"
diff --git a/defaultenv-2/base/init/general b/defaultenv-2/base/init/general
index 2fea03d..98a92d1 100644
--- a/defaultenv-2/base/init/general
+++ b/defaultenv-2/base/init/general
@@ -13,6 +13,3 @@ global.autoboot_timeout=3
 
 # default boot entry (one of /env/boot/*)
 global.boot.default=net
-
-# default tftp path
-global.tftp.path=/mnt/tftp
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
