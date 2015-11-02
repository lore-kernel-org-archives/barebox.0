Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZtDcA-0007JU-9C
 for barebox@lists.infradead.org; Mon, 02 Nov 2015 11:49:30 +0000
From: Markus Pargmann <mpa@pengutronix.de>
Date: Mon,  2 Nov 2015 12:49:01 +0100
Message-Id: <1446464941-22009-1-git-send-email-mpa@pengutronix.de>
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
Subject: [PATCH] defaultenv: boot/net: Boot initramfs from tftp if present
To: barebox@lists.infradead.org

Use an 'initrd' file if it exists instead of nfsroot. This offers the
possibility to quickly boot complete filesystems as initramfs without
the need to flash a SD-card or similar. If the initrd does not exist,
it uses the default nfsroot mechanism.

Signed-off-by: Markus Pargmann <mpa@pengutronix.de>
---
 defaultenv/defaultenv-2-base/boot/net | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
index ced2fadba212..fb8531ae1fbe 100644
--- a/defaultenv/defaultenv-2-base/boot/net
+++ b/defaultenv/defaultenv-2-base/boot/net
@@ -11,4 +11,11 @@ fi
 
 nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
 bootargs-ip
-global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
+
+initrd="${path}/${global.user}-initrd-${global.hostname}"
+if [ -f "${initrd}" ]; then
+	global.bootm.initrd="$initrd"
+	global.linux.bootargs.dyn.root="rdinit=/sbin/init"
+else
+	global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
+fi
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
