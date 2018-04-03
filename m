Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1f3Gh0-000259-2A
 for barebox@lists.infradead.org; Tue, 03 Apr 2018 07:49:24 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  3 Apr 2018 09:48:41 +0200
Message-Id: <20180403074851.5411-10-s.hauer@pengutronix.de>
In-Reply-To: <20180403074851.5411-1-s.hauer@pengutronix.de>
References: <20180403074851.5411-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/19] glob: do not unnecessarily opendir() a directory
To: Barebox List <barebox@lists.infradead.org>

opendir() can trigger automounts, so do not use it when the
pattern we examine doesn't have any wildcards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/glob.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/lib/glob.c b/lib/glob.c
index 5a997ca092..32f7afdce8 100644
--- a/lib/glob.c
+++ b/lib/glob.c
@@ -313,7 +313,7 @@ static int prefix_array(const char *dirname, char **array, size_t n,
 static int glob_in_dir(const char *pattern, const char *directory,
 		int flags, int (*errfunc) __P((const char *, int)), glob_t *pglob)
 {
-	__ptr_t stream;
+	__ptr_t stream = NULL;
 
 	struct globlink {
 		struct globlink *next;
@@ -323,7 +323,13 @@ static int glob_in_dir(const char *pattern, const char *directory,
 	size_t nfound = 0;
 	int meta;
 
-	stream = opendir(directory);
+	meta = glob_pattern_p(pattern, !(flags & GLOB_NOESCAPE));
+
+	if (meta)
+		flags |= GLOB_MAGCHAR;
+
+	if (meta)
+		stream = opendir(directory);
 
 	if (stream == NULL) {
 		if ((errfunc != NULL && (*errfunc) (directory, errno)) ||
@@ -331,11 +337,6 @@ static int glob_in_dir(const char *pattern, const char *directory,
 			return GLOB_ABORTED;
 	}
 
-	meta = glob_pattern_p(pattern, !(flags & GLOB_NOESCAPE));
-
-	if (meta)
-		flags |= GLOB_MAGCHAR;
-
 	while (1) {
 		const char *name;
 		size_t len;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
