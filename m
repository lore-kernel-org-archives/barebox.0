Delivery-date: Fri, 04 Apr 2025 20:24:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0liD-008MGi-1Z
	for lore@lore.pengutronix.de;
	Fri, 04 Apr 2025 20:24:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0liC-0008K4-SK
	for lore@pengutronix.de; Fri, 04 Apr 2025 20:24:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bi1ndXbTWaZuOD69uhj0RqFURmtGjytfBBuHSV2IIGY=; b=YRJc98fEQgTcuHmK16ZzIR3teJ
	Dm1Bz/Sl+PTwjzVUkaYS5grJezIrbB7dYaN2vgMpiI+s5US9rt8ZFtv0zJYyqYIFxZNiEZp0RLWao
	tlt9BW8KcHIKwOW0RzW1Rjh4ElQVaMI/ULUVcbiprr2cGtnChgz4JjDej/Bbgb8MY1o0ovwQ6T+IF
	QLLF9Grc0cYCv2OWxunWi04rZMpQIscxt1i/iy2duTWwKO8/QR4gn4n+UrCdMFrIJAqfgzhWOqoK0
	Ko/a6rn9DdWUjBOiPlVWPkZevZzytjDqt7xxHfYQoixW7wU8lUE/YlxveK8bRxAS/Crqj2Hc39k0X
	TzZPI3Dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0lho-0000000CWd7-0rpn;
	Fri, 04 Apr 2025 18:23:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0lhk-0000000CWbZ-19KD
	for barebox@lists.infradead.org;
	Fri, 04 Apr 2025 18:23:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lhi-00086w-Sz; Fri, 04 Apr 2025 20:23:46 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lhi-003JFQ-2H;
	Fri, 04 Apr 2025 20:23:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lhi-00CaV2-1z;
	Fri, 04 Apr 2025 20:23:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Apr 2025 20:23:43 +0200
Message-Id: <20250404182345.2999795-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250404182345.2999795-1-a.fatoum@pengutronix.de>
References: <20250404182345.2999795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_112348_303934_67D14194 
X-CRM114-Status: GOOD (  15.30  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/3] commands: devlookup: factor out cmd_export_val
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Until we have support for capturing command output into a variable,
future commands will continue to have a -v parameter or similar for
printing the output of a command into a variable.

Add a helper for this that either prints it to the variable or to
stdout. This will allow easy migration to command output capture once we
have it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/devlookup.c | 16 ++--------------
 common/command.c     | 13 +++++++++++++
 include/command.h    |  2 ++
 3 files changed, 17 insertions(+), 14 deletions(-)

diff --git a/commands/devlookup.c b/commands/devlookup.c
index bc9bd9461443..4a2c9b773661 100644
--- a/commands/devlookup.c
+++ b/commands/devlookup.c
@@ -9,18 +9,6 @@
 #include <linux/ctype.h>
 #include <environment.h>
 
-static int report(const char *variable, const char *val)
-{
-	if (!val)
-		return -(errno ?: EINVAL);
-
-	if (variable)
-		return setenv(variable, val);
-
-	printf("%s\n", val);
-	return 0;
-}
-
 static int do_devlookup(int argc, char *argv[])
 {
 	const char *variable = NULL, *devicefile, *paramname;
@@ -56,9 +44,9 @@ static int do_devlookup(int argc, char *argv[])
 	}
 
 	if (paramname)
-		ret = report(variable, dev_get_param(cdev->dev, paramname));
+		ret = cmd_export_val(variable, dev_get_param(cdev->dev, paramname));
 	else
-		ret = report(variable, dev_name(cdev->dev));
+		ret = cmd_export_val(variable, dev_name(cdev->dev));
 out:
 	cdev_close(cdev);
 
diff --git a/common/command.c b/common/command.c
index 014b85f9a35f..a119b0f41b3a 100644
--- a/common/command.c
+++ b/common/command.c
@@ -128,6 +128,19 @@ struct command *find_cmd (const char *cmd)
 }
 EXPORT_SYMBOL(find_cmd);
 
+int cmd_export_val(const char *variable, const char *val)
+{
+	if (!val)
+		return -EINVAL;
+
+	if (variable)
+		return setenv(variable, val);
+
+	printf("%s\n", val);
+	return 0;
+}
+EXPORT_SYMBOL(cmd_export_val);
+
 /*
  * Put all commands into a linked list. Without module support we could use
  * the raw command array, but with module support a list is easier to handle.
diff --git a/include/command.h b/include/command.h
index 26e06077b071..03ac270d1305 100644
--- a/include/command.h
+++ b/include/command.h
@@ -52,6 +52,7 @@ extern struct command * const __barebox_cmd_end[];
 /* common/command.c */
 #ifdef CONFIG_COMMAND_SUPPORT
 struct command *find_cmd(const char *cmd);
+int cmd_export_val(const char *variable, const char *val);
 int execute_command(int argc, char **argv);
 void barebox_cmd_usage(struct command *cmdtp);
 int run_command(const char *cmd);
@@ -59,6 +60,7 @@ int run_command(const char *cmd);
 static inline struct command *find_cmd(const char *cmd) { return NULL; }
 static inline int execute_command(int argc, char **argv) { return -ENOSYS; }
 static inline void barebox_cmd_usage(struct command *cmdtp) {}
+static inline int cmd_export_val(const char *variable, const char *val) { return -ENOSYS; }
 static inline int run_command(const char *cmd) { return -ENOSYS; }
 #endif
 
-- 
2.39.5



