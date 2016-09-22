Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmz5j-0000oo-7M
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 08:10:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 Sep 2016 10:10:24 +0200
Message-Id: <1474531824-23375-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] nv: Fix variable removal in nvvar_save()
To: Barebox List <barebox@lists.infradead.org>

When nv variables are removed during runtime then they are
present again when saved with nvvar_save(). This is because nvvar_save()
does not delete variables that exist on the saved environment. Delete
/nv on the saved environment before saving the new variables.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index 44e6528..9d67348 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -471,6 +471,7 @@ int nvvar_save(void)
 		defaultenv_load(TMPDIR, 0);
 
 	envfs_load(env, TMPDIR, 0);
+	unlink_recursive(TMPDIR "/nv", NULL);
 
 	list_for_each_entry(param, &nv_device.parameters, list) {
 		ret = __nv_save(TMPDIR "/nv", param->name,
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
