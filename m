Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R7viT-0006bz-Em
	for barebox@lists.infradead.org; Sun, 25 Sep 2011 20:54:28 +0000
From: Wolfram Sang <w.sang@pengutronix.de>
Date: Sun, 25 Sep 2011 22:54:05 +0200
Message-Id: <1316984054-31295-3-git-send-email-w.sang@pengutronix.de>
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
Subject: [PATCH 02/11] defaultenv: boot: add backwards compatibility for
	kernel_loc=net
To: barebox@lists.infradead.org

From: Marc Kleine-Budde <mkl@pengutronix.de>

Since commit 9eac282024c55fc13970189d6ace61f884917538, the boot script
doesn't understand kernel_loc=net anymore. This patch adds backwards
compatibility so that the kernel is loaded from tftp as before.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
---
 defaultenv/bin/boot |    4 ++++
 1 files changed, 4 insertions(+), 0 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index c97a396..6649c57 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -2,6 +2,10 @@
 
 . /env/config
 
+if [ x$kernel_loc = xnet ]; then
+	kernel_loc=tftp
+fi
+
 if [ x$1 = xnand ]; then
 	rootfs_loc=nand
 	kernel_loc=nand
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
