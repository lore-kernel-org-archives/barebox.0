Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQZp6-0002hw-8P
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 12:45:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 14:44:31 +0200
Message-Id: <1469191472-14491-18-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
References: <1469191472-14491-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 17/18] blspec: Turn message back to debug level
To: Barebox List <barebox@lists.infradead.org>

Normally one should not be interested that the blspec code scans
a directory. In case blspec is not actively used it might even be
confusing, so lower priority of the message in blspec_scan_directory()
to pr_debug.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/blspec.c b/common/blspec.c
index 6c963df..f02f5e9 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -438,7 +438,7 @@ int blspec_scan_directory(struct bootentries *bootentries, const char *root)
 	if (!IS_ERR(nfspath))
 		root = nfspath;
 
-	pr_info("%s: %s %s\n", __func__, root, dirname);
+	pr_debug("%s: %s %s\n", __func__, root, dirname);
 
 	abspath = basprintf("%s/%s", root, dirname);
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
