Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R7viT-0006c1-Ez
	for barebox@lists.infradead.org; Sun, 25 Sep 2011 20:54:28 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Sun, 25 Sep 2011 22:54:07 +0200
Message-Id: <1316984054-31295-5-git-send-email-w.sang@pengutronix.de>
In-Reply-To: <1316984054-31295-1-git-send-email-w.sang@pengutronix.de>
References: <1316984054-31295-1-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 04/11] defaultenv: boot: add serverip to static ip
	configuration
To: barebox@lists.infradead.org

From: Marc Kleine-Budde <mkl@pengutronix.de>

If a (different) server is supplied to the "nfsroot" parameter, the kernel
will choose that one.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 defaultenv/bin/boot |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index 3514961..4284308 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -25,7 +25,7 @@ if [ x$ip = xdhcp ]; then
 elif [ x$ip = xnone ]; then
 	bootargs="$bootargs ip=none"
 else
-	bootargs="$bootargs ip=$eth0.ipaddr::$eth0.gateway:$eth0.netmask::eth0:"
+	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask::eth0:"
 fi
 
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
