Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxa8f-0004Y2-JU
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:23:02 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:22:40 +0100
Message-Id: <1329294165-12089-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
References: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/12] fs: simplify get_mtab_entry_by_path
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c |   23 ++++++-----------------
 1 files changed, 6 insertions(+), 17 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 7175e33..121bf6f 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -170,29 +170,18 @@ EXPORT_SYMBOL(normalise_path);
 LIST_HEAD(mtab_list);
 static struct mtab_entry *mtab_root;
 
-static struct mtab_entry *get_mtab_entry_by_path(const char *_path)
+static struct mtab_entry *get_mtab_entry_by_path(const char *path)
 {
 	struct mtab_entry *e = NULL;
-	char *path, *tok;
-
-	if (*_path != '/')
-		return NULL;
-
-	path = strdup(_path);
-
-	tok = strchr(path + 1, '/');
-	if (tok)
-		*tok = 0;
 
 	for_each_mtab_entry(e) {
-		if (!strcmp(path, e->path))
-			goto found;
+		int len = strlen(e->path);
+		if (!strncmp(path, e->path, len) &&
+				(path[len] == '/' || path[len] == 0))
+			return e;
 	}
-	e = mtab_root;
-found:
-	free(path);
 
-	return e;
+	return mtab_root;
 }
 
 static FILE files[MAX_FILES];
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
