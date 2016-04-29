Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aw564-0002GD-GN
 for barebox@lists.infradead.org; Fri, 29 Apr 2016 09:52:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 29 Apr 2016 11:52:00 +0200
Message-Id: <1461923525-6356-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1461923525-6356-1-git-send-email-s.hauer@pengutronix.de>
References: <1461923525-6356-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] globalvar: Allow to remove globalvars
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c  | 10 ++++++++++
 include/globalvar.h |  1 +
 2 files changed, 11 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index 9a793ac..05c3e79 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -33,6 +33,16 @@ int globalvar_add(const char *name,
 	return 0;
 }
 
+void globalvar_remove(const char *name)
+{
+	struct param_d *param = get_param_by_name(&global_device, name);
+
+	if (!param)
+		return;
+
+	dev_remove_param(param);
+}
+
 static int nv_save(const char *name, const char *val)
 {
 	int fd, ret;
diff --git a/include/globalvar.h b/include/globalvar.h
index e77209b..d0c79c0 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -14,6 +14,7 @@ int globalvar_add(const char *name,
 		int (*set)(struct device_d *dev, struct param_d *p, const char *val),
 		const char *(*get)(struct device_d *, struct param_d *p),
 		unsigned long flags);
+void globalvar_remove(const char *name);
 char *globalvar_get_match(const char *match, const char *separator);
 void globalvar_set_match(const char *match, const char *val);
 
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
