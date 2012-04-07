Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SGMNA-0005iY-Iq
 for barebox@lists.infradead.org; Sat, 07 Apr 2012 03:31:33 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 1E1E8FF8845
 for <barebox@lists.infradead.org>; Sat,  7 Apr 2012 05:32:21 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  7 Apr 2012 05:14:58 +0200
Message-Id: <1333768501-25204-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120407031228.GF16306@game.jcrosoft.org>
References: <20120407031228.GF16306@game.jcrosoft.org>
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
Subject: [PATCH 1/4] defaultenv: add support for custom board boot
To: barebox@lists.infradead.org

This will allow a board to have a custom boot choice with a boot menu as
example.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 defaultenv/bin/init |   18 +++++++++++-------
 1 files changed, 11 insertions(+), 7 deletions(-)

diff --git a/defaultenv/bin/init b/defaultenv/bin/init
index b371c42..7452bb6 100644
--- a/defaultenv/bin/init
+++ b/defaultenv/bin/init
@@ -24,11 +24,15 @@ if [ -f /env/bin/init_board ]; then
 	. /env/bin/init_board
 fi
 
-echo
-echo -n "Hit any key to stop autoboot: "
-timeout -a $autoboot_timeout
-if [ $? != 0 ]; then
-	exit
+if [ -f /env/bin/boot_board ]; then
+	. /env/bin/boot_board
+else
+	echo
+	echo -n "Hit any key to stop autoboot: "
+	timeout -a $autoboot_timeout
+	if [ $? != 0 ]; then
+		exit
+	fi
+
+	boot
 fi
-
-boot
-- 
1.7.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
