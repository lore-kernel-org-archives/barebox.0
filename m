Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1STztJ-0002mp-Gb
 for barebox@lists.infradead.org; Mon, 14 May 2012 18:21:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 May 2012 20:21:00 +0200
Message-Id: <1337019660-12096-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1337019660-12096-1-git-send-email-s.hauer@pengutronix.de>
References: <1337019660-12096-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] glob: Add sorted output support
To: barebox@lists.infradead.org

This allows us for example to execute init scripts in the correct
order.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/Kconfig |    8 +++++++-
 lib/glob.c     |   11 +++++------
 2 files changed, 12 insertions(+), 7 deletions(-)

diff --git a/common/Kconfig b/common/Kconfig
index 81e3acb..9f0e0f8 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -310,7 +310,13 @@ config GLOB
 	depends on SHELL_HUSH
 	help
 	  If you want to use wildcards like * or ? say y here.
-	
+
+config GLOB_SORT
+	select QSORT
+	bool
+	prompt "glob sort support"
+	depends on GLOB
+
 config PROMPT_HUSH_PS2
 	string
 	depends on SHELL_HUSH
diff --git a/lib/glob.c b/lib/glob.c
index 74d2b12..c4c6067 100644
--- a/lib/glob.c
+++ b/lib/glob.c
@@ -22,6 +22,7 @@ Cambridge, MA 02139, USA.  */
 #include <malloc.h>
 #include <xfuncs.h>
 #include <fnmatch.h>
+#include <qsort.h>
 #define _GNU_SOURCE
 #include <glob.h>
 
@@ -75,12 +76,10 @@ int glob_pattern_p(const char *pattern, int quote)
 
 #ifdef CONFIG_GLOB_SORT
 /* Do a collated comparison of A and B.  */
-static int collated_compare(a, b)
-const __ptr_t a;
-const __ptr_t b;
+static int collated_compare(const void *a, const void *b)
 {
-	const char *const s1 = *(const char *const *)a;
-	const char *const s2 = *(const char *const *)b;
+	const char *s1 = a;
+	const char *s2 = b;
 
 	if (s1 == s2)
 		return 0;
@@ -266,7 +265,7 @@ int glob(const char *pattern, int flags,
 		/* Sort the vector.  */
 		qsort((__ptr_t) & pglob->gl_pathv[oldcount],
 		      pglob->gl_pathc - oldcount,
-		      sizeof(char *), (__compar_fn_t) collated_compare);
+		      sizeof(char *), collated_compare);
 #endif
 	status = 0;
 out:
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
