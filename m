Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qt1-x843.google.com ([2607:f8b0:4864:20::843])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gkeqZ-0001Un-3J
 for barebox@lists.infradead.org; Sat, 19 Jan 2019 00:50:52 +0000
Received: by mail-qt1-x843.google.com with SMTP id l11so17358752qtp.0
 for <barebox@lists.infradead.org>; Fri, 18 Jan 2019 16:50:50 -0800 (PST)
From: Vivien Didelot <vivien.didelot@gmail.com>
Date: Fri, 18 Jan 2019 19:50:39 -0500
Message-Id: <20190119005039.31592-1-vivien.didelot@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] defaultenv-2: centralize nfs commands for 'net'
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Vivien Didelot <vivien.didelot@gmail.com>

Setting the nfsroot variable as well as the kernel bootargs for the
interface used to reach the server is specific to nfs, which are used
only if there's no initramfs to load from tftp. Move these statements
within the condition.

Signed-off-by: Vivien Didelot <vivien.didelot@gmail.com>
---
 defaultenv/defaultenv-2-base/boot/net | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
index b0fe4f584..5bd077d80 100644
--- a/defaultenv/defaultenv-2-base/boot/net
+++ b/defaultenv/defaultenv-2-base/boot/net
@@ -12,13 +12,11 @@ if [ -f "${oftree}" ]; then
 	global.bootm.oftree="$oftree"
 fi
 
-nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
-
-ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
-
 initramfs="${path}/${global.user}-initramfs-${global.hostname}"
 if [ -f "${initramfs}" ]; then
 	global.bootm.initrd="$initramfs"
 else
+	nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
+	ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
 	global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
 fi
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
