Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oo04n-0001xp-Mi
	for barebox@lists.infradead.org; Tue, 24 Aug 2010 20:26:34 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 24 Aug 2010 22:26:12 +0200
Message-Id: <1282681572-20846-4-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1282681572-20846-1-git-send-email-mkl@pengutronix.de>
References: <1282681572-20846-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 3/3] defaultenv: create /dev/ram0.kernel at offset 8M
To: barebox@lists.infradead.org
Cc: sha@pengutronix.de

otherwise uImages won't boot.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 defaultenv/bin/boot |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index a9e589b..6476bdb 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -62,7 +62,7 @@ fi
 if [ ! -e /dev/ram0.kernel ]; then
 	# Here we can safely put the kernel without risking of overwriting it
 	# while extracting
-	addpart dev/ram0 8M(kernel)
+	addpart dev/ram0 8M@8M(kernel)
 fi
 
 if [ x$kernel_loc = xnet ]; then
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
