Delivery-date: Fri, 14 Feb 2025 11:49:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGR-002Eh4-0c
	for lore@lore.pengutronix.de;
	Fri, 14 Feb 2025 11:49:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1titGP-0004yz-Ul
	for lore@pengutronix.de; Fri, 14 Feb 2025 11:49:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=MDaO2jyjp8vHjqU/2a/GmtBAIwv4Z4Hc/6Hf7Zeb9bg=; b=a9ClCr2ub+X/oRv7Q6DnDEnVd4
	u1qMrx+Xeba3S9UyHH3LDbAlIZ8an2ScrBJ6ntU+VZQ57hxGzY6i+1Juo9SKY+Pbr1Cg9TCu5UN7L
	2LKIEf/9dOpkJUjYEidyVQOEofENMTuEkqfzWuszxxZopEfZkupDFK7SxlC3WnxAQ87ggdcFx5TkV
	2TFUuG5o1FBsfZqPtK1p+pdwBUGavAmAlcmy/hKyb1/s8NnX26wiSM6Bw5Mm0Idn9sulNvoTfltjK
	li7pBrvaoYiTQGq16QKVPYUqJTGdxaVazncJ3MV+RiKfKyWgwvePrW3TBlEX8mamizN/IMkE9n7WU
	yFpeJKuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1titG1-0000000EYLG-0kve;
	Fri, 14 Feb 2025 10:49:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1titF8-0000000EYEO-0sCv
	for barebox@lists.infradead.org;
	Fri, 14 Feb 2025 10:48:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-0004Uk-SE; Fri, 14 Feb 2025 11:48:20 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-000u3W-2A;
	Fri, 14 Feb 2025 11:48:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1titF6-00CVIo-1t;
	Fri, 14 Feb 2025 11:48:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Feb 2025 11:48:12 +0100
Message-Id: <20250214104817.2975052-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
References: <20250214104817.2975052-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250214_024822_270928_BDA4E57A 
X-CRM114-Status: GOOD (  10.75  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] boot: move global.linux.bootargs.dyn. to common code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of clearing these options by select boot targets prior to boot,
let's instead clear them directly after the boot aborting.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/blspec.c   | 1 -
 common/boot.c     | 3 ++-
 common/fastboot.c | 1 -
 3 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index ea334e18718a..8a7f996e78d2 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -81,7 +81,6 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
 		.dryrun = dryrun,
 	};
 
-	globalvar_set_match("linux.bootargs.dyn.", "");
 	globalvar_set("bootm.image", "");
 	globalvar_set("bootm.oftree", "");
 	globalvar_set("bootm.initrd", "");
diff --git a/common/boot.c b/common/boot.c
index ced3b3a3477c..42818c6e2154 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -83,7 +83,6 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 
 	globalvar_add_simple("linux.bootargs.dyn.ip", NULL);
 	globalvar_add_simple("linux.bootargs.dyn.root", NULL);
-	globalvar_set_match("linux.bootargs.dyn.", "");
 
 	ret = run_command(bs->scriptpath);
 	if (ret) {
@@ -162,6 +161,8 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
 	if (ret && ret != -ENOMEDIUM)
 		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret));
 
+	globalvar_set_match("linux.bootargs.dyn.", "");
+
 	return ret;
 }
 
diff --git a/common/fastboot.c b/common/fastboot.c
index 66b59ab9b0d7..acc91490a553 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -419,7 +419,6 @@ static void __maybe_unused cb_boot(struct fastboot *fb, const char *opt)
 
 	fastboot_tx_print(fb, FASTBOOT_MSG_INFO, "Booting kernel..\n");
 
-	globalvar_set_match("linux.bootargs.dyn.", "");
 	globalvar_set("bootm.image", "");
 
 	data.os_file = fb->tempname;
-- 
2.39.5



