Delivery-date: Mon, 03 Jan 2022 13:05:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M5J-009o0D-W5
	for lore@lore.pengutronix.de; Mon, 03 Jan 2022 13:05:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n4M5F-0004qJ-Iz
	for lore@pengutronix.de; Mon, 03 Jan 2022 13:05:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RD4x8rQiRuwFeJaMF9nCmxd0rCnu8D0qVok/0nLy7GY=; b=ubvmrvCXYq0xMU
	45xSFqDyf6F3cJ6wcrOySgsn+c+vy0LbGWa65V2Uql74BUEBzbrZrJiMMtZyWCu/QhPcKOrDo8K3V
	JWiVg5JpTWDS3AjXSYz0to5nfbfa9IQHwKae5U3+R/X52mvtV7Wt8cIN0X01YaP4ZrEDWygaKC8UM
	TSsKv3YEurSAQrhV3SQCDk4jWMcXqSn0EMNzLodKtgrH3Qj7A6Je1z2ttLUAPCVCV1Dx3ZW+1BX+i
	m94FOdz4rDu+FLD52kpxeWtl50t55DulWIgUn1K5zaaijvMzi5XOdEAOi1d0/xK6muFm719kyI38Q
	ekYFerRmtdZKjWJxedzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n4M40-008xXk-63; Mon, 03 Jan 2022 12:03:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n4M3v-008xX4-8s
 for barebox@lists.infradead.org; Mon, 03 Jan 2022 12:03:40 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M3u-0004jG-3R; Mon, 03 Jan 2022 13:03:38 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1n4M3t-007G1S-Ky; Mon, 03 Jan 2022 13:03:37 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jan 2022 13:03:36 +0100
Message-Id: <20220103120336.1729791-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220103_040339_337642_7EF22E1D 
X-CRM114-Status: GOOD (  14.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] commands: regulator: add support for enabling/disabling
 regulators
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

For testing regulator drivers, it can be handy to enable/disable them
from the shell prompt. Extend the regulator command to support this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/regulator.c     | 38 +++++++++++++++++++++++++++++++++++---
 drivers/regulator/core.c |  8 ++++++++
 include/regulator.h      |  1 +
 3 files changed, 44 insertions(+), 3 deletions(-)

diff --git a/commands/regulator.c b/commands/regulator.c
index 3e2595f8bfc1..e6b2f4852db4 100644
--- a/commands/regulator.c
+++ b/commands/regulator.c
@@ -6,16 +6,48 @@
 #include <common.h>
 #include <command.h>
 #include <regulator.h>
+#include <getopt.h>
 
 static int do_regulator(int argc, char *argv[])
 {
-	regulators_print();
+	struct regulator *chosen;
+	int opt, ret;
+
+	while ((opt = getopt(argc, argv, "e:d:")) > 0) {
+		switch (opt) {
+		case 'e':
+		case 'd':
+			chosen = regulator_get_name(optarg);
+			if (IS_ERR_OR_NULL(chosen)) {
+				printf("regulator not found\n");
+				return COMMAND_ERROR;
+			}
+
+			ret = opt == 'e' ? regulator_enable(chosen)
+				         : regulator_disable(chosen);
+			regulator_put(chosen);
+			return ret;
+		default:
+			return COMMAND_ERROR_USAGE;
+		}
+	}
 
+	regulators_print();
 	return 0;
 }
 
+BAREBOX_CMD_HELP_START(regulator)
+	BAREBOX_CMD_HELP_TEXT("List and control regulators.")
+	BAREBOX_CMD_HELP_TEXT("Without options, displays regulator info")
+	BAREBOX_CMD_HELP_TEXT("Options:")
+	BAREBOX_CMD_HELP_OPT("-e REGULATOR\t", "enable REGULATOR")
+	BAREBOX_CMD_HELP_OPT("-d REGULATOR\t", "disable REGULATOR")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(regulator)
 	.cmd		= do_regulator,
-	BAREBOX_CMD_DESC("list regulators")
-	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+	BAREBOX_CMD_DESC("list and control regulators")
+	BAREBOX_CMD_OPTS("[-ed] [REGULATOR]")
+	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_HELP(cmd_regulator_help)
 BAREBOX_CMD_END
diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
index b2e5f8caa2ca..35567100c5af 100644
--- a/drivers/regulator/core.c
+++ b/drivers/regulator/core.c
@@ -355,6 +355,14 @@ struct regulator *regulator_get(struct device_d *dev, const char *supply)
 	return r;
 }
 
+void regulator_put(struct regulator *r)
+{
+	if (IS_ERR_OR_NULL(r))
+		return;
+	list_del(&r->list);
+	free(r);
+}
+
 static struct regulator_internal *regulator_by_name(const char *name)
 {
 	struct regulator_internal *ri;
diff --git a/include/regulator.h b/include/regulator.h
index dfdfbf033262..f4cf6726c2ad 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -148,6 +148,7 @@ void regulators_print(void);
 #ifdef CONFIG_REGULATOR
 
 struct regulator *regulator_get(struct device_d *, const char *);
+void regulator_put(struct regulator *r);
 struct regulator *regulator_get_name(const char *name);
 int regulator_enable(struct regulator *);
 int regulator_disable(struct regulator *);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

