Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQXsK-0006zL-Bl
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 10:40:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 12:39:19 +0200
Message-Id: <1469183959-9002-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1469183959-9002-1-git-send-email-s.hauer@pengutronix.de>
References: <1469183959-9002-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 6/6] nv: Allow wildcards when removing NV vars
To: Barebox List <barebox@lists.infradead.org>

With this patch 'nv -r' can also take "*" and "?" wildcards for nv
variables. This makes it easier to remove multiple nv variables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index a2eaaa0..44e6528 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -10,6 +10,7 @@
 #include <libfile.h>
 #include <generated/utsrelease.h>
 #include <envfs.h>
+#include <fnmatch.h>
 
 static int nv_dirty;
 
@@ -293,22 +294,23 @@ int nvvar_add(const char *name, const char *value)
 
 int nvvar_remove(const char *name)
 {
-	struct param_d *p;
+	struct param_d *p, *tmp;
 	char *fname;
 
 	if (!IS_ENABLED(CONFIG_NVVAR))
 		return -ENOSYS;
 
-	p = get_param_by_name(&nv_device, name);
-	if (!p)
-		return -ENOENT;
+	list_for_each_entry_safe(p, tmp, &nv_device.parameters, list) {
+		if (fnmatch(name, p->name, 0))
+			continue;
 
-	fname = basprintf("/env/nv/%s", p->name);
+		fname = basprintf("/env/nv/%s", p->name);
 
-	dev_remove_param(p);
+		dev_remove_param(p);
 
-	unlink(fname);
-	free(fname);
+		unlink(fname);
+		free(fname);
+	}
 
 	return 0;
 }
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
