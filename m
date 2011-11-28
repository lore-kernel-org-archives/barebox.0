Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RUwAb-0003qq-1Q
 for barebox@lists.infradead.org; Mon, 28 Nov 2011 08:02:33 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 28 Nov 2011 09:02:10 +0100
Message-Id: <1322467340-10596-5-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
References: <1322467340-10596-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/14] introduce some env helpers
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/env.c          |   22 ++++++++++++++++++++++
 include/environment.h |    3 +++
 2 files changed, 25 insertions(+), 0 deletions(-)

diff --git a/common/env.c b/common/env.c
index 05ed714..e57a520 100644
--- a/common/env.c
+++ b/common/env.c
@@ -251,3 +251,25 @@ int export(const char *varname)
 	return 0;
 }
 EXPORT_SYMBOL(export);
+
+void export_env_ull(const char *name, unsigned long long val)
+{
+	char *valstr = asprintf("%lld", val);
+
+	setenv(name, valstr);
+	export(name);
+
+	kfree(valstr);
+}
+EXPORT_SYMBOL(export_env_ull);
+
+unsigned long long getenv_ull(const char *name)
+{
+	const char *valstr = getenv(name);
+
+	if (!valstr)
+		return 0;
+
+	return simple_strtoull(valstr, NULL, 0);
+}
+EXPORT_SYMBOL(getenv_ull);
diff --git a/include/environment.h b/include/environment.h
index da032e2..6d38755 100644
--- a/include/environment.h
+++ b/include/environment.h
@@ -59,6 +59,9 @@ static inline int setenv(const char *var, const char *val)
 }
 #endif
 
+void export_env_ull(const char *name, unsigned long long val);
+unsigned long long getenv_ull(const char *name);
+
 int env_pop_context(void);
 int env_push_context(void);
 
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
