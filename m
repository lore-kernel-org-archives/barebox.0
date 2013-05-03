Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.free-electrons.com ([94.23.35.102])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UYJCt-0004BB-Ec
 for barebox@lists.infradead.org; Fri, 03 May 2013 16:51:39 +0000
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Date: Fri,  3 May 2013 18:51:05 +0200
Message-Id: <1367599871-28479-2-git-send-email-thomas.petazzoni@free-electrons.com>
In-Reply-To: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
References: <1367599871-28479-1-git-send-email-thomas.petazzoni@free-electrons.com>
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
Subject: [PATCH 1/7] scripts: allow lines longer than 80 cols with printf() in
 checkpatch
To: barebox@lists.infradead.org
Cc: Lior Amsalem <alior@marvell.com>, Willy Tarreau <w@1wt.eu>, Ezequiel Garcia <ezequiel.garcia@free-electrons.com>

The checkpatch.pl script is also used to validate user-space code in
the scripts/ directory, so it should allow printf() lines to be longer
than 80 columns.

Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
---
 scripts/checkpatch.pl |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
index 0d94f98..e80926f 100755
--- a/scripts/checkpatch.pl
+++ b/scripts/checkpatch.pl
@@ -209,7 +209,7 @@ our $typeTypedefs = qr{(?x:
 )};
 
 our $logFunctions = qr{(?x:
-	printk|
+	printk|printf|
 	pr_(debug|dbg|vdbg|devel|info|warning|err|notice|alert|crit|emerg|cont)|
 	(dev|netdev|netif)_(printk|dbg|vdbg|info|warn|err|notice|alert|crit|emerg|WARN)|
 	WARN|
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
