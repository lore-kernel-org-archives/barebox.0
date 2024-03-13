Delivery-date: Wed, 13 Mar 2024 20:56:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUiT-004oUN-29
	for lore@lore.pengutronix.de;
	Wed, 13 Mar 2024 20:56:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rkUiT-00040P-0U
	for lore@pengutronix.de; Wed, 13 Mar 2024 20:56:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Blx2w88xAYQBPNs3pSN+OqCPzQumwTUu1j53Vd7KTY4=; b=1Ujr8VGzkOoz66p91tvNrIrddO
	0Xdr4ouyJ8li+4CtH4+CEpNrYsyVCit2f6BqomrZFyc6XbK2lCbQxGs007nYgbWDTYSfcF0nqWZKt
	jypug+1hjXsYxOH3SL5uPMQcFMamiq/G7tivz+AcrCKrl4m1798fRZBI3YvsQsMxx5umrDK2tOzQP
	LVBTTVvuJQEbHAANG1enKT2n/h9rCWEScozLp3Ta3lc6pl0cb2h/haiJDKpjvoX/AKu3Z4cej6FYb
	p06yCzXrTYC8onK9d61GgVMtFjNOMVmsypongHtUUE/+LJMAzomlP5HGeHQ0pyVv5Q1SeQqUNyEs4
	gdmq1pjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUhy-0000000Bien-3BOX;
	Wed, 13 Mar 2024 19:56:14 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rkUht-0000000BicO-022h
	for barebox@lists.infradead.org;
	Wed, 13 Mar 2024 19:56:11 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rkUhr-00037i-R4
	for barebox@lists.infradead.org; Wed, 13 Mar 2024 20:56:07 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 13 Mar 2024 20:56:04 +0100
Message-Id: <20240313195606.3911219-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240313195606.3911219-1-m.felsch@pengutronix.de>
References: <20240313195606.3911219-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240313_125609_497300_20212F45 
X-CRM114-Status: UNSURE (   9.69  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/4] boot: add helper to set default boot source from board file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a helper which can be called from board files to setup the
"boot.default" parameter to be independent of the initcall level.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/boot.c  | 9 ++++++++-
 include/boot.h | 1 +
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/common/boot.c b/common/boot.c
index dd9e26afc769..9cf9e9f391fd 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -115,11 +115,18 @@ struct watchdog *boot_get_enabled_watchdog(void)
 }
 
 static char *global_boot_default;
+
+void boot_set_default(const char *boot_default)
+{
+	free(global_boot_default);
+	global_boot_default = xstrdup(boot_default);
+}
+
 static char *global_user;
 
 static int init_boot(void)
 {
-	global_boot_default = xstrdup("net");
+	global_boot_default = global_boot_default ? : xstrdup("net");
 	globalvar_add_simple_string("boot.default", &global_boot_default);
 	globalvar_add_simple_int("boot.watchdog_timeout",
 				 &boot_watchdog_timeout, "%u");
diff --git a/include/boot.h b/include/boot.h
index c9e8c0fd0d87..0f97901a9a72 100644
--- a/include/boot.h
+++ b/include/boot.h
@@ -44,6 +44,7 @@ int bootentry_register_provider(int (*fn)(struct bootentries *bootentries, const
 
 struct watchdog;
 
+void boot_set_default(const char *boot_default);
 void boot_set_watchdog_timeout(unsigned int timeout);
 struct watchdog *boot_get_enabled_watchdog(void);
 struct bootentries *bootentries_alloc(void);
-- 
2.39.2



