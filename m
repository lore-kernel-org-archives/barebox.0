Delivery-date: Fri, 28 Nov 2025 18:21:47 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2AF-005rDC-19
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 18:21:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vP2AE-0001BO-QF
	for lore@pengutronix.de; Fri, 28 Nov 2025 18:21:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qmfhiB3gvaTxXyUZbTXRxzjEEhG0fS/Rzz4CAsMPC5w=; b=yiimJ117OIG6DzE9K+EUblliIl
	2GNw8bjpE34SG856k0XGNNjfyET3gcrPPYZV+AMQoGpN4mY1yVgwu3kATveAGj//e8t8CE/yoSXfc
	vQV8ooofBeyp2TUccIZ6zqe6iS5lu0AtVqM4Sg8PUDSuUHd+QQz+Oe8u+tYiKXI5jYtaWsOJZg/4y
	PNtbxF8a0RZIPJgmZJOt/b17NtmJNPczrRTIVMQepC95woO6+bRZTCCsHhOqHc2vSLOOGektaDNpU
	3/Eof8swmYKy4OzHNPdFEQYvUDlp5QNK0FemP6BlUdC0nokRD6kZBlo1wSjedD7oSffM03XQ13sUk
	bT0UAQWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP29p-00000000ihn-0oTX;
	Fri, 28 Nov 2025 17:21:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vP29m-00000000igl-2g5a
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 17:21:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP29l-0000zg-5p; Fri, 28 Nov 2025 18:21:17 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP29k-002zV2-3D;
	Fri, 28 Nov 2025 18:21:17 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vP29k-000000009GA-3mer;
	Fri, 28 Nov 2025 18:21:16 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 28 Nov 2025 18:21:14 +0100
Message-ID: <20251128172116.35544-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_092118_701487_4E596694 
X-CRM114-Status: GOOD (  10.82  )
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
Subject: [PATCH] environment: add new global.env.noload parameter
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It can be useful for board code to deny loading an environment without
disabling it altogether, e.g. to disable load of the environment when
entering a recovery mode. Add a global variable that allows for just
that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/environment.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/common/environment.c b/common/environment.c
index d7f5f51cfc6d..d49f255ef007 100644
--- a/common/environment.c
+++ b/common/environment.c
@@ -54,6 +54,7 @@ struct action_data {
 #define TMPDIR "/.defaultenv"
 
 static int global_env_autoprobe = IS_ENABLED(CONFIG_INSECURE);
+static int global_env_noload = false;
 static char *default_environment_path;
 
 void default_environment_path_set(const char *path)
@@ -455,7 +456,7 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 	size_t size, rsize;
 
 #ifdef __BAREBOX__
-	if (!IS_ALLOWED(SCONFIG_ENVIRONMENT_LOAD))
+	if (!IS_ALLOWED(SCONFIG_ENVIRONMENT_LOAD) || global_env_noload)
 		return -EPERM;
 #endif
 
@@ -539,12 +540,17 @@ int envfs_load(const char *filename, const char *dir, unsigned flags)
 }
 
 #ifdef __BAREBOX__
+
 static int register_env_vars(void)
 {
 	globalvar_add_simple_bool("env.autoprobe", &global_env_autoprobe);
+	globalvar_add_simple_bool("env.noload", &global_env_noload);
+
 	return 0;
 }
 postcore_initcall(register_env_vars);
 BAREBOX_MAGICVAR(global.env.autoprobe,
                  "Automatically probe known block devices for environment");
+BAREBOX_MAGICVAR(global.env.noload,
+                 "Suppress loading of externally persisted environment");
 #endif
-- 
2.47.3



