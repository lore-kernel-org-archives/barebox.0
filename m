Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kI4kU-000310-SP
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 06:47:31 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 15 Sep 2020 08:47:19 +0200
Message-Id: <20200915064722.17355-1-r.czerwinski@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] globalvar: add globalvar_set function
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Instead of overwriting the whole hierarchy beneath a globalvar, the
globalvar_set function only sets the specific globalvar.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
v2:
- use the name directly to set the variable
- rename to globalvar_set

 common/globalvar.c  | 5 +++++
 include/globalvar.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index 98a028a68a..1219ceaeb3 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -399,6 +399,11 @@ void globalvar_set_match(const char *match, const char *val)
 	}
 }
 
+void globalvar_set(const char *name, const char *val)
+{
+	dev_set_param(&global_device, name, val);
+}
+
 static int globalvar_simple_set(struct device_d *dev, struct param_d *p, const char *val)
 {
 	struct device_d *rdev;
diff --git a/include/globalvar.h b/include/globalvar.h
index fc85e93e14..956dda074a 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -15,6 +15,7 @@ int globalvar_add_simple(const char *name, const char *value);
 void globalvar_remove(const char *name);
 char *globalvar_get_match(const char *match, const char *separator);
 void globalvar_set_match(const char *match, const char *val);
+void globalvar_set(const char *name, const char *val);
 
 int globalvar_add_simple_string(const char *name, char **value);
 int globalvar_add_simple_int(const char *name, int *value,
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
