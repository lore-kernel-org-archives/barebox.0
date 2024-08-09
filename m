Delivery-date: Fri, 09 Aug 2024 16:20:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQTr-007rSy-2d
	for lore@lore.pengutronix.de;
	Fri, 09 Aug 2024 16:20:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1scQTr-0007UU-4j
	for lore@pengutronix.de; Fri, 09 Aug 2024 16:20:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SM35ILLzoDJHDVsyGH988WOTHhzSn+s1q9azc4hgADk=; b=DJDQU7fTKIoZvfpSzSMTkGQB01
	5nlWwc7ls7DYudQEq5ykoZSwEQvVstVuxdC8Ju2tApIdUGf9YqXcZGo0JVL7VP+stnv5wABA9ZtKJ
	+VVsmMcQtGGYt/VYX5fYJMN0Ot89uQL0KkVt3a+6ibF7xkCY17OqAPvcgoJvx7Tq7L3XE92qkDdbX
	7WzwtGoV7qq0SzHT3hFgKgPMvm7DD4jVy9OsL+KzhGMnc+/St4Zr2oUlvnq/GVDx7Wjttlz9pql90
	Hf0jk4XnJaGjlniHniA2Rxm2aMjkAH8I53v2GAO9fbAuSHBhq76meTLftXY3282WfsX+AMMXqjmmx
	IwW59Nzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQTS-0000000BVd2-3QsC;
	Fri, 09 Aug 2024 14:20:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scQTP-0000000BVbj-1t6D
	for barebox@lists.infradead.org;
	Fri, 09 Aug 2024 14:20:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQTN-0007JD-SK; Fri, 09 Aug 2024 16:20:05 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQTN-005gZl-FO; Fri, 09 Aug 2024 16:20:05 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1scQTN-001Jfa-1E;
	Fri, 09 Aug 2024 16:20:05 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  9 Aug 2024 16:19:58 +0200
Message-Id: <20240809141959.313914-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240809141959.313914-1-a.fatoum@pengutronix.de>
References: <20240809141959.313914-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240809_072007_988104_C89E7F8A 
X-CRM114-Status: GOOD (  14.49  )
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
Subject: [PATCH 2/3] fastboot: retire strcmp_l1 in favor of str_has_prefix
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

strcmp_l1 is basically str_has_prefix with inverted arguments and a
NULL check.

We don't need the NULL check as cmdbuf and cmd->cmd should always be
non-NULL: The former is the address of an array populated by fastboot
network or USB code and the latter is a pointer to a string literal.

So let's codify the assumption that cmdbuf is not NULL into the
prototype and replace strcmp_l1 with str_has_prefix. This has the added
benefit that str_has_prefix returns the length of the prefix, which
saves us a repeated call to strlen(cmd->cmd);

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 common/fastboot.c  | 14 +++++---------
 include/fastboot.h |  3 ++-
 2 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/common/fastboot.c b/common/fastboot.c
index e85cc6d8aaf8..dc66d7123b02 100644
--- a/common/fastboot.c
+++ b/common/fastboot.c
@@ -287,13 +287,6 @@ static void cb_reboot(struct fastboot *fb, const char *cmd)
 	restart_machine();
 }
 
-static int strcmp_l1(const char *s1, const char *s2)
-{
-	if (!s1 || !s2)
-		return -1;
-	return strncmp(s1, s2, strlen(s1));
-}
-
 static void cb_getvar(struct fastboot *fb, const char *cmd)
 {
 	struct fb_variable *var;
@@ -815,10 +808,13 @@ static void fb_run_command(struct fastboot *fb, const char *cmdbuf,
 	console_countdown_abort("fastboot");
 
 	for (i = 0; i < num_commands; i++) {
+		size_t cmdlen;
+
 		cmd = &cmds[i];
 
-		if (!strcmp_l1(cmd->cmd, cmdbuf)) {
-			cmd->cb(fb, cmdbuf + strlen(cmd->cmd));
+		cmdlen = str_has_prefix(cmdbuf, cmd->cmd);
+		if (cmdlen) {
+			cmd->cb(fb, cmdbuf + cmdlen);
 
 			return;
 		}
diff --git a/include/fastboot.h b/include/fastboot.h
index cd415847e348..4b2fdf3190b2 100644
--- a/include/fastboot.h
+++ b/include/fastboot.h
@@ -87,7 +87,8 @@ int fastboot_tx_print(struct fastboot *fb, enum fastboot_msg_type type,
 		      const char *fmt, ...);
 void fastboot_start_download_generic(struct fastboot *fb);
 void fastboot_download_finished(struct fastboot *fb);
-void fastboot_exec_cmd(struct fastboot *fb, const char *cmdbuf);
+void fastboot_exec_cmd(struct fastboot *fb, const char *cmdbuf)
+        __attribute__((nonnull));
 void fastboot_abort(struct fastboot *fb);
 
 #endif
-- 
2.39.2



