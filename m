Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dL2hq-0001yq-B3
 for barebox@lists.infradead.org; Wed, 14 Jun 2017 07:27:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 14 Jun 2017 09:26:37 +0200
Message-Id: <20170614072641.29942-5-s.hauer@pengutronix.de>
In-Reply-To: <20170614072641.29942-1-s.hauer@pengutronix.de>
References: <20170614072641.29942-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/8] Revert "globalvar: don't use nv_device if CONFIG_NVVAR is
 disabled"
To: Barebox List <barebox@lists.infradead.org>

This reverts commit b378e8c9427b45d856d052a6df4a879a2cee670c.
---
 common/globalvar.c | 12 +-----------
 1 file changed, 1 insertion(+), 11 deletions(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index 9bb363f3a5..d33bc64a13 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -99,9 +99,6 @@ void dev_param_init_from_nv(struct device_d *dev, const char *name)
 	const char *val;
 	int ret = 0;
 
-	if (!IS_ENABLED(CONFIG_NVVAR))
-		return;
-
 	if (dev == &nv_device)
 		return;
 	if (dev == &global_device)
@@ -398,9 +395,6 @@ static void globalvar_nv_sync(const char *name)
 {
 	const char *val;
 
-	if (!IS_ENABLED(CONFIG_NVVAR))
-		return;
-
 	val = dev_get_param(&nv_device, name);
 	if (val)
 		dev_set_param(&global_device, name, val);
@@ -534,8 +528,6 @@ int nvvar_save(void)
 	const char *env = default_environment_path_get();
 	int ret;
 #define TMPDIR "/.env.tmp"
-	if (!IS_ENABLED(CONFIG_NVVAR))
-		return -ENOSYS;
 	if (!nv_dirty || !env)
 		return 0;
 
@@ -596,9 +588,7 @@ static int nv_global_param_complete(struct device_d *dev, struct string_list *sl
 int nv_global_complete(struct string_list *sl, char *instr)
 {
 	nv_global_param_complete(&global_device, sl, instr, 0);
-
-	if (IS_ENABLED(CONFIG_NVVAR))
-		nv_global_param_complete(&nv_device, sl, instr, 0);
+	nv_global_param_complete(&nv_device, sl, instr, 0);
 
 	return 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
