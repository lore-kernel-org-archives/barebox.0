Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 10.mo3.mail-out.ovh.net ([87.98.165.232]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RkmXl-00026z-Pq
 for barebox@lists.infradead.org; Wed, 11 Jan 2012 00:59:58 +0000
Received: from mail412.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id EDBE81000A6A
 for <barebox@lists.infradead.org>; Wed, 11 Jan 2012 02:01:15 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 11 Jan 2012 01:53:10 +0100
Message-Id: <1326243190-13714-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 1/1] environment: export_/getenv_ull as inline ifndef
 CONFIG_ENVIRONMENT_VARIABLES
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/environment.h |   10 +++++++---
 1 files changed, 7 insertions(+), 3 deletions(-)

diff --git a/include/environment.h b/include/environment.h
index 6d38755..7ece7c9 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -47,6 +47,8 @@ char *var_name(struct variable_d *);
 #ifdef CONFIG_ENVIRONMENT_VARIABLES
 const char *getenv(const char *);
 int setenv(const char *, const char *);
+void export_env_ull(const char *name, unsigned long long val);
+unsigned long long getenv_ull(const char *name);
 #else
 static inline char *getenv(const char *var)
 {
@@ -57,11 +59,13 @@ static inline int setenv(const char *var, const char *val)
 {
 	return 0;
 }
+static inline void export_env_ull(const char *name, unsigned long long val) {}
+static inline unsigned long long getenv_ull(const char *name)
+{
+	return 0;
+}
 #endif
 
-void export_env_ull(const char *name, unsigned long long val);
-unsigned long long getenv_ull(const char *name);
-
 int env_pop_context(void);
 int env_push_context(void);
 
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
