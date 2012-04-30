Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SOodi-00077L-Pn
 for barebox@lists.infradead.org; Mon, 30 Apr 2012 11:19:37 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 30 Apr 2012 13:19:23 +0200
Message-Id: <1335784768-9189-9-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/13] hush: simplify globhack
To: barebox@lists.infradead.org

hush used to escape '*' '[' '?' during parsing because the quotes
got removed in the first parsing loop.

globhack is used to remove these escapes again for glob. Since we now
keep the quotes until the end of parsing and we no longer escape glob
wildcards, we do no longer have to remove any quotes. With this globhack
can be much simpler.

While at it, change the prototype to match the one from glob() and rename
the function to fake_glob, because that's what it is: it just copies the
input string into the output struct without actually globbing.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/hush.c |   39 ++++++++-------------------------------
 1 file changed, 8 insertions(+), 31 deletions(-)

diff --git a/common/hush.c b/common/hush.c
index e32e884..ea6e53b 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -911,26 +911,11 @@ static int free_pipe_list(struct pipe *head, int indent)
 	return rcode;
 }
 
-/* The API for glob is arguably broken.  This routine pushes a non-matching
- * string into the output structure, removing non-backslashed backslashes.
- * If someone can prove me wrong, by performing this function within the
- * original glob(3) api, feel free to rewrite this routine into oblivion.
- * Return code (0 vs. GLOB_NOSPACE) matches glob(3).
- * XXX broken if the last character is '\\', check that before calling.
- */
-static int globhack(const char *src, int flags, glob_t *pglob)
+static int fake_glob(const char *src, int flags,
+		int (*errfunc) (const char *epath, int eerrno),
+		glob_t *pglob)
 {
-	int cnt = 0, pathc;
-	const char *s;
-	char *dest;
-
-	for (cnt = 1, s = src; s && *s; s++) {
-		if (*s == '\\' && strchr("*[?", *(s + 1)))
-			s++;
-		cnt++;
-	}
-
-	dest = xmalloc(cnt);
+	int pathc;
 
 	if (!(flags & GLOB_APPEND)) {
 		globfree(pglob);
@@ -940,17 +925,9 @@ static int globhack(const char *src, int flags, glob_t *pglob)
 	}
 	pathc = ++pglob->gl_pathc;
 	pglob->gl_pathv = xrealloc(pglob->gl_pathv, (pathc + 1) * sizeof(*pglob->gl_pathv));
-	pglob->gl_pathv[pathc - 1] = dest;
+	pglob->gl_pathv[pathc - 1] = xstrdup(src);
 	pglob->gl_pathv[pathc] = NULL;
 
-	for (s = src; s && *s; s++, dest++) {
-		if (*s == '\\' && strchr("*[?", *(s + 1)))
-			s++;
-		*dest = *s;
-	}
-
-	*dest = '\0';
-
 	return 0;
 }
 
@@ -977,7 +954,7 @@ static int xglob(o_string *dest, int flags, glob_t *pglob)
 	if (dest->length == 0) {
 		if (dest->nonnull) {
 			/* bash man page calls this an "explicit" null */
-			gr = globhack(dest->data, flags, pglob);
+			gr = fake_glob(dest->data, flags, NULL, pglob);
 			debug("globhack returned %d\n",gr);
 		} else {
 			return 0;
@@ -987,11 +964,11 @@ static int xglob(o_string *dest, int flags, glob_t *pglob)
 		debug("glob returned %d\n",gr);
 		if (gr == GLOB_NOMATCH) {
 			/* quote removal, or more accurately, backslash removal */
-			gr = globhack(dest->data, flags, pglob);
+			gr = fake_glob(dest->data, flags, NULL, pglob);
 			debug("globhack returned %d\n",gr);
 		}
 	} else {
-		gr = globhack(dest->data, flags, pglob);
+		gr = fake_glob(dest->data, flags, NULL, pglob);
 		debug("globhack returned %d\n",gr);
 	}
 	if (gr != 0) { /* GLOB_ABORTED ? */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
