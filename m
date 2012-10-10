Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TLwbo-0006YF-Ac
 for barebox@lists.infradead.org; Wed, 10 Oct 2012 13:46:01 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Wed, 10 Oct 2012 15:45:50 +0200
Message-Id: <1349876750-7292-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] defaultenv-2: boot: add missing space in error message
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 defaultenv-2/base/bin/boot |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv-2/base/bin/boot b/defaultenv-2/base/bin/boot
index 103eb87..ebbd951 100644
--- a/defaultenv-2/base/bin/boot
+++ b/defaultenv-2/base/bin/boot
@@ -45,7 +45,7 @@ fi
 
 if [ -n "$scr" ]; then
 	if [ ! -f /env/boot/$scr ]; then
-		echo -e "/env/boot/$scr does not exist.Valid choices:\n$sources"
+		echo -e "/env/boot/$scr does not exist. Valid choices:\n$sources"
 		exit
 	fi
 	/env/boot/$scr
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
