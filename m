Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sj83P-00052s-PO
 for barebox@lists.infradead.org; Mon, 25 Jun 2012 12:06:08 +0000
From: Jan Luebbe <jlu@pengutronix.de>
Date: Mon, 25 Jun 2012 14:06:00 +0200
Message-Id: <1340625960-18234-1-git-send-email-jlu@pengutronix.de>
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
Subject: [PATCH] defaultenv/bin/init: skip autoboot if $autoboot_timeout is
 unset
To: barebox@lists.infradead.org

Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
---
 defaultenv/bin/init |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/defaultenv/bin/init b/defaultenv/bin/init
index 6e85a82..f535e37 100644
--- a/defaultenv/bin/init
+++ b/defaultenv/bin/init
@@ -23,7 +23,7 @@ fi
 
 if [ -f /env/bin/boot_board ]; then
 	. /env/bin/boot_board
-else
+elif [ -n $autoboot_timeout ]; then
 	echo
 	echo -n "Hit any key to stop autoboot: "
 	timeout -a $autoboot_timeout
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
