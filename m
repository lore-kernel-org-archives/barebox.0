Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOodt-00079l-Cu
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:19:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:19:25 +0200
Message-Id: <1335784768-9189-11-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 10/13] glob: activate GLOB_NOCHECK flag
To: barebox@lists.infradead.org

Needed for hush.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/glob.c |   10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/lib/glob.c b/lib/glob.c
index 43d2f67..74d2b12 100644
--- a/lib/glob.c
+++ b/lib/glob.c
@@ -209,7 +209,7 @@ int glob(const char *pattern, int flags,
 
 		if (pglob->gl_pathc == oldcount) {
 			/* No matches.  */
-#ifdef CONFIG_GLOB_NOCHECK
+
 			if (flags & GLOB_NOCHECK) {
 				size_t len = strlen(pattern) + 1;
 				char *patcopy = (char *)xmalloc(len);
@@ -232,9 +232,7 @@ int glob(const char *pattern, int flags,
 				pglob->gl_pathv[pglob->gl_pathc++] = patcopy;
 				pglob->gl_pathv[pglob->gl_pathc] = NULL;
 				pglob->gl_flags = flags;
-			} else
-#endif
-			{
+			} else {
 				status = GLOB_NOMATCH;
 				goto out;
 			}
@@ -367,7 +365,7 @@ static int glob_in_dir(const char *pattern, const char *directory,
 				break;
 		}
 	}
-#ifdef CONFIG_GLOB_NOCHECK
+
 	if (nfound == 0 && (flags & GLOB_NOCHECK)) {
 		size_t len = strlen(pattern);
 		nfound = 1;
@@ -378,7 +376,7 @@ static int glob_in_dir(const char *pattern, const char *directory,
 		memcpy(names->name, pattern, len);
 		names->name[len] = '\0';
 	}
-#endif
+
 	pglob->gl_pathv
 	    = (char **)xrealloc(pglob->gl_pathv,
 			       (pglob->gl_pathc +
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
