Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T9EiH-0003Ag-3D
 for barebox@lists.infradead.org; Wed, 05 Sep 2012 12:28:09 +0000
Received: from mail91.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 7F097FF85AA
 for <barebox@lists.infradead.org>; Wed,  5 Sep 2012 14:35:43 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  5 Sep 2012 14:28:21 +0200
Message-Id: <1346848107-4664-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20120905122556.GF32603@game.jcrosoft.org>
References: <20120905122556.GF32603@game.jcrosoft.org>
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
Subject: [PATCH 1/7] globalbar: add inline when not enabled
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 include/globalvar.h |   20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/include/globalvar.h b/include/globalvar.h
index 7cc3976..a127a05 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -1,6 +1,7 @@
 #ifndef __GLOBALVAR_H
 #define __GLOBALVAR_H
 
+#ifdef CONFIG_GLOBALVAR
 int globalvar_add_simple(const char *name);
 
 int globalvar_add(const char *name,
@@ -8,5 +9,24 @@ int globalvar_add(const char *name,
 		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags);
 char *globalvar_get_match(const char *match, const char *seperator);
+#else
+static inline int globalvar_add_simple(const char *name)
+{
+	return 0;
+}
+
+static inline int globalvar_add(const char *name,
+		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
+		const char *(*get)(struct device_d *, struct param_d *p),
+		unsigned long flags)
+{
+	return 0;
+}
+
+static inline char *globalvar_get_match(const char *match, const char *seperator)
+{
+	return NULL;
+}
+#endif
 
 #endif /* __GLOBALVAR_H */
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
