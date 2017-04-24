Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d2gAN-0003gr-Aq
 for barebox@lists.infradead.org; Mon, 24 Apr 2017 15:44:46 +0000
Received: by mail-lf0-x244.google.com with SMTP id i3so17128447lfh.2
 for <barebox@lists.infradead.org>; Mon, 24 Apr 2017 08:44:22 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 24 Apr 2017 18:44:08 +0300
Message-Id: <20170424154408.15860-3-antonynpavlov@gmail.com>
In-Reply-To: <20170424154408.15860-1-antonynpavlov@gmail.com>
References: <20170424154408.15860-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/2] globalvar: don't use nv_device if CONFIG_NVVAR is disabled
To: barebox@lists.infradead.org

At the moment barebox crashes if CONFIG_NVVAR is disabled
because of access to unregistered nv_device in
get_param_by_name(&nv_device, "version").

How to reproduce the crash:

    barebox$ unset ARCH
    barebox$ unset CROSS_COMPILE
    barebox$ make sandbox_defconfig
    barebox$ sed -i "s/CONFIG_ENV_HANDLING=y/# CONFIG_ENV_HANDLING is not set/" .config
    barebox$ make oldconfig
    barebox$ ./barebox
    Segmentation fault

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/globalvar.c | 12 +++++++++++-
 1 file changed, 11 insertions(+), 1 deletion(-)

diff --git a/common/globalvar.c b/common/globalvar.c
index ebc5e830d2..ff52c9d47f 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -99,6 +99,9 @@ void dev_param_init_from_nv(struct device_d *dev, const char *name)
 	const char *val;
 	int ret = 0;
 
+	if (!IS_ENABLED(CONFIG_NVVAR))
+		return;
+
 	if (dev == &nv_device)
 		return;
 	if (dev == &global_device)
@@ -395,6 +398,9 @@ static void globalvar_nv_sync(const char *name)
 {
 	const char *val;
 
+	if (!IS_ENABLED(CONFIG_NVVAR))
+		return;
+
 	val = dev_get_param(&nv_device, name);
 	if (val)
 		dev_set_param(&global_device, name, val);
@@ -542,6 +548,8 @@ int nvvar_save(void)
 	const char *env = default_environment_path_get();
 	int ret;
 #define TMPDIR "/.env.tmp"
+	if (!IS_ENABLED(CONFIG_NVVAR))
+		return -ENOSYS;
 	if (!nv_dirty || !env)
 		return 0;
 
@@ -602,7 +610,9 @@ static int nv_global_param_complete(struct device_d *dev, struct string_list *sl
 int nv_global_complete(struct string_list *sl, char *instr)
 {
 	nv_global_param_complete(&global_device, sl, instr, 0);
-	nv_global_param_complete(&nv_device, sl, instr, 0);
+
+	if (IS_ENABLED(CONFIG_NVVAR))
+		nv_global_param_complete(&nv_device, sl, instr, 0);
 
 	return 0;
 }
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
