Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z5UUZ-0000Cl-MN
 for barebox@lists.infradead.org; Thu, 18 Jun 2015 07:44:10 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 18 Jun 2015 09:43:39 +0200
Message-Id: <1434613424-19989-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
References: <1434613424-19989-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] Add globalvar_add_simple_string function
To: Barebox List <barebox@lists.infradead.org>

This adds a globalvar string function to pass a pointer to a string.
With this we can directly access the string to get the variable and
don't have to getenv() the string first.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/globalvar.h | 19 +++++++++++++++++++
 1 file changed, 19 insertions(+)

diff --git a/include/globalvar.h b/include/globalvar.h
index 8b2caf1..6e10956 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -17,6 +17,20 @@ int globalvar_add(const char *name,
 char *globalvar_get_match(const char *match, const char *separator);
 void globalvar_set_match(const char *match, const char *val);
 
+static inline int globalvar_add_simple_string(const char *name,
+		char **value)
+{
+	struct param_d *p;
+
+	p = dev_add_param_string(&global_device, name, NULL, NULL,
+		value, NULL);
+
+	if (IS_ERR(p))
+		return PTR_ERR(p);
+
+	return 0;
+}
+
 static inline int globalvar_add_simple_int(const char *name,
 		int *value, const char *format)
 {
@@ -85,6 +99,11 @@ static inline int globalvar_add_simple(const char *name, const char *value)
 	return 0;
 }
 
+static inline int globalvar_add_simple_string(const char *name, char **value)
+{
+	return 0;
+}
+
 static inline int globalvar_add_simple_int(const char *name,
 		int *value, const char *format)
 {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
