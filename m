Delivery-date: Tue, 28 Nov 2023 16:32:13 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r804L-00CCGc-0i
	for lore@lore.pengutronix.de;
	Tue, 28 Nov 2023 16:32:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r804L-0005tQ-4K
	for lore@pengutronix.de; Tue, 28 Nov 2023 16:32:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Tk+6EfFD4LqaO8br54Bp99jNSfWzHsWF2VXcZ9mHPAU=; b=e+X0G3OWc8vMyr9cJ60r46s0HT
	SD8ueerkydR4TXLEA3e4tEeZp51bNsSE1/6uHaPx2JeOUIYF7zx2ep7+nU9c505eBDEjyCorMhCdK
	AZtMSuIFQ9zBUs4lFSjZ9x2UiYyALlSolydZ1LxDk9OxswV3B2YcLtLSxYlOHlZKHCmFv6POnlfI5
	xe2O+oClw9pV8Yy/alkuqRlqDd9+ptZzRFvoERJzvXcJMJTxxBotxILabAXh5omwjbpQpclHn8N3c
	IDWvZ+RA8rrXD460tMOISD7JBB7CPN6XE5p+cbaoKinLqfFDnl9QH73+SNbyHzm50hl6ua8WqI+38
	DIskWx+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r802l-005gmP-23;
	Tue, 28 Nov 2023 15:30:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r802h-005gkA-1Y
	for barebox@lists.infradead.org;
	Tue, 28 Nov 2023 15:30:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r802a-0005YG-6g; Tue, 28 Nov 2023 16:30:24 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r802Z-00CD1K-QV; Tue, 28 Nov 2023 16:30:23 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r802Z-002oF9-2H;
	Tue, 28 Nov 2023 16:30:23 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 28 Nov 2023 16:30:20 +0100
Message-Id: <20231128153020.669750-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_073031_517934_4F3E5A5C 
X-CRM114-Status: GOOD (  12.96  )
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
Subject: [PATCH] commands: regulator: add option to list provider devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Especially on SCMI boards, it isn't immediately clear if e.g. reg11 is
supplied by a directly accessed regulator or by the secure world.

Give the regulator command a -D option to list devices that the
regulator is associated with as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/regulator.c     | 11 ++++++++---
 drivers/regulator/core.c | 27 ++++++++++++++++++++-------
 include/regulator.h      |  5 ++++-
 3 files changed, 32 insertions(+), 11 deletions(-)

diff --git a/commands/regulator.c b/commands/regulator.c
index e6b2f4852db4..3e38b616469f 100644
--- a/commands/regulator.c
+++ b/commands/regulator.c
@@ -11,9 +11,10 @@
 static int do_regulator(int argc, char *argv[])
 {
 	struct regulator *chosen;
+	unsigned flags = 0;
 	int opt, ret;
 
-	while ((opt = getopt(argc, argv, "e:d:")) > 0) {
+	while ((opt = getopt(argc, argv, "e:d:D")) > 0) {
 		switch (opt) {
 		case 'e':
 		case 'd':
@@ -27,12 +28,15 @@ static int do_regulator(int argc, char *argv[])
 				         : regulator_disable(chosen);
 			regulator_put(chosen);
 			return ret;
+		case 'D':
+			flags |= REGULATOR_PRINT_DEVS;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
 	}
 
-	regulators_print();
+	regulators_print(flags);
 	return 0;
 }
 
@@ -42,12 +46,13 @@ BAREBOX_CMD_HELP_START(regulator)
 	BAREBOX_CMD_HELP_TEXT("Options:")
 	BAREBOX_CMD_HELP_OPT("-e REGULATOR\t", "enable REGULATOR")
 	BAREBOX_CMD_HELP_OPT("-d REGULATOR\t", "disable REGULATOR")
+	BAREBOX_CMD_HELP_OPT("-D\t", "list provider devices of regulators")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(regulator)
 	.cmd		= do_regulator,
 	BAREBOX_CMD_DESC("list and control regulators")
-	BAREBOX_CMD_OPTS("[-ed] [REGULATOR]")
+	BAREBOX_CMD_OPTS("[-edD] [REGULATOR]")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_regulator_help)
 BAREBOX_CMD_END
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index b20a48e0f63c..bbba3b0b5712 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -729,20 +729,32 @@ int regulator_get_voltage(struct regulator *regulator)
 }
 EXPORT_SYMBOL_GPL(regulator_get_voltage);
 
-static void regulator_print_one(struct regulator_dev *rdev, int level)
+static int regulator_name_indent(unsigned flags)
 {
+	return 30 + (flags & REGULATOR_PRINT_DEVS ? 50 : 0);
+}
+
+static void regulator_print_one(struct regulator_dev *rdev, int level, unsigned flags)
+{
+	const char *name = rdev->name;
 	struct regulator *r;
+	char buf[256];
 
 	if (!rdev)
 		return;
 
+	if (flags & REGULATOR_PRINT_DEVS) {
+		snprintf(buf, sizeof(buf), "%s  %s", dev_name(rdev->dev), rdev->name);
+		name = buf;
+	}
+
 	printf("%*s%-*s %6d %10d %10d\n", level * 3, "",
-	       30 - level * 3,
-	       rdev->name, rdev->enable_count, rdev->min_uv, rdev->max_uv);
+	       regulator_name_indent(flags) - level * 3,
+	       name, rdev->enable_count, rdev->min_uv, rdev->max_uv);
 
 	list_for_each_entry(r, &rdev->consumer_list, list) {
 		if (r->rdev_consumer)
-			regulator_print_one(r->rdev_consumer, level + 1);
+			regulator_print_one(r->rdev_consumer, level + 1, flags);
 		else
 			printf("%*s%s\n", (level + 1) * 3, "", r->dev ? dev_name(r->dev) : "none");
 	}
@@ -751,13 +763,14 @@ static void regulator_print_one(struct regulator_dev *rdev, int level)
 /*
  * regulators_print - print informations about all regulators
  */
-void regulators_print(void)
+void regulators_print(unsigned flags)
 {
 	struct regulator_dev *rdev;
 
-	printf("%-30s %6s %10s %10s\n", "name", "enable", "min_uv", "max_uv");
+	printf("%-*s %6s %10s %10s\n", regulator_name_indent(flags),
+	       "name", "enable", "min_uv", "max_uv");
 	list_for_each_entry(rdev, &regulator_list, list) {
 		if (!rdev->supply)
-			regulator_print_one(rdev, 0);
+			regulator_print_one(rdev, 0, flags);
 	}
 }
diff --git a/include/regulator.h b/include/regulator.h
index 240dbce5e7da..135fe6d91fd3 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -2,6 +2,8 @@
 #ifndef __REGULATOR_H
 #define __REGULATOR_H
 
+#include <linux/bitops.h>
+
 struct device;
 
 /* struct regulator is an opaque object for consumers */
@@ -155,7 +157,8 @@ static inline int of_regulator_register(struct regulator_dev *rd,
 #endif
 int dev_regulator_register(struct regulator_dev *rd, const char *name);
 
-void regulators_print(void);
+#define REGULATOR_PRINT_DEVS	BIT(0)
+void regulators_print(unsigned flags);
 
 const char *rdev_get_name(struct regulator_dev *rdev);
 
-- 
2.39.2



