Delivery-date: Mon, 05 Sep 2022 09:46:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV6oO-007ExX-2l
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 09:46:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oV6oO-0000G4-2k
	for lore@pengutronix.de; Mon, 05 Sep 2022 09:46:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=CFDpyfqbu8Oe/e1EOaau9TeC0UNX+0vAv4VwmztC1HY=; b=kQbjxkBhz+6Q0WHyzKSQyh9Qoz
	2lku+cVbSSlfxSAEbS1r0+pr1vepK8Me5lPbsVUIrV2k9CHjzM3SW1R7VP2lu0qul0Rke00HkIiIM
	fYS7SGweWimBIswClnVEUlU9hbc04VUDGnx5T8TuCxm5Xr8YSVxLtZaPUF3ci4rpwDzT8Rjay0rZA
	dcT3nuoj72fHeFJO4NoE/bab2A9jKWueGR71hckLqA0qjubdvnVl4vU9g/WAbsj/uM//bYCX6SxSX
	uJH19vhBI6+r3csRQkhxiNJQvCswb07+tidfG0k0mGUzZeISHI6Oh+hXDTo1mKP62w9Sx2+YTPNvu
	4kGWaX/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV6mm-00DYFl-Vd; Mon, 05 Sep 2022 07:44:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV6A8-00CsBr-9T
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 07:04:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV6A6-0002Sx-TP; Mon, 05 Sep 2022 09:04:50 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV6A4-0040qF-An; Mon, 05 Sep 2022 09:04:50 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV6A5-002GMy-Jh; Mon, 05 Sep 2022 09:04:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 09:04:48 +0200
Message-Id: <20220905070448.539531-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_000453_273702_EF923855 
X-CRM114-Status: GOOD (  13.71  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] commands: add pm_domain for listing power domains
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Like the regulator command, this new pm_domain command gives an easy
way for listing registered power domains and whether barebox had them
activated.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/Kconfig     |  8 ++++++++
 commands/Makefile    |  1 +
 commands/pm_domain.c | 18 ++++++++++++++++++
 drivers/base/power.c | 10 ++++++++++
 include/pm_domain.h  |  2 ++
 5 files changed, 39 insertions(+)
 create mode 100644 commands/pm_domain.c

diff --git a/commands/Kconfig b/commands/Kconfig
index 3e21dc4c0500..9894ecb9aa31 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -240,6 +240,14 @@ config CMD_REGULATOR
 	  the regulator command lists the currently registered regulators and
 	  their current state.
 
+config CMD_PM_DOMAIN
+	bool
+	depends on PM_GENERIC_DOMAINS
+	prompt "pm_domain command"
+	help
+	  The pm_domain command lists the currently registered power domains and
+	  their current state.
+
 config CMD_NVMEM
 	bool
 	depends on NVMEM
diff --git a/commands/Makefile b/commands/Makefile
index 0aae8893d696..068fbb32dad7 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -116,6 +116,7 @@ obj-$(CONFIG_CMD_READF)		+= readf.o
 obj-$(CONFIG_CMD_MENUTREE)	+= menutree.o
 obj-$(CONFIG_CMD_2048)		+= 2048.o
 obj-$(CONFIG_CMD_REGULATOR)	+= regulator.o
+obj-$(CONFIG_CMD_PM_DOMAIN)	+= pm_domain.o
 obj-$(CONFIG_CMD_LSPCI)		+= lspci.o
 obj-$(CONFIG_CMD_IMD)		+= imd.o
 obj-$(CONFIG_CMD_HWCLOCK)	+= hwclock.o
diff --git a/commands/pm_domain.c b/commands/pm_domain.c
new file mode 100644
index 000000000000..ec8b769df193
--- /dev/null
+++ b/commands/pm_domain.c
@@ -0,0 +1,18 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <command.h>
+#include <pm_domain.h>
+
+static int do_pm_domain(int argc, char *argv[])
+{
+	pm_genpd_print();
+
+	return 0;
+}
+
+BAREBOX_CMD_START(pm_domain)
+	.cmd		= do_pm_domain,
+	BAREBOX_CMD_DESC("list power domains")
+	BAREBOX_CMD_GROUP(CMD_GRP_INFO)
+BAREBOX_CMD_END
diff --git a/drivers/base/power.c b/drivers/base/power.c
index 4a206051b137..3eabf3c897b2 100644
--- a/drivers/base/power.c
+++ b/drivers/base/power.c
@@ -266,3 +266,13 @@ int genpd_dev_pm_attach(struct device_d *dev)
 	return __genpd_dev_pm_attach(dev, dev->device_node, 0, true);
 }
 EXPORT_SYMBOL_GPL(genpd_dev_pm_attach);
+
+void pm_genpd_print(void)
+{
+	struct generic_pm_domain *genpd;
+
+	printf("%-20s %6s\n", "name", "active");
+	list_for_each_entry(genpd, &gpd_list, gpd_list_node)
+		printf("%-20s %6s\n", genpd->name,
+		       genpd->status == GPD_STATE_ACTIVE ? "on" : "off");
+}
diff --git a/include/pm_domain.h b/include/pm_domain.h
index 48fd170007fd..ff1aa3751165 100644
--- a/include/pm_domain.h
+++ b/include/pm_domain.h
@@ -54,6 +54,8 @@ int pm_genpd_init(struct generic_pm_domain *genpd, void *gov, bool is_off);
 int of_genpd_add_provider_simple(struct device_node *np,
 				 struct generic_pm_domain *genpd);
 
+void pm_genpd_print(void);
+
 #else
 
 static inline int pm_genpd_init(struct generic_pm_domain *genpd,
-- 
2.30.2



