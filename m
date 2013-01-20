Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Twwvu-00043Z-Re
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 15:35:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 20 Jan 2013 16:35:12 +0100
Message-Id: <1358696119-18387-4-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] make file_*_action static
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/environment.c  |    4 ++--
 include/environment.h |    4 ----
 2 files changed, 2 insertions(+), 6 deletions(-)

diff --git a/common/environment.c b/common/environment.c
index 9595986..eebccce 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -50,7 +50,7 @@ struct action_data {
 
 char *default_environment_path = "/dev/env0";
 
-int file_size_action(const char *filename, struct stat *statbuf,
+static int file_size_action(const char *filename, struct stat *statbuf,
 			    void *userdata, int depth)
 {
 	struct action_data *data = userdata;
@@ -75,7 +75,7 @@ int file_size_action(const char *filename, struct stat *statbuf,
 	return 1;
 }
 
-int file_save_action(const char *filename, struct stat *statbuf,
+static int file_save_action(const char *filename, struct stat *statbuf,
 			    void *userdata, int depth)
 {
 	struct action_data *data = userdata;
diff --git a/include/environment.h b/include/environment.h
index 120040e..65f254b 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -77,10 +77,6 @@ extern char *default_environment_path;
 
 int export(const char *);
 
-struct stat;
-int file_size_action(const char *, struct stat *, void *, int);
-int file_save_action(const char *, struct stat *, void *, int);
-
 #endif /* __BAREBOX__ */
 
 #define ENV_FLAG_NO_OVERWRITE	(1 << 0)
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
