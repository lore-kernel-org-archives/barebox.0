Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1eKjPf-0003oC-1u
 for barebox@lists.infradead.ORG; Fri, 01 Dec 2017 11:23:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  1 Dec 2017 12:22:56 +0100
Message-Id: <20171201112256.20196-28-s.hauer@pengutronix.de>
In-Reply-To: <20171201112256.20196-1-s.hauer@pengutronix.de>
References: <20171201112256.20196-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 27/27] defaultenv-2: set bootargs correctly for network boot
To: Barebox List <barebox@lists.infradead.org>

The defaultenv-2 network boot script uses bootargs-ip which
hardcodes eth0 as network device. To make this work with
other nwetork devices use the "ip_route_get" command to determine
the network device used to reach the server.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv/defaultenv-2-base/bin/bootargs-ip | 11 -----------
 defaultenv/defaultenv-2-base/boot/net        |  3 ++-
 2 files changed, 2 insertions(+), 12 deletions(-)
 delete mode 100644 defaultenv/defaultenv-2-base/bin/bootargs-ip

diff --git a/defaultenv/defaultenv-2-base/bin/bootargs-ip b/defaultenv/defaultenv-2-base/bin/bootargs-ip
deleted file mode 100644
index 2d4486caf8..0000000000
--- a/defaultenv/defaultenv-2-base/bin/bootargs-ip
+++ /dev/null
@@ -1,11 +0,0 @@
-#!/bin/sh
-
-# pass either static ip or dhcp to kernel based on barebox settings
-
-. /env/network/eth0
-
-if [ $ip = dhcp ]; then
-	global.linux.bootargs.dyn.ip="ip=dhcp"
-else
-	global.linux.bootargs.dyn.ip="ip=$ipaddr:$serverip:$gateway:$netmask::eth0:"
-fi
diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
index af096410b7..aaa5394f27 100644
--- a/defaultenv/defaultenv-2-base/boot/net
+++ b/defaultenv/defaultenv-2-base/boot/net
@@ -10,7 +10,8 @@ if [ -f "${oftree}" ]; then
 fi
 
 nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
-bootargs-ip
+
+ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
 
 initramfs="${path}/${global.user}-initramfs-${global.hostname}"
 if [ -f "${initramfs}" ]; then
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
