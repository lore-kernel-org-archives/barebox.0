Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj4-0005qp-RB
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:39 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:54:49 +0200
Message-Id: <1287492930-15716-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/42] glob: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/glob.c |   36 ++++++++++++------------------------
 1 files changed, 12 insertions(+), 24 deletions(-)

diff --git a/lib/glob.c b/lib/glob.c
index a5e3d1d..43d2f67 100644
--- a/lib/glob.c
+++ b/lib/glob.c
@@ -100,11 +100,8 @@ const __ptr_t b;
    `glob' returns GLOB_ABEND; if it returns zero, the error is ignored.
    If memory cannot be allocated for PGLOB, GLOB_NOSPACE is returned.
    Otherwise, `glob' returns zero.  */
-int glob(pattern, flags, errfunc, pglob)
-const char *pattern;
-int flags;
-int (*errfunc) __P((const char *, int));
-glob_t *pglob;
+int glob(const char *pattern, int flags,
+		int (*errfunc) __P((const char *, int)), glob_t *pglob)
 {
 	const char *filename;
 	char *dirname = NULL;
@@ -171,7 +168,7 @@ glob_t *pglob;
 		   For each name we found, call glob_in_dir on it and FILENAME,
 		   appending the results to PGLOB.  */
 		for (i = 0; i < dirs.gl_pathc; ++i) {
-			int oldcount;
+			int oldcount1;
 
 #ifdef	SHELL
 			{
@@ -186,7 +183,7 @@ glob_t *pglob;
 			}
 #endif				/* SHELL.  */
 
-			oldcount = pglob->gl_pathc;
+			oldcount1 = pglob->gl_pathc;
 			status = glob_in_dir(filename, dirs.gl_pathv[i],
 					     (flags | GLOB_APPEND) &
 					     ~GLOB_NOCHECK, errfunc, pglob);
@@ -202,8 +199,8 @@ glob_t *pglob;
 
 			/* Stick the directory on the front of each name.  */
 			prefix_array(dirs.gl_pathv[i],
-					 &pglob->gl_pathv[oldcount],
-					 pglob->gl_pathc - oldcount,
+					 &pglob->gl_pathv[oldcount1],
+					 pglob->gl_pathc - oldcount1,
 					 flags & GLOB_MARK);
 		}
 
@@ -286,11 +283,8 @@ out:
    unless DIRNAME is just "/".  Each old element of ARRAY is freed.
    If ADD_SLASH is non-zero, allocate one character more than
    necessary, so that a slash can be appended later.  */
-static int prefix_array(dirname, array, n, add_slash)
-const char *dirname;
-char **array;
-size_t n;
-int add_slash;
+static int prefix_array(const char *dirname, char **array, size_t n,
+		int add_slash)
 {
 	register size_t i;
 	size_t dirlen = strlen(dirname);
@@ -319,12 +313,8 @@ int add_slash;
    and matches are searched for in DIRECTORY.
    The GLOB_NOSORT bit in FLAGS is ignored.  No sorting is ever done.
    The GLOB_APPEND flag is assumed to be set (always appends).  */
-static int glob_in_dir(pattern, directory, flags, errfunc, pglob)
-const char *pattern;
-const char *directory;
-int flags;
-int (*errfunc) __P((const char *, int));
-glob_t *pglob;
+static int glob_in_dir(const char *pattern, const char *directory,
+		int flags, int (*errfunc) __P((const char *, int)), glob_t *pglob)
 {
 	__ptr_t stream;
 
@@ -457,12 +447,10 @@ glob_t *pglob;
 #endif /* CONFIG_FAKE_GLOB */
 
 /* Free storage allocated in PGLOB by a previous `glob' call.  */
-void globfree(pglob)
-register glob_t *pglob;
+void globfree(glob_t *pglob)
 {
 	if (pglob->gl_pathv != NULL) {
-		register int i =
-		    pglob->gl_flags & GLOB_DOOFFS ? pglob->gl_offs : 0;
+		int i = pglob->gl_flags & GLOB_DOOFFS ? pglob->gl_offs : 0;
 		for (; i < pglob->gl_pathc; ++i)
 			if (pglob->gl_pathv[i] != NULL)
 				free((__ptr_t) pglob->gl_pathv[i]);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
