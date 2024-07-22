Delivery-date: Mon, 22 Jul 2024 19:07:13 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwVF-001sJP-0e
	for lore@lore.pengutronix.de;
	Mon, 22 Jul 2024 19:07:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sVwVE-0002z4-Hq
	for lore@pengutronix.de; Mon, 22 Jul 2024 19:07:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NcOtuITatkNbbltFq8rFT50FO4jR77fQKGLq6pMOHbI=; b=bNrvpuw535ig4amVf8eIBqhsu3
	SQGYUOACzGEdoOZ/NQghsksu4K2kWIN6m6MgzYBYPsqCCG+nCrql40HxFzDXbqB5RphmuRHpJRvrV
	xPpUsc4BNfgBEdbjZT4wgS/tPObw/1kOHSlY6LKLsNY0G+/1jRSkRnePr4CGbF+hqi0+tHk8nrJeE
	aclZDlPbl4/+jOGvXdfiP4H+K58OusYHMhQ/JGe68UAa0gTb8E0F/GeADsOC4xDHVHrGyWhhJHUdq
	5wXGbvxg/mqsueRXH8oemBZzuyXRHq3Go4tjqO59v01m0sSOvSMYwgITS/5EQW9NIn1pzIye6tsUL
	1TiTFT1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwUp-0000000A9K9-0USI;
	Mon, 22 Jul 2024 17:06:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sVwUm-0000000A9IP-1SYf
	for barebox@lists.infradead.org;
	Mon, 22 Jul 2024 17:06:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUk-0002jj-UM; Mon, 22 Jul 2024 19:06:42 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUk-001Qkv-HC; Mon, 22 Jul 2024 19:06:42 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sVwUk-00GER7-1P;
	Mon, 22 Jul 2024 19:06:42 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 22 Jul 2024 19:06:41 +0200
Message-Id: <20240722170641.3868698-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240722_100644_411825_73C9B6E5 
X-CRM114-Status: GOOD (  11.30  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] resource: add CONFIG_DEBUG_RESOURCES option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Whether a resource conflict is indeed a problem depends on how the user
handles it. Most users will propagate an -EBUSY error, but some will
gracefully handle it and move on.

We thus can't just warn unconditionally about conflicts in __request_region.
It's still useful to enable warnings there though while debugging, so
let's add a Kconfig option that enables these debugging prints.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/Kconfig.debug |  8 ++++++++
 common/resource.c    | 17 ++++++++++-------
 2 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/common/Kconfig.debug b/common/Kconfig.debug
index 5d245de23c07..989f3ccc2a20 100644
--- a/common/Kconfig.debug
+++ b/common/Kconfig.debug
@@ -99,6 +99,14 @@ config DEBUG_LIST
 
 	  If unsure, say N.
 
+config DEBUG_RESOURCES
+	bool "Debug resource reservation"
+	help
+	  Enable this to bump verbosity of the resource reservation code
+	  from debug log level to info.
+
+	  If unsure, say N.
+
 config PBL_BREAK
 	bool "Execute software break on pbl start"
 	depends on ARM && (!CPU_32v4T && !ARCH_TEGRA)
diff --git a/common/resource.c b/common/resource.c
index 76f19de4942f..436a0488ddf0 100644
--- a/common/resource.c
+++ b/common/resource.c
@@ -13,6 +13,12 @@
 #include <linux/resource_ext.h>
 #include <asm/io.h>
 
+#ifdef CONFIG_DEBUG_RESOURCES
+#define res_dbg(args...)	pr_info(args)
+#else
+#define res_dbg(args...)	pr_debug(args)
+#endif
+
 static int init_resource(struct resource *res, const char *name)
 {
 	INIT_LIST_HEAD(&res->children);
@@ -35,8 +41,7 @@ struct resource *__request_region(struct resource *parent,
 	struct resource *r, *new;
 
 	if (end < start) {
-		debug("%s: request region 0x%08llx:0x%08llx: end < start\n",
-				__func__,
+		res_dbg("request region(0x%08llx:0x%08llx): end < start\n",
 				(unsigned long long)start,
 				(unsigned long long)end);
 		return ERR_PTR(-EINVAL);
@@ -44,8 +49,7 @@ struct resource *__request_region(struct resource *parent,
 
 	/* outside parent resource? */
 	if (start < parent->start || end > parent->end) {
-		debug("%s: 0x%08llx:0x%08llx outside parent resource 0x%08llx:0x%08llx\n",
-				__func__,
+		res_dbg("request region(0x%08llx:0x%08llx): outside parent resource 0x%08llx:0x%08llx\n",
 				(unsigned long long)start,
 				(unsigned long long)end,
 				(unsigned long long)parent->start,
@@ -62,8 +66,7 @@ struct resource *__request_region(struct resource *parent,
 			goto ok;
 		if (start > r->end)
 			continue;
-		debug("%s: 0x%08llx:0x%08llx (%s) conflicts with 0x%08llx:0x%08llx (%s)\n",
-				__func__,
+		res_dbg("request region(0x%08llx:0x%08llx): %s conflicts with 0x%08llx:0x%08llx (%s)\n",
 				(unsigned long long)start,
 				(unsigned long long)end,
 				name,
@@ -74,7 +77,7 @@ struct resource *__request_region(struct resource *parent,
 	}
 
 ok:
-	debug("%s ok: 0x%08llx:0x%08llx flags=0x%x\n", __func__,
+	res_dbg("request region(0x%08llx:0x%08llx): success flags=0x%x\n",
 			(unsigned long long)start,
 			(unsigned long long)end, flags);
 
-- 
2.39.2



