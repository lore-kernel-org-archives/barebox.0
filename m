Delivery-date: Mon, 11 Aug 2025 14:29:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulRer-009KdV-0O
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 14:29:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulReZ-0005WB-8u
	for lore@pengutronix.de; Mon, 11 Aug 2025 14:29:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sOU4gHFXlNueUd18SOEb0Kyd9wLEd93VoWZjmK+nPIs=; b=LIkG2CoW1uHOSm2AO+5KV6oIAY
	bQBPoQICmaoHOsRGZArJNNaONucyI4we+V17+3XjkGtCJ+JLmuNRdg9EE9G7UZT4dtCMVKTVR8szD
	SbcfbRMfKD3wSRDJw+i2RR1LwolUfkrm8Hk2sw+BnjHd7dUnWi20Rawm7NOt8zvNiq+wektsbF6xf
	p13WNEEtxbXDGE+zBYG3e3NAHd23DXvg7ibHuGmksLEDZE0XCdE03yJP+CzHIwZ0Le6G8+95FqF0i
	QS60XWydLwKlsuiqqdBbLp16emLNk0RGhRE+AssxTuZAFU0d0fsHP2SGv1RRTPOiBJbHWj4CkhzTZ
	zzZn0rMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRdi-00000007dbg-1TVp;
	Mon, 11 Aug 2025 12:28:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulRde-00000007dVv-2DqU
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 12:28:32 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ulRdb-0004WP-Ri; Mon, 11 Aug 2025 14:28:27 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 11 Aug 2025 14:27:45 +0200
Message-Id: <20250811122824.1667791-6-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250811122824.1667791-1-a.fatoum@barebox.org>
References: <20250811122824.1667791-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250811_052830_568466_46621786 
X-CRM114-Status: GOOD (  13.68  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/44] lib: param: add dev_for_each_param helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of open-coding the linked list iterations, let's define some
macros to wrap them. This will come in handy when we associate the
parameters with the bobject instead of the device as we will only have
to adjust the macro definitions.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/devinfo.c |  2 +-
 commands/varinfo.c |  2 +-
 common/complete.c  |  2 +-
 common/globalvar.c | 16 ++++++++--------
 include/device.h   |  5 +++++
 lib/parameter.c    |  2 +-
 6 files changed, 17 insertions(+), 12 deletions(-)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index 3c791e4464ac..cff4dbb92e31 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -88,7 +88,7 @@ static int do_devinfo(int argc, char *argv[])
 			printf("Parent: %s\n", dev_name(dev->parent));
 
 		first = true;
-		list_for_each_entry(param, &dev->parameters, list) {
+		dev_for_each_param(dev, param) {
 			if (first) {
 				printf("Parameters:\n");
 				first = false;
diff --git a/commands/varinfo.c b/commands/varinfo.c
index 5965c60159ca..eff7bf423cce 100644
--- a/commands/varinfo.c
+++ b/commands/varinfo.c
@@ -56,7 +56,7 @@ static int do_varinfo(int argc, char *argv[])
 	if (!dev)
 		return -ENODEV;
 
-	list_for_each_entry(param, &dev->parameters, list) {
+	dev_for_each_param(dev, param) {
 		if (prefix && !strstarts(param->name, prefix))
 			continue;
 
diff --git a/common/complete.c b/common/complete.c
index 5327944ca93b..a01ce9b47163 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -179,7 +179,7 @@ static int device_param_complete(struct device *dev, const char *devname,
 {
 	struct param_d *param;
 
-	list_for_each_entry(param, &dev->parameters, list) {
+	dev_for_each_param(dev, param) {
 		if (!strstarts_escaped(param->name, instr))
 			continue;
 
diff --git a/common/globalvar.c b/common/globalvar.c
index 1ef98f44bc67..cca1ac9b39f5 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -35,7 +35,7 @@ void globalvar_remove(const char *name)
 {
 	struct param_d *p, *tmp;
 
-	list_for_each_entry_safe(p, tmp, &global_device.parameters, list) {
+	dev_for_each_param_safe(&global_device, p, tmp) {
 		if (fnmatch(name, p->name, 0))
 			continue;
 
@@ -276,7 +276,7 @@ int nvvar_remove(const char *name)
 	if (!IS_ENABLED(CONFIG_NVVAR))
 		return -ENOSYS;
 
-	list_for_each_entry_safe(p, tmp, &nv_device.parameters, list) {
+	dev_for_each_param_safe(&nv_device, p, tmp) {
 		if (fnmatch(name, p->name, 0))
 			continue;
 
@@ -382,7 +382,7 @@ static void device_param_print(struct device *dev)
 {
 	struct param_d *param;
 
-	list_for_each_entry(param, &dev->parameters, list) {
+	dev_for_each_param(dev, param) {
 		const char *p = dev_get_param(dev, param->name);
 		const char *nv = NULL;
 
@@ -420,7 +420,7 @@ char *globalvar_get_match(const char *match, const char *separator)
 	char *val = NULL;
 	struct param_d *param;
 
-	list_for_each_entry(param, &global_device.parameters, list) {
+	dev_for_each_param(&global_device, param) {
 		if (!strncmp(match, param->name, strlen(match))) {
 			const char *p = dev_get_param(&global_device, param->name);
 			if (val) {
@@ -444,7 +444,7 @@ void globalvar_set_match(const char *match, const char *val)
 {
 	struct param_d *param;
 
-	list_for_each_entry(param, &global_device.parameters, list) {
+	dev_for_each_param(&global_device, param) {
 		if (!strncmp(match, param->name, strlen(match)))
 			dev_set_param(&global_device, param->name, val);
 	}
@@ -723,7 +723,7 @@ int nvvar_save(void)
 	envfs_load(env, TMPDIR, 0);
 	unlink_recursive(TMPDIR "/nv", NULL);
 
-	list_for_each_entry(param, &nv_device.parameters, list) {
+	dev_for_each_param(&nv_device, param) {
 		ret = __nv_save(TMPDIR "/nv", param->name,
 				dev_get_param(&nv_device, param->name));
 		if (ret) {
@@ -760,7 +760,7 @@ static int nv_global_param_complete(struct device *dev,
 
 	len = strlen(instr);
 
-	list_for_each_entry(param, &dev->parameters, list) {
+	dev_for_each_param(dev, param) {
 		if (strncmp(instr, param->name, len))
 			continue;
 
@@ -790,7 +790,7 @@ int nv_complete(struct string_list *sl, char *instr)
 		if (dev == &global_device || dev == &nv_device)
 			continue;
 
-		list_for_each_entry(param, &dev->parameters, list) {
+		dev_for_each_param(dev, param) {
 			str = basprintf("dev.%s.%s=", dev_name(dev), param->name);
 			if (strncmp(instr, str, len))
 				free(str);
diff --git a/include/device.h b/include/device.h
index 8b65693d9672..1158ec59b5e8 100644
--- a/include/device.h
+++ b/include/device.h
@@ -162,6 +162,11 @@ extern struct list_head class_list;
 
 #define class_for_each(class) list_for_each_entry((class), &class_list, list)
 
+#define dev_for_each_param(dev, param) \
+	list_for_each_entry((param), &(dev)->parameters, list)
+#define dev_for_each_param_safe(dev, param, tmp) \
+	list_for_each_entry_safe((param), (tmp), &(dev)->parameters, list)
+
 struct device_alias {
 	struct device *dev;
 	struct list_head list;
diff --git a/lib/parameter.c b/lib/parameter.c
index 584876bbc24b..c550de050db0 100644
--- a/lib/parameter.c
+++ b/lib/parameter.c
@@ -1026,7 +1026,7 @@ void dev_remove_parameters(struct device *dev)
 {
 	struct param_d *p, *n;
 
-	list_for_each_entry_safe(p, n, &dev->parameters, list)
+	dev_for_each_param_safe(dev, p, n)
 		param_remove(p);
 }
 
-- 
2.39.5



