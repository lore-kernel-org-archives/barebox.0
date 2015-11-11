Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZwSPo-0006np-Cl
 for barebox@lists.infradead.org; Wed, 11 Nov 2015 10:14:09 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Wed, 11 Nov 2015 11:13:42 +0100
Message-Id: <1447236822-13102-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH v2] defaultenv: boot/net: Boot initramfs from tftp if present
To: barebox@lists.infradead.org

Use an 'initramfs' file if it exists instead of nfsroot. This offers the
possibility to quickly boot complete filesystems as initramfs without
the need to flash an SD-card or similar. If the initramfs does not
exist, it uses the default nfsroot mechanism.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---

Changes in v2:
- Changed variable name to 'initramfs' to make clear that this is intended to
  be used for initramfs. initrd is possible but requires additional linux
  bootargs
- Removed the hardcoded 'rdinit' bootarg

 defaultenv/defaultenv-2-base/boot/net | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
index ced2fadba212..af096410b7b2 100644
--- a/defaultenv/defaultenv-2-base/boot/net
+++ b/defaultenv/defaultenv-2-base/boot/net
@@ -11,4 +11,10 @@ fi
 
 nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
 bootargs-ip
-global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
+
+initramfs="${path}/${global.user}-initramfs-${global.hostname}"
+if [ -f "${initramfs}" ]; then
+	global.bootm.initrd="$initramfs"
+else
+	global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
+fi
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
