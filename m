Delivery-date: Thu, 23 Jan 2025 17:19:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tazva-003W3Y-0L
	for lore@lore.pengutronix.de;
	Thu, 23 Jan 2025 17:19:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tazva-00027b-2P
	for lore@pengutronix.de; Thu, 23 Jan 2025 17:19:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=v0sdLO7BP77vvoClzPXEOD1v49aWlB9jAWdK0sCTckA=; b=M6MKeIji4d/Hh8WiNfewanNp6f
	lvQZC6qI3HUbx98AXwHjjlsVhbrRHoqbQ0tlQYjqza2WGUjxo8u3yf0EHttWWy/8+gilwMF0TCWi7
	AbFHxvGgSwVAXXHpnobdbnEpW8k2U3tFfSD6Q1SICHBWqjopSlb+KUl5cTmfZlc2iVKC6e+QUOgKI
	uO0IL/cvWTOa3TmNWi+szMOV/9/r72FpxQo3B7xL9OmgDkQvdfjk0N7koygLqHu0vUqJTM4BbOSz3
	YghZsm/ptSrZP/eGDjj1tAzQqc4uiYLpfy7wFC3UaCRi3ITFcL0I2rGo/iOl68uIOINC7g6ILA5sd
	qoy9ktaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tazuy-0000000CoFY-2UXA;
	Thu, 23 Jan 2025 16:18:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tazuw-0000000CoF7-0uDo
	for barebox@lists.infradead.org;
	Thu, 23 Jan 2025 16:18:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tazus-0001wQ-Nc; Thu, 23 Jan 2025 17:18:50 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tazus-001URQ-1i;
	Thu, 23 Jan 2025 17:18:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tazus-0087Gi-1Q;
	Thu, 23 Jan 2025 17:18:50 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Jan 2025 17:18:49 +0100
Message-Id: <20250123161849.1933987-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250123_081854_257015_7884081E 
X-CRM114-Status: GOOD (  16.51  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] environment: autoprobe environment only when CONFIG_INSECURE=y
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

As things are, secure booting systems are expected to disable
CONFIG_ENV_HANDLING to avoid their behavior changing due to a barebox
environment loaded at runtime.

Still, some users may want to keep CONFIG_ENV_HANDLING enabled, but
activated only selectively. For those users, barebox autoprobing block
devices for a GPT partition with the matching UUID is undesirable.

Therefore, allow disabling this autoprobe behavior via a globalvar.
To balance convenience against security, the default for the globalvar
will depend on whether the CONFIG_INSECURE option is set.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
I intentionally went with a generic CONFIG_INSECURE name as I intend
to extend it in future, e.g., CONFIG_INSECURE would drop from a
misbehaving menu script to shell instead of looping indefinitely.

Additionally, I'll add a CONFIG_HAS_INSECURE_DEFAULT option that will
be select by "dual-use" options that can be used safely if care
is taken (e.g. fastboot OEM exec commands, if fastboot is only enabled
after JSON web token verification), but that's not master material.
---
 common/Kconfig       | 11 +++++++++++
 common/environment.c | 15 ++++++++++++++-
 2 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/common/Kconfig b/common/Kconfig
index 2d55903c365b..b5fba72390d8 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -149,6 +149,17 @@ config LOCALVERSION_AUTO
 
 	  which is done within the script "scripts/setlocalversion".)
 
+config INSECURE
+	bool "enable convenient defaults that are unsuitable for secure-booting systems"
+	default y
+	help
+	  Say n here when barebox is part of a secure boot chain and you
+	  want to disable defaults that may compromise the boot chain.
+
+	  This option is a moving target. Currently it:
+
+	    - changes the default of global.env.autoprobe to 1
+
 config BANNER
 	bool "display banner"
 	default y
diff --git a/common/environment.c b/common/environment.c
index dbf4c2f52365..37adb5d67870 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -29,6 +29,7 @@
 #include <block.h>
 #include <efi/partition.h>
 #include <bootsource.h>
+#include <magicvar.h>
 #else
 #define EXPORT_SYMBOL(x)
 #endif
@@ -51,6 +52,7 @@ struct action_data {
 
 #define TMPDIR "/.defaultenv"
 
+static int global_env_autoprobe = IS_ENABLED(CONFIG_INSECURE);
 static char *default_environment_path;
 
 void default_environment_path_set(const char *path)
@@ -80,7 +82,7 @@ static struct cdev *default_environment_path_search(void)
 	struct cdev *env_cdev = NULL;
 	struct block_device *blk;
 
-	if (!IS_ENABLED(CONFIG_BLOCK))
+	if (!IS_ENABLED(CONFIG_BLOCK) || !global_env_autoprobe)
 		return NULL;
 
 	boot_node = bootsource_of_node_get(NULL);
@@ -526,3 +528,14 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 
 	return ret;
 }
+
+#ifdef __BAREBOX__
+static int register_env_vars(void)
+{
+	globalvar_add_simple_bool("env.autoprobe", &global_env_autoprobe);
+	return 0;
+}
+postcore_initcall(register_env_vars);
+BAREBOX_MAGICVAR(global.env.autoprobe,
+                 "Automatically probe known block devices for environment");
+#endif
-- 
2.39.5



