Delivery-date: Wed, 05 Apr 2023 11:52:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjzoP-00Ak6x-PP
	for lore@lore.pengutronix.de; Wed, 05 Apr 2023 11:52:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pjzoP-0000z7-Dh
	for lore@pengutronix.de; Wed, 05 Apr 2023 11:52:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=MIMtBWB2PMeQfLdqdmQsAKhmUnevSCz8hpb192Q0F3g=; b=xr+Qm+7fXtgrStg9h8IY8RSzHW
	9ED25pt2oKi0Ei7CR+lX+P8GFooiDa7nEnREHsKb1lIIHosffr49YdTnJg2jNlITHe83exdZ8RQtQ
	3xpOqXMoYykRMO8o3ygz0+T3EOfiwtAc4Qc9QtEi4MqZikHTkK8IH97WkW4vjd1TbecI+ap0GRl7N
	36rn/CmMkOnYOEvjHDey0nhr4GdpPVgsN0lFMSA0iHdmumiKMHVXb5+iXoRIpJ8agRjP62wANpIlq
	Jb/YLqzVkW2zpxWYyOT6uPPRo1D7eFlYJsH0bS4cGP80VGkxAE9SqwYBV1a7wmLBm/koiR37gbd4x
	76zVMQPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzn2-0040td-0I;
	Wed, 05 Apr 2023 09:50:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pjzmy-0040sb-1p
	for barebox@lists.infradead.org;
	Wed, 05 Apr 2023 09:50:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pjzms-0000mX-3Z
	for barebox@lists.infradead.org; Wed, 05 Apr 2023 11:50:42 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  5 Apr 2023 11:50:36 +0200
Message-Id: <20230405095036.2864517-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230405_025048_604005_F16BC8A6 
X-CRM114-Status: GOOD (  10.64  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fastboot: avoid console_countdown_abort for getvar request
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Don't abort the console countdown in case of 'fastboot getvar' requests.
Most the time the host just want to query information but don't want to
abort the boot. Therefore skip the abort in case of getvar requests and
abort it in all other cases.

Suggested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 common/fastboot.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index ae7f132444..6c58195395 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -772,6 +772,11 @@ static void cb_erase(struct fastboot *fb, const char *cmd)
 		fastboot_tx_print(fb, FASTBOOT_MSG_OKAY, "");
 }
 
+static bool fastboot_cmd_abort_allowed(const char *cmdbuf)
+{
+	return strcmp_l1("getvar:", cmdbuf) == 0 ? false : true;
+}
+
 struct cmd_dispatch_info {
 	char *cmd;
 	void (*cb)(struct fastboot *fb, const char *opt);
@@ -783,7 +788,8 @@ static void fb_run_command(struct fastboot *fb, const char *cmdbuf,
 	const struct cmd_dispatch_info *cmd;
 	int i;
 
-	console_countdown_abort();
+	if (fastboot_cmd_abort_allowed(cmdbuf))
+		console_countdown_abort();
 
 	for (i = 0; i < num_commands; i++) {
 		cmd = &cmds[i];
-- 
2.39.2



