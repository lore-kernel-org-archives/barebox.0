Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q88mv-00079y-0d
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 10:19:38 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Fri,  8 Apr 2011 12:19:04 +0200
Message-Id: <1302257948-18174-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
References: <1302257948-18174-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 3/7] defaultenv: boot: add eth0 to ip configuration
To: sha@pengutronix.de
Cc: barebox@lists.infradead.org

When passing a fixed IP to the kernel set it explicit to eth0. Otherwise
on systems with more than one interface dhcp might be used.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 defaultenv/bin/boot |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 6649c57..3514961 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -25,7 +25,7 @@ if [ x$ip = xdhcp ]; then
 elif [ x$ip = xnone ]; then
 	bootargs="$bootargs ip=none"
 else
-	bootargs="$bootargs ip=$eth0.ipaddr::$eth0.gateway:$eth0.netmask:::"
+	bootargs="$bootargs ip=$eth0.ipaddr::$eth0.gateway:$eth0.netmask::eth0:"
 fi
 
 
-- 
1.7.4.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
