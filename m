Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gX3Cl-0004zw-QB
 for barebox@lists.infradead.org; Wed, 12 Dec 2018 12:01:37 +0000
Received: by mail-lf1-x143.google.com with SMTP id p6so13336610lfc.1
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 04:01:21 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 12 Dec 2018 15:01:03 +0300
Message-Id: <20181212120103.25861-1-antonynpavlov@gmail.com>
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
Subject: [PATCH] globalvar: fix crash if CONFIG_NVVAR is not set
To: barebox@lists.infradead.org

At the moment globalvar code tries to use nv_device
even if nv_device is not registered.

How to reproduce the problem:

    barebox$ make sandbox_defconfig
    ...
    barebox$ sed -i "s/\(CONFIG_NVVAR\)=y/# \1 is not set/" .config
    barebox$ sed -i "s/\(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW\)=y/# \1 is not set\n# CONFIG_DEFAULT_ENVIRONMENT_GENERIC is not set/" .config
    barebox$ make oldconfig
    ...
    barebox$ make
    ...
    barebox$ ./barebox
    Segmentation fault

This patch blocks nv_device use if CONFIG_NVVAR is not set.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/globalvar.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index b9bfce7dac..1bea7425d4 100644
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
@@ -138,6 +141,9 @@ static int nvvar_device_dispatch(const char *name, struct device_d **dev,
 	const char *dot;
 	int dotpos;
 
+	if (!IS_ENABLED(CONFIG_NVVAR))
+		return -ENOSYS;
+
 	*dev = NULL;
 
 	if (strncmp(name, "dev.", 4))
@@ -447,6 +453,9 @@ static void globalvar_nv_sync(const char *name)
 {
 	const char *val;
 
+	if (!IS_ENABLED(CONFIG_NVVAR))
+		return;
+
 	val = dev_get_param(&nv_device, name);
 	if (val)
 		dev_set_param(&global_device, name, val);
-- 
2.20.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
