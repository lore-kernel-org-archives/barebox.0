Delivery-date: Thu, 14 Aug 2025 17:16:56 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umZhI-000Y3H-2k
	for lore@lore.pengutronix.de;
	Thu, 14 Aug 2025 17:16:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umZhH-0001J3-Ld
	for lore@pengutronix.de; Thu, 14 Aug 2025 17:16:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=H66MokWjVMCPMCIeSrYAlWlitdHk7KPmUSjBx39SMDg=; b=FhsdM/uDm8MgVe3LH3q2iYuA/v
	l5gwpYNs2TjWll22HjlNrAvyBV4nKwjsI6pLCByvFj9XhwuKXp22XD12mpPRpsCLffMkp9p6iuMc2
	bUJek02ajQXmUfH7qtY1Ltcg5+t6B0u+QoUyh7dONl89kyklh7MlZgSOZMkeZpN5mf4wgpXrpySzd
	XvsUkG6Obe2W2j1m1FMTok1eQbNNi/tbGYiEdc5ubBL3ug/InDNCRsd7HMJ4K5JJ90/RW8jY1+vAP
	to7L6meu1th4uUXuLkvtWgPOkQkcYMf7r/XjOk2nbzdWgwOnInUVPq4jPgjO7eswee8MbYtXL08B7
	9/lGu9hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umZh5-0000000HOjB-2Pp5;
	Thu, 14 Aug 2025 15:16:43 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7r-0000000H4Pi-2vt5
	for barebox@bombadil.infradead.org;
	Thu, 14 Aug 2025 13:36:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=H66MokWjVMCPMCIeSrYAlWlitdHk7KPmUSjBx39SMDg=; b=dwBOna2a5i/jIaqI8DC4lhwu4G
	c2H2JPE3YUQtXiNbQJdnXznW24LYo5b4/l2rpky8nFBZ7mge5wGkAVtCUGJQNKhOERbkUkxmDb0nK
	d+zkHO4+rpMnJVokW1gS0nqEhEWpKAB56H4sZbr14T3UbMPE3mzchRi6e6S3rIZs+Hy2REW0UosV5
	9Rwyh57CzDlZFXkkGkYTGucwyh1Pbp5GteJNgpFVgJp8wflp4crhOlfTO7yY0guhPFaSYThEqTHzU
	/HhiFqEP43bFBVXaMlKMKjBfq491YNWH1Ktm6Gr4wwCJ6oQvrwdW+T7o5iRFw81nSUU6n7VcilWNm
	auOyib4g==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umY7m-0000000GPTo-0Ssi
	for barebox@lists.infradead.org;
	Thu, 14 Aug 2025 13:36:14 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7j-0002j2-W4; Thu, 14 Aug 2025 15:36:08 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umY7j-000GOC-2b;
	Thu, 14 Aug 2025 15:36:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1umXfb-00Gwpv-1o;
	Thu, 14 Aug 2025 15:07:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 14 Aug 2025 15:06:57 +0200
Message-Id: <20250814130702.4039241-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
References: <20250814130702.4039241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250814_143610_202793_D255CC29 
X-CRM114-Status: GOOD (  12.24  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 12/17] bootm: support calling bootm_optional_signed_images at any time
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

bootm_init is a late initcall and thus the code has the implicit
assumption that bootm_force_signed_images is called after it runs.

Rework the code to allow calling the function at any time.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/bootm.c | 32 +++++++++++++++++++++++---------
 1 file changed, 23 insertions(+), 9 deletions(-)

diff --git a/common/bootm.c b/common/bootm.c
index 3a2eb262b26a..5c129cd4b579 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -116,19 +116,34 @@ static const char * const bootm_verify_names[] = {
 
 static bool force_signed_images = IS_ENABLED(CONFIG_BOOTM_FORCE_SIGNED_IMAGES);
 
-void bootm_force_signed_images(void)
+static void bootm_optional_signed_images(void)
+{
+	/* This function should not be exported */
+	BUG_ON(force_signed_images);
+
+	globalvar_remove("bootm.verify");
+	/* recreate bootm.verify with a single enumeration as option */
+	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
+				  bootm_verify_names, ARRAY_SIZE(bootm_verify_names));
+
+	bootm_verify_mode = BOOTM_VERIFY_AVAILABLE;
+}
+
+static void bootm_require_signed_images(void)
 {
 	static unsigned int verify_mode = 0;
 
-	if (force_signed_images)
-		return;
-
 	/* recreate bootm.verify with a single enumeration as option */
 	globalvar_remove("bootm.verify");
 	globalvar_add_simple_enum("bootm.verify", &verify_mode,
 				  &bootm_verify_names[BOOTM_VERIFY_SIGNATURE], 1);
 
 	bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
+}
+
+void bootm_force_signed_images(void)
+{
+	bootm_require_signed_images();
 	force_signed_images = true;
 }
 
@@ -1075,14 +1090,13 @@ static int bootm_init(void)
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
 	}
 
-	if (bootm_signed_images_are_forced())
-		bootm_verify_mode = BOOTM_VERIFY_SIGNATURE;
-
 	globalvar_add_simple_bool("bootm.dryrun", &bootm_dryrun);
 	globalvar_add_simple_int("bootm.verbose", &bootm_verbosity, "%u");
 
-	globalvar_add_simple_enum("bootm.verify", (unsigned int *)&bootm_verify_mode,
-				  bootm_verify_names, ARRAY_SIZE(bootm_verify_names));
+	if (bootm_signed_images_are_forced())
+		bootm_require_signed_images();
+	else
+		bootm_optional_signed_images();
 
 	if (IS_ENABLED(CONFIG_ROOTWAIT_BOOTARG))
 		globalvar_add_simple_int("linux.rootwait",
-- 
2.39.5



