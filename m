Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VPYio-0005bK-3b
 for barebox@lists.infradead.org; Fri, 27 Sep 2013 14:08:42 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 27 Sep 2013 16:08:19 +0200
Message-Id: <1380290899-23116-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] scripts/bareboxenv: Make locally used functions static
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/bareboxenv.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index 6d6d55b..f372685 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -35,7 +35,7 @@
 
 #define debug(...)
 
-void *xmalloc(size_t size)
+static void *xmalloc(size_t size)
 {
 	void *p = NULL;
 
@@ -47,7 +47,7 @@ void *xmalloc(size_t size)
 	return p;
 }
 
-void *xzalloc(size_t size)
+static void *xzalloc(size_t size)
 {
 	void *p = xmalloc(size);
 	memset(p, 0, size);
@@ -57,7 +57,7 @@ void *xzalloc(size_t size)
 /* Find out if the last character of a string matches the one given.
  * Don't underrun the buffer if the string length is 0.
  */
-char* last_char_is(const char *s, int c)
+static char *last_char_is(const char *s, int c)
 {
 	if (s && *s) {
 		size_t sz = strlen(s) - 1;
@@ -85,7 +85,7 @@ int recursive_action(const char *fileName, unsigned flags,
 /* concatenate path and file name to new allocation buffer,
  * not adding '/' if path name already has '/'
  */
-char *concat_path_file(const char *path, const char *filename)
+static char *concat_path_file(const char *path, const char *filename)
 {
 	char *lc, *str;
 
@@ -107,7 +107,7 @@ char *concat_path_file(const char *path, const char *filename)
  * and skipping "." and ".." directory entries
  */
 
-char *concat_subpath_file(const char *path, const char *f)
+static char *concat_subpath_file(const char *path, const char *f)
 {
 	if (f && DOT_OR_DOTDOT(f))
 		return NULL;
@@ -120,7 +120,7 @@ char *concat_subpath_file(const char *path, const char *f)
 #include "../lib/make_directory.c"
 #include "../common/environment.c"
 
-void usage(char *prgname)
+static void usage(char *prgname)
 {
 	printf( "Usage : %s [OPTION] DIRECTORY FILE\n"
 		"Load a barebox environment sector into a directory or\n"
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
