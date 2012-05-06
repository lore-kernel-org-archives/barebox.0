Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp19.mail.ru ([94.100.176.156])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SQuEz-0001sR-7T
 for barebox@lists.infradead.org; Sun, 06 May 2012 05:42:42 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun,  6 May 2012 09:42:39 +0400
Message-Id: <1336282959-5961-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH] PCM038: choose boot device by parsing barebox_loc magic
 variable
To: barebox@lists.infradead.org

---
 arch/arm/boards/pcm038/env/config |   12 ++++++++++--
 1 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/pcm038/env/config b/arch/arm/boards/pcm038/env/config
index 32be5ec..59f3e89 100644
--- a/arch/arm/boards/pcm038/env/config
+++ b/arch/arm/boards/pcm038/env/config
@@ -14,10 +14,18 @@ ip=dhcp
 #eth0.gateway=a.b.c.d
 #eth0.serverip=a.b.c.d
 
+if [ x$barebox_loc = xnand ]; then
+	kernel_loc=nand
+	rootfs_loc=nand
+elif [ x$barebox_loc = xnor ]; then
+	kernel_loc=nor
+	rootfs_loc=nor
+else
 # can be either 'nfs', 'tftp', 'nor' or 'nand'
-kernel_loc=tftp
+	kernel_loc=tftp
 # can be either 'net', 'nor', 'nand' or 'initrd'
-rootfs_loc=net
+	rootfs_loc=net
+fi
 
 # can be either 'jffs2' or 'ubifs'
 rootfs_type=ubifs
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
