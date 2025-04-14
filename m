Delivery-date: Mon, 14 Apr 2025 08:26:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DGe-000Wp5-1r
	for lore@lore.pengutronix.de;
	Mon, 14 Apr 2025 08:26:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u4DGd-0007nm-TO
	for lore@pengutronix.de; Mon, 14 Apr 2025 08:26:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YnbKevdJONZ19c5xYEItYx425mX0Gorambvb0J7oiL8=; b=JMEP+WHqhm4FJ30ruT6Oh6s57b
	un/zxHGz8Z0YcxSK9VSJvKAulOdlQLR7a4qto9w22WCZ7GN1YNfXCq1eW3BoL5b2P9v4H/OI9rtX8
	g9EpolKZqOU88qAeJ9v07016U0HLjjGQqFKw3oSC689UEeFnootHpa0OBcjlImaez+iwcDUZ8UaQT
	HYLRKoiFgSpolRZixiVq/C4ofoIXbTXgBwTnt4I+VLpnr1KG9+wkwvOZJjuegBYbIjuMWp/U2vpJP
	PvRzlA9GiEEI6pNKW4HsB50kzgNp9soT1I5Cq5vfAFszpEd+tiVdnjd+4BXY0glkhkrpjJaGthyU4
	Ru4ikQ2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DGE-00000000nAQ-1XcZ;
	Mon, 14 Apr 2025 06:25:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u4DG9-00000000n9M-17XT
	for barebox@lists.infradead.org;
	Mon, 14 Apr 2025 06:25:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DG7-0007bR-TP; Mon, 14 Apr 2025 08:25:31 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DG7-000CgV-2J;
	Mon, 14 Apr 2025 08:25:31 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u4DG7-00BSj5-20;
	Mon, 14 Apr 2025 08:25:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Apr 2025 08:25:29 +0200
Message-Id: <20250414062530.2731978-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250413_232533_305334_DD5E1C14 
X-CRM114-Status: GOOD (  17.54  )
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
Subject: [PATCH 1/2] commands: devlookup: add support for cdev aliases
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To allow easier observability into the newly added cdev alias
functionality, extend devlookup to be able to resolve them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig     |  2 +-
 commands/devlookup.c | 50 +++++++++++++++++++++++++++++++++++++-------
 include/stringlist.h |  6 ++++++
 3 files changed, 50 insertions(+), 8 deletions(-)

diff --git a/commands/Kconfig b/commands/Kconfig
index ca3f13d7e0cc..7eff747ffdb6 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -92,7 +92,7 @@ config CMD_DEVLOOKUP
 	help
 	  Look up device behind device file and its parameters
 
-	  devlookup [-v VAR] /dev/DEVICE [parameter]
+	  devlookup [-v VAR] [-ka] /dev/DEVICE [parameter]
 
 	  Detects the device behind a device file and outputs it,
 	  unless a second argument is given. In that case the device
diff --git a/commands/devlookup.c b/commands/devlookup.c
index 0d4c6e808b60..5877d5f1b82c 100644
--- a/commands/devlookup.c
+++ b/commands/devlookup.c
@@ -9,17 +9,25 @@
 #include <linux/ctype.h>
 #include <environment.h>
 #include <block.h>
+#include <stringlist.h>
+
+static int devlookup_process(struct cdev *cdev, void *sl)
+{
+	string_list_add(sl, cdev->name);
+	return 1;
+}
 
 static int do_devlookup(int argc, char *argv[])
 {
 	const char *variable = NULL, *devicefile, *paramname;
-	struct cdev *cdev;
+	struct cdev *cdev = NULL;
 	int opt, ret;
-	bool kernelopt = false;
+	bool alias = false, kernelopt = false;
 	const char *val;
-	char *buf = NULL;
+	char *aliasbuf = NULL, *buf = NULL;
+	struct string_list sl;
 
-	while ((opt = getopt(argc, argv, "v:k")) > 0) {
+	while ((opt = getopt(argc, argv, "v:ka")) > 0) {
 		switch(opt) {
 		case 'v':
 			variable = optarg;
@@ -27,6 +35,9 @@ static int do_devlookup(int argc, char *argv[])
 		case 'k':
 			kernelopt = true;
 			break;
+		case 'a':
+			alias = true;
+			break;
 		}
 	}
 
@@ -39,12 +50,33 @@ static int do_devlookup(int argc, char *argv[])
 	devicefile = argv[0];
 	paramname  = argv[1];
 
+	string_list_init(&sl);
+
+	ret = cdev_alias_resolve_for_each(devicefile, devlookup_process, &sl);
+	if (ret < 0)
+		goto out;
+	else if (ret > 1) {
+		aliasbuf = string_list_join(&sl, " ");
+		if (string_list_count(&sl) > 1 && (kernelopt || paramname)) {
+			printf("Option not supported for multi cdev alias\n");
+			return COMMAND_ERROR;
+		}
+
+		if (alias) {
+			ret = cmd_export_val(variable, aliasbuf);
+			goto out;
+		}
+
+		devicefile = aliasbuf;
+	}
+
 	devicefile = devpath_to_name(devicefile);
 
 	cdev = cdev_open_by_name(devicefile, O_RDONLY);
 	if (!cdev) {
 		printf("devlookup: cdev %s not found\n", devicefile);
-		return -ENOENT;
+		ret = -ENOENT;
+		goto out;
 	}
 
 	if (!cdev->dev) {
@@ -62,8 +94,11 @@ static int do_devlookup(int argc, char *argv[])
 
 	ret = cmd_export_val(variable, val);
 out:
+	string_list_free(&sl);
+	free(aliasbuf);
 	free(buf);
-	cdev_close(cdev);
+	if (cdev)
+		cdev_close(cdev);
 
 	return ret;
 }
@@ -76,12 +111,13 @@ BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT ("-v",  "write output to VARIABLE instead of printing it")
 BAREBOX_CMD_HELP_OPT ("-k",  "output kernel rootarg line")
+BAREBOX_CMD_HELP_OPT ("-a",  "output resolution of cdev alias")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(devlookup)
 	.cmd		= do_devlookup,
 	BAREBOX_CMD_DESC("look up device behind device file and its parameters")
-	BAREBOX_CMD_OPTS("[-v VAR] [-k] /dev/DEVICE [parameter]")
+	BAREBOX_CMD_OPTS("[-v VAR] [-ka] /dev/DEVICE [parameter]")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_devlookup_help)
 BAREBOX_CMD_END
diff --git a/include/stringlist.h b/include/stringlist.h
index dcfd33c6e064..b964fabd2320 100644
--- a/include/stringlist.h
+++ b/include/stringlist.h
@@ -3,6 +3,7 @@
 #define __STRINGLIST_H
 
 #include <linux/list.h>
+#include <linux/string.h>
 #include <malloc.h>
 
 struct string_list {
@@ -24,6 +25,11 @@ static inline void string_list_init(struct string_list *sl)
 	sl->str = NULL;
 }
 
+static inline size_t string_list_count(struct string_list *sl)
+{
+	return list_count_nodes(&sl->list);
+}
+
 static inline void string_list_free(struct string_list *sl)
 {
 	struct string_list *entry, *safe;
-- 
2.39.5



