Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T7mx2-0006SH-DZ
 for barebox@lists.infradead.org; Sat, 01 Sep 2012 12:37:31 +0000
Received: from mail21.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id 477E3DC705B
 for <barebox@lists.infradead.org>; Sat,  1 Sep 2012 14:42:35 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sat,  1 Sep 2012 14:37:29 +0200
Message-Id: <1346503053-21862-14-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1346503053-21862-1-git-send-email-plagnioj@jcrosoft.com>
References: <20120901123511.GA19233@game.jcrosoft.org>
 <1346503053-21862-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 14/18] recursive_action: add ACTION_FOLLOWLINKS support
To: barebox@lists.infradead.org

this is need to support symlink in envfs

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/libbb.h        |    2 +-
 lib/recursive_action.c |    7 ++++++-
 scripts/bareboxenv.c   |    2 +-
 3 files changed, 8 insertions(+), 3 deletions(-)

diff --git a/include/libbb.h b/include/libbb.h
index 110e8ec..47b2e08 100644
--- a/include/libbb.h
+++ b/include/libbb.h
@@ -14,7 +14,7 @@ char* last_char_is(const char *s, int c);
 
 enum {
 	ACTION_RECURSE     = (1 << 0),
-	/* ACTION_FOLLOWLINKS = (1 << 1), - unused */
+	ACTION_FOLLOWLINKS    = (1 << 1),
 	ACTION_DEPTHFIRST  = (1 << 2),
 	/*ACTION_REVERSE   = (1 << 3), - unused */
 };
diff --git a/lib/recursive_action.c b/lib/recursive_action.c
index 1ef758d..5bc2595 100644
--- a/lib/recursive_action.c
+++ b/lib/recursive_action.c
@@ -54,14 +54,19 @@ int recursive_action(const char *fileName,
 		const unsigned depth)
 {
 	struct stat statbuf;
+	unsigned follow;
 	int status;
 	DIR *dir;
 	struct dirent *next;
 
 	if (!fileAction) fileAction = true_action;
 	if (!dirAction) dirAction = true_action;
-	status = stat(fileName, &statbuf);
 
+	follow = ACTION_FOLLOWLINKS;
+	if (depth == 0)
+		follow = ACTION_FOLLOWLINKS;
+	follow &= flags;
+	status = (follow ? stat : lstat)(fileName, &statbuf);
 	if (status < 0) {
 #ifdef DEBUG_RECURS_ACTION
 		bb_error_msg("status=%d followLinks=%d TRUE=%d",
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index 866e345..f7f5351 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -73,7 +73,7 @@ char* last_char_is(const char *s, int c)
 
 enum {
 	ACTION_RECURSE     = (1 << 0),
-	/* ACTION_FOLLOWLINKS = (1 << 1), - unused */
+	ACTION_FOLLOWLINKS = (1 << 1),
 	ACTION_DEPTHFIRST  = (1 << 2),
 	/*ACTION_REVERSE   = (1 << 3), - unused */
 };
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
