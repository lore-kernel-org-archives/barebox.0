Delivery-date: Thu, 09 Nov 2023 13:27:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r147j-004BHz-2O
	for lore@lore.pengutronix.de;
	Thu, 09 Nov 2023 13:27:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r147j-0003PY-Lw
	for lore@pengutronix.de; Thu, 09 Nov 2023 13:27:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WKphMbfEAiLv9yekvagkJ3zt9pwQjxK60TZjAtLPS+0=; b=P7t/dPdRWxzTdnm4klkQY5u8fO
	f0LuVSWryDEUtchI9E0ZHXmlIoMPlCSbfXO4oIiDp7N8ih2dGTDPIG/+yLGjrjaxD+MgiFnqD/5HQ
	u4cGldij5o0vfcjbsu6WnxjznVtH0kiStLbdI9zwIP6Lytr+iWn5u+L2Vpbd+l98dI6zDINDPJHvT
	SepCAlDmNIcXmYIV6mDbzp8sGmqT0A9Ecq26nHiuGZ6XGhnhXyPzTaqefQOQ2O/xJlSDOFsIc5fAS
	Eyb4hrGNZjZPRFmkNdODtQBSdeyMaSSqdha3MEhW6kFK/t6YgfyNbiRli5GO4Xejrz185SxuObaun
	Em+Ey/BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r146h-006JM8-0y;
	Thu, 09 Nov 2023 12:25:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r146d-006JKk-0Y
	for barebox@lists.infradead.org;
	Thu, 09 Nov 2023 12:25:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r146b-00034e-Ao; Thu, 09 Nov 2023 13:25:53 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r146a-007m8Z-Uf; Thu, 09 Nov 2023 13:25:52 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r146a-006EaX-2l;
	Thu, 09 Nov 2023 13:25:52 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  9 Nov 2023 13:25:50 +0100
Message-Id: <20231109122551.1486020-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231109122551.1486020-1-a.fatoum@pengutronix.de>
References: <20231109122551.1486020-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231109_042555_206595_FDD39FF8 
X-CRM114-Status: GOOD (  14.85  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 2/3] complete: add support for spaces in completions
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Drivers have spaces inside their names, which makes tab completion
tricky as it restarts for every separate argument.

Support for doing this in readline and hush landed in commits
1498093ccd11 ("readline: Complete strings containing whitespaces correctly")
and 70e0885229d2 ("hush: Fix handling '\ '") respectively.

This only goes one way though, escape a completion suggestion. The
suggestion needs to be unescaped again, so repeated <Tab> usage after
modifying the prompt is understood.

For this to work, skip backslashes in the argument being completed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch to prepare completing driver names with spaces
---
 common/complete.c | 70 +++++++++++++++++++++++++++++++++++------------
 1 file changed, 52 insertions(+), 18 deletions(-)

diff --git a/common/complete.c b/common/complete.c
index 4137bb3084fc..ef31a36faf5f 100644
--- a/common/complete.c
+++ b/common/complete.c
@@ -14,6 +14,27 @@
 #include <command.h>
 #include <environment.h>
 
+static bool is_valid_escape(const char *str)
+{
+	return str[0] == '\\' && (str[1] == ' ' || str[1] == '\\');
+}
+
+static bool strstarts_escaped(const char *whole, const char *prefix_escaped)
+{
+	if (!prefix_escaped)
+		return true;
+
+	while (*prefix_escaped) {
+		if (is_valid_escape(prefix_escaped))
+			prefix_escaped++;
+
+		if (*whole++ != *prefix_escaped++)
+			return false;
+	}
+
+	return true;
+}
+
 static int file_complete(struct string_list *sl, char *instr,
 			 const char *dirn, int exec)
 {
@@ -35,7 +56,7 @@ static int file_complete(struct string_list *sl, char *instr,
 		if (!strcmp(d->d_name, ".") || !strcmp(d->d_name, ".."))
 			continue;
 
-		if (strncmp(base, d->d_name, strlen(base)))
+		if (!strstarts_escaped(d->d_name, base))
 			continue;
 
 		strcpy(tmp, instr);
@@ -94,7 +115,7 @@ static int path_command_complete(struct string_list *sl, char *instr)
 					!strcmp(d->d_name, ".."))
 				continue;
 
-			if (!strncmp(instr, d->d_name, strlen(instr))) {
+			if (strstarts_escaped(d->d_name, instr)) {
 				strcpy(tmp, d->d_name);
 				if (!stat(tmp, &s) &&
 						S_ISDIR(s.st_mode))
@@ -136,15 +157,9 @@ EXPORT_SYMBOL(command_complete);
 int device_complete(struct string_list *sl, char *instr)
 {
 	struct device *dev;
-	int len;
-
-	if (!instr)
-		instr = "";
-
-	len = strlen(instr);
 
 	for_each_device(dev) {
-		if (strncmp(instr, dev_name(dev), len))
+		if (!strstarts_escaped(dev_name(dev), instr))
 			continue;
 
 		string_list_add_asprintf(sl, "%s ", dev_name(dev));
@@ -158,12 +173,9 @@ static int device_param_complete(struct device *dev, const char *devname,
 				 struct string_list *sl, char *instr, int eval)
 {
 	struct param_d *param;
-	int len;
-
-	len = strlen(instr);
 
 	list_for_each_entry(param, &dev->parameters, list) {
-		if (strncmp(instr, param->name, len))
+		if (!strstarts_escaped(param->name, instr))
 			continue;
 
 		string_list_add_asprintf(sl, "%s%s.%s%c",
@@ -340,21 +352,43 @@ void complete_reset(void)
 	tab_pressed = 0;
 }
 
+static char *skip_to_last_unescaped_space(char *instr)
+{
+	char *t;
+
+	t = strrchr(instr, ' ');
+	if (t && (instr == t || t[-1] != '\\'))
+		return t + 1;
+
+	return instr;
+}
+
+static size_t strlen_escaped(char *instr)
+{
+	size_t count = 0;
+
+	for (; *instr; instr++) {
+		if (is_valid_escape(instr))
+			instr++;
+
+		count++;
+	}
+
+	return count;
+}
+
 static char* cmd_complete_lookup(struct string_list *sl, char *instr)
 {
 	struct command *cmdtp;
 	int len;
 	int ret = COMPLETE_END;
 	char *res = NULL;
-	char *t;
 
 	for_each_command(cmdtp) {
 		len = strlen(cmdtp->name);
 		if (!strncmp(instr, cmdtp->name, len) && instr[len] == ' ') {
 			instr += len + 1;
-			t = strrchr(instr, ' ');
-			if (t)
-				instr = t + 1;
+			instr = skip_to_last_unescaped_space(instr);
 
 			if (cmdtp->complete) {
 				ret = cmdtp->complete(sl, instr);
@@ -414,7 +448,7 @@ int complete(char *instr, char **outstr)
 			env_param_complete(&sl, instr + 1, 1);
 	}
 
-	pos = strlen(instr);
+	pos = strlen_escaped(instr);
 
 	*outstr = "";
 	if (list_empty(&sl.list))
-- 
2.39.2



