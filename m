Delivery-date: Fri, 09 Aug 2024 16:20:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQTr-007rSS-17
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:20:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQTq-0007U8-KG
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:20:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4iC5F1+m6vVMvfoQuRu/k9Z3JdR582hj3QFMTOw/da4=; b=A90MaLe48OaLx5
	r1UyA3mykNiJakg4Aqe4egq6fz5lcxZXN/cq4VgGaThI//NQ97cNUt20gKTyUIcZm0oolGTJ2qQxS
	2n2x+OWww7N5/Z6Vkp4J6EdCfrhs+RsZea+s8QKtLAbexvIWu9vnQHUeWXzdw+nRDB7P1m59imlRA
	1H4lRIzfKmnX23rSrFJnuLk5JNo98Wj9v1UwvTv9xXaRlr+ado6eRUYO2on8bg1E0+GfZZOzj6qyG
	vpZ4QxoVjlstiAGytmD27jyaZNt90eti24XsSrdlsH25ABnKLQdWm2ePKeUZFDFRVkKDwBU0U9t6z
	Gstj0IAKCXp9xIxW/gVw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQTU-0000000BVeq-2v7C;
	Fri, 09 Aug 2024 14:20:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQTP-0000000BVbi-1tNb
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:20:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQTN-0007JF-Tr; Fri, 09 Aug 2024 16:20:05 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQTN-005gZo-Gu; Fri, 09 Aug 2024 16:20:05 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQTN-001Jfa-1N;
	Fri, 09 Aug 2024 16:20:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  9 Aug 2024 16:19:59 +0200
Message-Id: <20240809141959.313914-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809141959.313914-1-a.fatoum@pengutronix.de>
References: <20240809141959.313914-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072007_988214_57A79D59 
X-CRM114-Status: GOOD (  13.04  )
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
Cc: lgo@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>, Jonas Martin <j.martin@pengutronix.de>
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
Subject: [PATCH 3/3] fastboot: avoid console_countdown_abort for getvar request
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently abort boot countdown on any fastboot communication at all
as we have the expectation that this is what the user wants.

This doesn't hold true on systems with fwupd: The fastboot plugin probes
connected devices:

  getvar:product
  getvar:version
  getvar:version-bootloader
  getvar:serialno
  getvar:secure

to determine whether an update is in-order. The first getvar will
automatically abort barebox boot up, which is likely not what the user
intended.

Therefore, let's abort console countdown only for non-getvar: requests.

Reported-by: Jonas Martin <j.martin@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Cc: lgo@pengutronix.de
Cc: jlu@pengutronix.de
v1 -> v2:
  - add rationale for the change (fwupd)
  - use strstarts instead of strcmp_l1 removed in earlier patch
---
 common/fastboot.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index dc66d7123b02..66b59ab9b0d7 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -794,6 +794,11 @@ static void cb_erase(struct fastboot *fb, const char *cmd)
 		fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
 }
 
+static bool fastboot_cmd_should_abort(const char *cmdbuf)
+{
+	return !strstarts(cmdbuf, "getvar:");
+}
+
 struct cmd_dispatch_info {
 	char *cmd;
 	void (*cb)(struct fastboot *fb, const char *opt);
@@ -805,7 +810,8 @@ static void fb_run_command(struct fastboot *fb, const char *cmdbuf,
 	const struct cmd_dispatch_info *cmd;
 	int i;
 
-	console_countdown_abort("fastboot");
+	if (fastboot_cmd_should_abort(cmdbuf))
+		console_countdown_abort("fastboot");
 
 	for (i = 0; i < num_commands; i++) {
 		size_t cmdlen;
-- 
2.39.2



