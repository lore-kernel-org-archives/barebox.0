Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOodi-00077Q-ST
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:19:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:19:28 +0200
Message-Id: <1335784768-9189-14-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1335784768-9189-1-git-send-email-s.hauer@pengutronix.de>
References: <1335784768-9189-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 13/13] defaultenv: remove now unnecessary hush-hack
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 defaultenv/bin/hush_hack |    1 -
 defaultenv/bin/init      |    5 +----
 2 files changed, 1 insertion(+), 5 deletions(-)
 delete mode 100644 defaultenv/bin/hush_hack

diff --git a/defaultenv/bin/hush_hack b/defaultenv/bin/hush_hack
deleted file mode 100644
index 5fffa92..0000000
--- a/defaultenv/bin/hush_hack
+++ /dev/null
@@ -1 +0,0 @@
-nand -a /dev/nand0.*
diff --git a/defaultenv/bin/init b/defaultenv/bin/init
index 7452bb6..6e85a82 100644
--- a/defaultenv/bin/init
+++ b/defaultenv/bin/init
@@ -14,10 +14,7 @@ fi
 
 if [ -e /dev/nand0 -a -n "$nand_parts" ]; then
 	addpart /dev/nand0 $nand_parts
-
-	# Uh, oh, hush first expands wildcards and then starts executing
-	# commands. What a bug!
-	source /env/bin/hush_hack
+	nand -a /dev/nand0.*
 fi
 
 if [ -f /env/bin/init_board ]; then
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
