Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Pkkt9-00039r-Iy
	for barebox@lists.infradead.org; Wed, 02 Feb 2011 22:09:24 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed,  2 Feb 2011 23:09:18 +0100
Message-Id: <1296684558-16821-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1486407306=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] defaultenv/bin/boot: fix ubi root's name assignment
To: barebox@lists.infradead.org

--===============1486407306==
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

This patch fixes a regression introduced in commit
d15cfafeef8f99ff1a47e77362d0adf1b07f26ae.

While there, use "-z" to check if ubiroot variable is empty.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: Eric B�nard <eric@eukrea.com>
---
 defaultenv/bin/boot |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/defaultenv/bin/boot b/defaultenv/bin/boot
index fa68748..788a781 100644
--- a/defaultenv/bin/boot
+++ b/defaultenv/bin/boot
@@ -34,8 +34,8 @@ else
 	fi
 
 	if [ x$rootfs_type = xubifs ]; then
-		if [ x$ubiroot = x ]; then
-			ubiroot = "root"
+		if [ -z $ubiroot ]; then
+			ubiroot="root"
 		fi
 		bootargs="$bootargs root=ubi0:$ubiroot ubi.mtd=$rootfs_mtdblock"
 	else
-- 
1.7.2.3



--===============1486407306==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1486407306==--
