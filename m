Delivery-date: Mon, 07 Apr 2025 09:56:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hLj-009Sph-16
	for lore@lore.pengutronix.de;
	Mon, 07 Apr 2025 09:56:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u1hLi-0003lo-Nd
	for lore@pengutronix.de; Mon, 07 Apr 2025 09:56:55 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=l+GK+lLUMSd7oTKbsdbVbUXM06TVuuU62+CdlEGOWIE=; b=J30W4nkqo4DfJuURDsQg/X3vRV
	mbUskd8+69ZUOyvq/FRbWAn5MzlVnh0WpZtEkhd8syKq8ImMN2p44NCsdtz8u2uq8zKEbb8C7ap51
	xUnpyoEPxEXjEnTpzyIwm8uMCkeLy5hNQRvDQbWCNNBg6xxyVCJYHwG/Yf/i/ltu9j8iQG0dixf/t
	kjykD4OzRCuqw9XxDozDR7eCFC7vqvgpWvr2X/9ebiCMMsWPcl9CSq+OKLXSn/Ykq8zw9DJoYhuv6
	JNpz/3Wg7MAfP/HmAYgORm6Uzpv0tOjnOd2zv2lx6mybtE2YphZTVqLYKZjt+hB8vsfg0LUaqSfhi
	2+U7uXCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1hLB-0000000Gt7W-4AE5;
	Mon, 07 Apr 2025 07:56:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u1gvi-0000000GmUc-4BHM
	for barebox@lists.infradead.org;
	Mon, 07 Apr 2025 07:30:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gvZ-0008CK-Rq; Mon, 07 Apr 2025 09:29:53 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gvZ-003ilJ-28;
	Mon, 07 Apr 2025 09:29:53 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1u1gvZ-004aOW-1u;
	Mon, 07 Apr 2025 09:29:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 07 Apr 2025 09:29:55 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250407-ratp-fixes-v1-3-4c2501a83bca@pengutronix.de>
References: <20250407-ratp-fixes-v1-0-4c2501a83bca@pengutronix.de>
In-Reply-To: <20250407-ratp-fixes-v1-0-4c2501a83bca@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1744010993; l=3394;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=C4aJg2Q+zjn2xW/BCOHEk4+E5feL3+CHvffVxbxUi9k=;
 b=OtfiX+BDIgsyO8ZI/j/EFzhCrg/uBNLozdqsBgGSTF5CHCOPsXvLbk262XV+eoKkTEH7jAr/t
 TrK+JeybF8WDdEc1YAP8XkmHQZfxhokSfn/XGj69VnrhPaPyO1RJIcZ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250407_003003_045953_51D803DD 
X-CRM114-Status: GOOD (  16.40  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] ratp: make ratp commands const
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ratp commands are placed in the readonly data section, but are
written to due to the list entry in the command.

Make the ratp commands actually const by moving the list entry to a
separate container struct.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/ratp/ratp.c | 34 ++++++++++++++++++++++------------
 include/ratp_bb.h  |  3 +--
 2 files changed, 23 insertions(+), 14 deletions(-)

diff --git a/common/ratp/ratp.c b/common/ratp/ratp.c
index 925e1d637f..a59dd56265 100644
--- a/common/ratp/ratp.c
+++ b/common/ratp/ratp.c
@@ -30,8 +30,6 @@
 
 static LIST_HEAD(ratp_command_list);
 
-#define for_each_ratp_command(cmd) list_for_each_entry(cmd, &ratp_command_list, list)
-
 struct ratp_bb_command_return {
 	uint32_t errno;
 };
@@ -56,30 +54,42 @@ struct ratp_ctx {
 	bool wq_registered;
 };
 
+struct ratp_command_entry {
+	struct list_head list;
+	const struct ratp_command *cmd;
+};
+
 static int compare_ratp_command(struct list_head *a, struct list_head *b)
 {
-	int id_a = list_entry(a, struct ratp_command, list)->request_id;
-	int id_b = list_entry(b, struct ratp_command, list)->request_id;
+	int id_a = list_entry(a, const struct ratp_command_entry, list)->cmd->request_id;
+	int id_b = list_entry(b, const struct ratp_command_entry, list)->cmd->request_id;
 
 	return (id_a - id_b);
 }
 
-int register_ratp_command(struct ratp_command *cmd)
+int register_ratp_command(const struct ratp_command *cmd)
 {
+	struct ratp_command_entry *entry;
+
 	debug("register ratp command: request %hu, response %hu\n",
 	      cmd->request_id, cmd->response_id);
-	list_add_sort(&cmd->list, &ratp_command_list, compare_ratp_command);
+
+	entry = xzalloc(sizeof(*entry));
+	entry->cmd = cmd;
+
+	list_add_sort(&entry->list, &ratp_command_list, compare_ratp_command);
+
 	return 0;
 }
 EXPORT_SYMBOL(register_ratp_command);
 
-static struct ratp_command *find_ratp_request(uint16_t request_id)
+static const struct ratp_command *find_ratp_request(uint16_t request_id)
 {
-	struct ratp_command *cmdtp;
+	struct ratp_command_entry *entry;
 
-	for_each_ratp_command(cmdtp)
-		if (request_id == cmdtp->request_id)
-			return cmdtp;
+	list_for_each_entry(entry, &ratp_command_list, list)
+		if (request_id == entry->cmd->request_id)
+			return entry->cmd;
 
 	return NULL;	/* not found */
 }
@@ -210,7 +220,7 @@ static int ratp_bb_dispatch(struct ratp_ctx *ctx, const void *buf, int len)
 	int dlen = len - sizeof(struct ratp_bb);
 	int ret = 0;
 	uint16_t type = be16_to_cpu(rbb->type);
-	struct ratp_command *cmd;
+	const struct ratp_command *cmd;
 	struct ratp_work *rw;
 
 	/* See if there's a command registered to this type */
diff --git a/include/ratp_bb.h b/include/ratp_bb.h
index c6c7c4bc23..746f6155dd 100644
--- a/include/ratp_bb.h
+++ b/include/ratp_bb.h
@@ -50,7 +50,6 @@ int  barebox_ratp_fs_mount(const char *path);
  */
 
 struct ratp_command {
-	struct list_head  list;
 	uint16_t          request_id;
 	uint16_t          response_id;
 	int		(*cmd)(const struct ratp_bb *req,
@@ -67,6 +66,6 @@ const struct ratp_command __barebox_ratp_cmd_##_name					\
 #define BAREBOX_RATP_CMD_END								\
 };
 
-int register_ratp_command(struct ratp_command *cmd);
+int register_ratp_command(const struct ratp_command *cmd);
 
 #endif /* __RATP_BB_H */

-- 
2.39.5



