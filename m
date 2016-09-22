Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmz6j-00013t-Rb
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 08:11:50 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 10:11:09 +0200
Message-Id: <1474531872-15000-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] globalvar: Allow to remove multiple globalvars using
 wildcards
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 3fd8221..007e955 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -44,12 +44,14 @@ int globalvar_add(const char *name,
 
 void globalvar_remove(const char *name)
 {
-	struct param_d *param = get_param_by_name(&global_device, name);
+	struct param_d *p, *tmp;
 
-	if (!param)
-		return;
+	list_for_each_entry_safe(p, tmp, &global_device.parameters, list) {
+		if (fnmatch(name, p->name, 0))
+			continue;
 
-	dev_remove_param(param);
+		dev_remove_param(p);
+	}
 }
 
 static int __nv_save(const char *prefix, const char *name, const char *val)
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
