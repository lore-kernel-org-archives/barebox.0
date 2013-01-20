Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twwvf-00041K-2g
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:35:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:35:11 +0100
Message-Id: <1358696119-18387-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/10] move struct action_data to the only file using it
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c  |    7 +++++++
 include/environment.h |    8 --------
 2 files changed, 7 insertions(+), 8 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index e11cd9d..9595986 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -41,6 +41,13 @@
 #define EXPORT_SYMBOL(x)
 #endif
 
+struct action_data {
+	int fd;
+	const char *base;
+	void *writep;
+};
+#define PAD4(x) ((x + 3) & ~3)
+
 char *default_environment_path = "/dev/env0";
 
 int file_size_action(const char *filename, struct stat *statbuf,
diff --git a/include/environment.h b/include/environment.h
index 096c169..120040e 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -87,14 +87,6 @@ int file_save_action(const char *, struct stat *, void *, int);
 int envfs_load(char *filename, char *dirname, unsigned flags);
 int envfs_save(char *filename, char *dirname);
 
-/* This part is used for the host and the target */
-struct action_data {
-	int fd;
-	const char *base;
-	void *writep;
-};
-#define PAD4(x) ((x + 3) & ~3)
-
 #endif	/* _ENVIRONMENT_H_ */
 
 /**
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
