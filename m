Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twwvv-00043c-1o
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:35:46 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:35:14 +0100
Message-Id: <1358696119-18387-6-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
References: <1358696119-18387-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 05/10] scripts: remove now unnecessary include
To: barebox@lists.infradead.org

include/environment.h is no longer necessary to build scripts/bareboxenv,
so remove its inclusion.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/environment.h |    4 ----
 scripts/bareboxenv.c  |    1 -
 2 files changed, 5 deletions(-)

diff --git a/include/environment.h b/include/environment.h
index 6500ebb..7bdd213 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -20,8 +20,6 @@
 #ifndef _ENVIRONMENT_H_
 #define _ENVIRONMENT_H_
 
-
-#ifdef __BAREBOX__
 /**
  * Managment of a environment variable
  */
@@ -74,8 +72,6 @@ int env_push_context(void);
 
 int export(const char *);
 
-#endif /* __BAREBOX__ */
-
 #endif	/* _ENVIRONMENT_H_ */
 
 /**
diff --git a/scripts/bareboxenv.c b/scripts/bareboxenv.c
index 707d63d..9284c0b 100644
--- a/scripts/bareboxenv.c
+++ b/scripts/bareboxenv.c
@@ -118,7 +118,6 @@ char *concat_subpath_file(const char *path, const char *f)
 #include "../include/envfs.h"
 #include "../crypto/crc32.c"
 #include "../lib/make_directory.c"
-#include "../include/environment.h"
 #include "../common/environment.c"
 
 void usage(char *prgname)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
