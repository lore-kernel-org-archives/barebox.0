Delivery-date: Fri, 04 Apr 2025 20:15:16 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0lZU-008M6l-0f
	for lore@lore.pengutronix.de;
	Fri, 04 Apr 2025 20:15:16 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0lZT-00079h-Fm
	for lore@pengutronix.de; Fri, 04 Apr 2025 20:15:16 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bi1ndXbTWaZuOD69uhj0RqFURmtGjytfBBuHSV2IIGY=; b=1hx/IIU8Y6y+yB2D9kTudKyoaU
	fx97FvLLXFQHT0Co4bx93KnJIN3TRNWooJwatrBn6ejm/LnkXmP02kObIViX2IfZ0T97NKOWaZOwL
	o/wfRAUJkcR8fibrdOVca3WBiIrYTVxIPmMibIIEjZMAcpH1fZ9z7AUCqMfQ5MIaVcyfnPYiPQfkH
	DK9IcRIWhHPfdHrT4lg/D6uwfhVOWM5LI3FLVfq9eKNectLaheL2EGbj+b4tAAIaiuzGilFwHdmU6
	lcNx/1WIdHMOBSJ9RlOM66FeuwFCP4pqzAxDcT76R+qTF4eUWC6rsyoh//O8tUUX3b3pUFfPqqiBu
	geGOhWMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0lYt-0000000CVSi-1b1p;
	Fri, 04 Apr 2025 18:14:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0lRG-0000000CUYi-2XDW
	for barebox@lists.infradead.org;
	Fri, 04 Apr 2025 18:06:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lRE-00068o-L5; Fri, 04 Apr 2025 20:06:44 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lRE-003J1z-1V;
	Fri, 04 Apr 2025 20:06:44 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lRE-00CSZc-1C;
	Fri, 04 Apr 2025 20:06:44 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Apr 2025 20:06:38 +0200
Message-Id: <20250404180640.2962778-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250404180640.2962778-1-a.fatoum@pengutronix.de>
References: <20250404180640.2962778-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_110646_670421_EC112F16 
X-CRM114-Status: GOOD (  15.09  )
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
Subject: [PATCH 1/3] commands: devlookup: factor out cmd_export_val
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



