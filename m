Delivery-date: Fri, 20 Mar 2026 07:45:36 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3Tbz-002wBF-37
	for lore@lore.pengutronix.de;
	Fri, 20 Mar 2026 07:45:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w3Tby-0003R6-Rt
	for lore@pengutronix.de; Fri, 20 Mar 2026 07:45:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QPxaEKCWzTImgeqPfIGUIP6LMBLuc9Yd0L0+JxfwkEU=; b=snkgSiY3VKmiHjX14h0gx+bvGY
	qDPDxyPBRZU4koYZSnYU0PzyscLxojK0RDrGhOJX1/hEYsJcWYCxmYHQbIvg8PPIZCSrnLgSLygkK
	3VgKHafxt9tyLunmigwU0OWOz3aHP+fzL3d3w3ZEgtprX9SBdEE0ELBW10eTV5bllBBT70C/Ut6y2
	nCAM9E5Mk5xOmEK5s/LuJhdq2L4oQiJC4HbkgtgvXiO2vfckwbq1wVmRsXGJGn3T6MAOadkTCAebW
	ED5qWj5teghMSiHD2SZoZ337+00Or3fZUyftqGMSqspFGZm2t8KPe6eykpNtx/j89Uy6ssTBv1I8P
	67gXTuKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TbY-0000000CBvb-2QHp;
	Fri, 20 Mar 2026 06:45:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TbW-0000000CBtY-3aFX
	for barebox@bombadil.infradead.org;
	Fri, 20 Mar 2026 06:45:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=QPxaEKCWzTImgeqPfIGUIP6LMBLuc9Yd0L0+JxfwkEU=; b=jnDdK0OqJ3yQChFIiuCj99xja0
	Jz1zwErqe0h84e7HaB+QxUuuzyVg5Ex2FwhYmt7Hv1tHwcwoPX/URIlemlgna5b1IutoR7t7FumgU
	FOKDwfGFQa4sfyvzALzgBtKRPX/28c4Si/P3daiO+VDL4bK0XZIaodCizP+RHTGdL3TEbwAhIsUIB
	OoFbHvIpyzcBlfAYLDV70nqTKIo0l0I5fqaAstac/myyas6eFTze8MLWGebJeezKzDHJZqYuZMFFV
	z7yg5m3LH4U6mL82KTQM6RMrIvwkISmQc4Oi+eko9aP0NN9r6JqjskXXHwOWmQtye4h0ZseHkawpn
	hdONOHKA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w3TbS-0000000F0Yg-2uXg
	for barebox@lists.infradead.org;
	Fri, 20 Mar 2026 06:45:04 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w3TbQ-00033a-60; Fri, 20 Mar 2026 07:45:00 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 20 Mar 2026 07:44:54 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260320-v2026-02-0-topic-sconfig_console-v4-7-ac93d797f8cf@pengutronix.de>
References: <20260320-v2026-02-0-topic-sconfig_console-v4-0-ac93d797f8cf@pengutronix.de>
In-Reply-To: <20260320-v2026-02-0-topic-sconfig_console-v4-0-ac93d797f8cf@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260320_064503_374150_8FE122F3 
X-CRM114-Status: GOOD (  14.61  )
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
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 7/7] security: kernel_pinctrl: fixup pinctrl in kernel
 dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Going through the kernel dts and replacing
barebox,policy-<active_policy> with default in order to change pinctrl
not only for barebox, but also for kernel when booting with security
profiles.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 security/Makefile         |  1 +
 security/kernel_pinctrl.c | 65 +++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 66 insertions(+)

diff --git a/security/Makefile b/security/Makefile
index 1096cbfb9b..2e8cdfe7c2 100644
--- a/security/Makefile
+++ b/security/Makefile
@@ -2,6 +2,7 @@
 
 obj-$(CONFIG_SECURITY_POLICY)		+= policy.o
 obj-$(CONFIG_SECURITY_POLICY_NAMES)	+= sconfig_names.o
+obj-$(CONFIG_SECURITY_POLICY_PINCTRL)	+= kernel_pinctrl.o
 obj-$(CONFIG_CRYPTO_KEYSTORE)	+= keystore.o
 obj-$(CONFIG_JWT)		+= jwt.o
 obj-pbl-$(CONFIG_HAVE_OPTEE)	+= optee.o
diff --git a/security/kernel_pinctrl.c b/security/kernel_pinctrl.c
new file mode 100644
index 0000000000..5ab17fbfd5
--- /dev/null
+++ b/security/kernel_pinctrl.c
@@ -0,0 +1,65 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+#include <common.h>
+#include <linux/printk.h>
+#include <pinctrl.h>
+#include <security/policy.h>
+#include <security/config.h>
+
+/* Maximun number of names to be available in pinctrl-names. Best guess.*/
+#define MAX_NAMES	10
+
+
+/**
+ * Replace 'default' with 'old_default' and 'barebox,policy-<active_policy>-default'
+ * with 'default', if both are found in pinctrl.
+ * Same for every other name, that starts with barebox,policy-<active_policy>- and
+ * has another name without the prefix.
+ */
+static int kernel_of_fixup_pinctrl(struct device_node *root, void *unused)
+{
+	char *basename;
+	int base_len;
+	struct device_node *node;
+	const struct security_policy *active_policy = security_policy_get_active();
+
+	if (!active_policy || !active_policy->name)
+		return -EINVAL;
+	basename = basprintf("barebox,policy-%s-", active_policy->name);
+	base_len = strlen(basename);
+
+	list_for_each_entry(node, &root->list, list) {
+		const char *names[MAX_NAMES];
+		int num_read;
+		bool changed = false;
+
+		num_read = of_property_read_string_array(node, "pinctrl-names", names, MAX_NAMES);
+
+		for (int i = 0; i < num_read; i++) {
+			if (strncmp(basename, names[i], base_len) == 0) {
+				const char *name = names[i] + base_len;
+
+				for (int ii = 0; ii < num_read; ii++) {
+					if (strcmp(name, names[i]) == 0) {
+						/* this never gets freed,
+						 * but we are starting the kernel,
+						 * so there should be no problem.
+						 */
+						names[ii] = basprintf("old_%s", name);
+						names[i] = name;
+					}
+				}
+			}
+		}
+		if (changed)
+			of_property_write_string_array(node, "pinctrl-names", names, num_read);
+	}
+	free(basename);
+	return 0;
+}
+
+static int policy_console_pinctrl_init(void)
+{
+	return of_register_fixup(kernel_of_fixup_pinctrl, NULL);
+}
+late_initcall(policy_console_pinctrl_init);

-- 
2.47.3



