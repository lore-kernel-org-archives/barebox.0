Delivery-date: Mon, 24 Nov 2025 19:00:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNard-004Svr-0J
	for lore@lore.pengutronix.de;
	Mon, 24 Nov 2025 19:00:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vNarc-0002DE-E8
	for lore@pengutronix.de; Mon, 24 Nov 2025 19:00:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=KuVTD1Mbu3XD4TYDxnMl9+4q00oo19ADrwd64xByOk4=; b=pokd05HJOZTZwu6jHU/Wh8rQ75
	cgjcV8DS7mESqCSVgDjTfvorpO24TWRqHgmNveA0A81u/YPkJtDzrQzNI9RpYeyXH32JO28fyKbzO
	HreIowQ0X1dg7OjYIc6Ygd5XMHXtCb21t7i+yP4FBXkPeTPtNm9Qc+zePmu9McYUIbw0y/XexTvRk
	N7+B0BNY8zpgffzll2WPlbVvIYfQ1jpIbd+OK53beVMxJLbsjqvhGB2IH7wMrNDdI2svuSyKdC3Tn
	y4fEEs6CudDybLN7B4jvHFixcY+QsVx113mWCs2qS1PUsQ9TbGDPl+GGRAn3hjbcbgGW2bi+LBokk
	R00tfNew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNaqw-0000000C8ov-21eC;
	Mon, 24 Nov 2025 17:59:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vNaqs-0000000C8nc-2v6F
	for barebox@lists.infradead.org;
	Mon, 24 Nov 2025 17:59:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNaqq-00020w-I6; Mon, 24 Nov 2025 18:59:48 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNaqq-002Dwe-1B;
	Mon, 24 Nov 2025 18:59:48 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vNaqq-00000007EuD-18y4;
	Mon, 24 Nov 2025 18:59:48 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Jan=20L=C3=BCbbe?= <j.luebbe@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 24 Nov 2025 18:59:42 +0100
Message-ID: <20251124175947.1725563-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251124175947.1725563-1-a.fatoum@pengutronix.de>
References: <20251124175947.1725563-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251124_095950_736486_E01CE446 
X-CRM114-Status: GOOD (  14.63  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] defaultenv: add base and external defaultenv in pure_initcall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently depend on the order of the calls to defaultenv_append() to
decide which overlays to apply first.

To ensure the base environment is always loaded first, all of
defaultenv_append(), defaultenv_append_runtime_directory() and
defaultenv_load() call defaultenv_add_base() first.

Simplify this by adding base and external (i.e. from the BSP) defaultenv
in the earliest initcall.

This has a welcome side effect: Previously, fw_cfg env was applied
before an external defaultenv, but now it's applied afterwards and thus
can override it.

Reported-by: Jan Lübbe <j.luebbe@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 defaultenv/defaultenv.c | 78 +++++++++++++++--------------------------
 1 file changed, 28 insertions(+), 50 deletions(-)

diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
index 8407a2457630..6891d95e301e 100644
--- a/defaultenv/defaultenv.c
+++ b/defaultenv/defaultenv.c
@@ -33,48 +33,6 @@ struct defaultenv {
 	size_t size;
 };
 
-static void defaultenv_add_base(void)
-{
-	static int base_added;
-
-	if (base_added)
-		return;
-
-	base_added = 1;
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW))
-		defaultenv_append_directory(defaultenv_2_base);
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU))
-		defaultenv_append_directory(defaultenv_2_menu);
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU))
-		defaultenv_append_directory(defaultenv_2_dfu);
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE))
-		defaultenv_append_directory(defaultenv_2_reboot_mode);
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_SECURITY_POLICY))
-		defaultenv_append_directory(defaultenv_2_security_policy);
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG))
-		defaultenv_append_directory(defaultenv_2_ikconfig);
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_1);
-}
-
-static void defaultenv_add_external(void)
-{
-	static int external_added;
-
-	if (external_added)
-		return;
-
-	external_added = 1;
-
-	/*
-	 * The traditional or external environment given with
-	 * CONFIG_DEFAULT_ENVIRONMENT_PATH.
-	 */
-	defaultenv_append((void *)default_environment,
-			default_environment_size, "defaultenv");
-}
-
 /*
  * defaultenv_append - append a envfs buffer to the default environment
  * @buf:	The buffer containing the binary environment. If it is
@@ -88,8 +46,6 @@ void defaultenv_append(void *buf, unsigned int size, const char *name)
 {
 	struct defaultenv *df;
 
-	defaultenv_add_base();
-
 	df = xzalloc(sizeof(*df));
 	df->buf = buf;
 	df->size = size;
@@ -106,8 +62,6 @@ void defaultenv_append_runtime_directory(const char *srcdir)
 	if (stat(srcdir, &s) || !S_ISDIR(s.st_mode))
 		return;
 
-	defaultenv_add_base();
-
 	df = xzalloc(sizeof(*df));
 	df->srcdir = srcdir;
 	df->name = srcdir;
@@ -179,10 +133,6 @@ int defaultenv_load(const char *dir, unsigned flags)
 	struct defaultenv *df;
 	int err = 0;
 
-	defaultenv_add_base();
-
-	defaultenv_add_external();
-
 	list_for_each_entry(df, &defaultenv_list, list) {
 		int ret = defaultenv_load_one(df, dir, flags);
 		if (ret)
@@ -191,3 +141,31 @@ int defaultenv_load(const char *dir, unsigned flags)
 
 	return err;
 }
+
+static int defaultenv_init(void)
+{
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW))
+		defaultenv_append_directory(defaultenv_2_base);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_MENU))
+		defaultenv_append_directory(defaultenv_2_menu);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_DFU))
+		defaultenv_append_directory(defaultenv_2_dfu);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE))
+		defaultenv_append_directory(defaultenv_2_reboot_mode);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_SECURITY_POLICY))
+		defaultenv_append_directory(defaultenv_2_security_policy);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG))
+		defaultenv_append_directory(defaultenv_2_ikconfig);
+	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
+		defaultenv_append_directory(defaultenv_1);
+
+	/*
+	 * The traditional or external environment given with
+	 * CONFIG_DEFAULT_ENVIRONMENT_PATH.
+	 */
+	defaultenv_append((void *)default_environment,
+			default_environment_size, "defaultenv");
+
+	return 0;
+}
+pure_initcall(defaultenv_init);
-- 
2.47.3



