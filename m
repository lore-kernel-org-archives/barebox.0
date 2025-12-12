Delivery-date: Fri, 12 Dec 2025 17:22:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5uv-00AjFf-2t
	for lore@lore.pengutronix.de;
	Fri, 12 Dec 2025 17:22:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vU5uv-0003Kb-AH
	for lore@pengutronix.de; Fri, 12 Dec 2025 17:22:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RNClmmQ2f/foAaAPPDnAhjxLgFyl7w2tLAd+VBAd+e0=; b=n7025qzoGc+gsGvEkdAVfBOcch
	pYfPd8evcGopc3tS7fupzuUNP+E+3Lsp/k4y4U6CPzoALubT7zmBE7zDXFXI5rpZyKcKnr5ofNZR0
	4oOKGpwXbZOiklHQmNJfr1eJ3OcGDHWCNa7QkUwTgQjklZmeD7w+GtMh99WuBkFONDTxVcXhERICS
	HJ6UwfI0rWWmyOIWbwWAZr/zPDhz/nuwIzhMUuFiNJrKJrdbb5bz8MZa52A45Ry5XKT+Ez7qxh3VY
	y8/+09t10FxgqzmVObPZbbmG9mk/O+m0BC2AXrZ9F0/8dj/FDmUqLUOzO+WIBRGdqb7kp+FNlUpsC
	m+kD9sMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5uW-00000000pYg-3g7u;
	Fri, 12 Dec 2025 16:22:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vU5uT-00000000pX1-18Ik
	for barebox@lists.infradead.org;
	Fri, 12 Dec 2025 16:22:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5uR-00034s-K9; Fri, 12 Dec 2025 17:22:23 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5uR-005K73-1O;
	Fri, 12 Dec 2025 17:22:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vU5uR-000000089ka-1MhO;
	Fri, 12 Dec 2025 17:22:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Dec 2025 17:22:09 +0100
Message-ID: <20251212162222.1937214-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251212162222.1937214-1-a.fatoum@pengutronix.de>
References: <20251212162222.1937214-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251212_082225_313186_02582928 
X-CRM114-Status: GOOD (  11.85  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 3/3] environment: allow board code to suppress external env loading
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It can be useful for board code to deny loading an environment without
disabling it altogether, e.g. to disable load of the environment when
entering a recovery mode. Add a function for that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v2 -> v3:
  - no change
v1 -> v2:
  - change from globalvar to C function
---
 common/startup.c | 14 ++++++++++++--
 include/envfs.h  |  5 +++++
 2 files changed, 17 insertions(+), 2 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index b6f8a49bb94b..73cf4a495b9c 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -85,6 +85,15 @@ static int mount_root(void)
 fs_initcall(mount_root);
 #endif
 
+static bool may_autoload_external_env = IS_ENABLED(CONFIG_ENV_HANDLING);
+
+#ifdef CONFIG_ENV_HANDLING
+void autoload_external_env(bool endis)
+{
+	may_autoload_external_env = endis;
+}
+#endif
+
 static int load_environment(void)
 {
 	const char *default_environment_path;
@@ -99,10 +108,11 @@ static int load_environment(void)
 				ERR_PTR(ret));
 	}
 
-	if (IS_ENABLED(CONFIG_ENV_HANDLING))
+	if (may_autoload_external_env)
 		envfs_load(default_environment_path, "/env", 0);
 	else if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT))
-		pr_info("external environment support disabled. Using default environment\n");
+		pr_info("external environment support %s. Using default environment\n",
+			IS_ENABLED(CONFIG_ENV_HANDLING) ? "disallowed" : "disabled");
 
 	nvvar_load();
 
diff --git a/include/envfs.h b/include/envfs.h
index e21f2b52368a..0c6b2e681515 100644
--- a/include/envfs.h
+++ b/include/envfs.h
@@ -105,6 +105,7 @@ int envfs_load_from_buf(void *buf, int len, const char *dir, unsigned flags);
 #ifdef CONFIG_ENV_HANDLING
 void default_environment_path_set(const char *path);
 const char *default_environment_path_get(void);
+void autoload_external_env(bool endis);
 #else
 static inline void default_environment_path_set(const char *path)
 {
@@ -114,6 +115,10 @@ static inline const char *default_environment_path_get(void)
 {
 	return NULL;
 }
+
+static inline void autoload_external_env(bool endis)
+{
+}
 #endif
 
 #ifdef CONFIG_OF_BAREBOX_DRIVERS
-- 
2.47.3



