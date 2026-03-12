Delivery-date: Thu, 12 Mar 2026 10:17:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0cAx-00Alt2-2C
	for lore@lore.pengutronix.de;
	Thu, 12 Mar 2026 10:17:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w0cAv-0006QF-M9
	for lore@pengutronix.de; Thu, 12 Mar 2026 10:17:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SpX9XTYdy5tD7nErSYd1Fbp76AEjxaeAm+CVNJFm3wU=; b=KlHUcx+BPsYD/nX2QIMIokRbkj
	jaaffaWrUrZxRdxPlFX//rELKo52Xbebix9uDuHmwrT28ESQDfXzlgOL1GjD1OKL+n+v44r32ejpY
	U2oDXp0c8oOEEIJzdS7vwkfYsyWL+GpW+7PmkjJbnfCTkt5FOsy2ask3bn+lxDLilIIfN2VsOW0Uv
	4fW2y/EPTvzV3oLqRm/eudEKUXxZ9P+ne//I7spnZxq9oGtSyAsggAmk1Nj731sSUoUAgHmJIYiQT
	Jitqq6y60dXopgMDWbRuDJCb0jLdSt5VLIqV5946Y2ds3ZrT5RTXEtYg7OkcelHa4eKCa3os9AUob
	wrB6iJuw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0cAJ-0000000DhPo-3359;
	Thu, 12 Mar 2026 09:17:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w0cAD-0000000DhNA-13UT
	for barebox@lists.infradead.org;
	Thu, 12 Mar 2026 09:17:07 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w0cA9-00066g-RT; Thu, 12 Mar 2026 10:17:01 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Thu, 12 Mar 2026 10:16:42 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260312-v2026-02-0-topic-sconfig_console-v1-1-4c3fccafab1e@pengutronix.de>
References: <20260312-v2026-02-0-topic-sconfig_console-v1-0-4c3fccafab1e@pengutronix.de>
In-Reply-To: <20260312-v2026-02-0-topic-sconfig_console-v1-0-4c3fccafab1e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260312_021705_296615_68F6A719 
X-CRM114-Status: GOOD (  13.04  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/4] common: bootm: add policy to commandline
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If security policies are used, then the variable bootm.provide_policy
can be set to automatically append the currently selected security
policy to the kernel commandline with the prefix
barebox.security.policy=
This allows the the system to behave different based on the selected
security policy.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 common/bootm.c  | 23 +++++++++++++++++++++++
 include/bootm.h |  5 +++++
 2 files changed, 28 insertions(+)

diff --git a/common/bootm.c b/common/bootm.c
index 6318509884..cd90aa81e1 100644
--- a/common/bootm.c
+++ b/common/bootm.c
@@ -22,6 +22,7 @@
 #include <uncompress.h>
 #include <zero_page.h>
 #include <security/config.h>
+#include <security/policy.h>
 
 static LIST_HEAD(handler_list);
 static struct sconfig_notifier_block sconfig_notifier;
@@ -75,6 +76,7 @@ static int bootm_dryrun;
 static int bootm_earlycon;
 static int bootm_provide_machine_id;
 static int bootm_provide_hostname;
+static int bootm_provide_policy;
 static int bootm_verbosity;
 static int bootm_efi_mode = BOOTM_EFI_AVAILABLE;
 
@@ -97,6 +99,7 @@ void bootm_data_init_defaults(struct bootm_data *data)
 	data->appendroot = bootm_appendroot;
 	data->provide_machine_id = bootm_provide_machine_id;
 	data->provide_hostname = bootm_provide_hostname;
+	data->provide_policy = bootm_provide_policy;
 	data->verbose = bootm_verbosity;
 	data->dryrun = bootm_dryrun;
 	data->efi_boot = bootm_efi_mode;
@@ -118,6 +121,7 @@ void bootm_data_restore_defaults(const struct bootm_data *data)
 	bootm_appendroot = data->appendroot;
 	bootm_provide_machine_id = data->provide_machine_id;
 	bootm_provide_hostname = data->provide_hostname;
+	bootm_provide_policy = data->provide_policy;
 	bootm_verbosity = data->verbose;
 	bootm_dryrun = data->dryrun;
 	bootm_efi_mode = data->efi_boot;
@@ -712,6 +716,20 @@ int bootm_boot(struct bootm_data *bootm_data)
 		free(hostname_bootarg);
 	}
 
+	if (IS_ENABLED(CONFIG_SECURITY_POLICY) && bootm_data->provide_policy) {
+		char *policy_bootargs;
+
+		if (!active_policy->name) {
+			pr_err("Providing policy is enabled but policy has no name\n");
+			ret = -EINVAL;
+			goto err_out;
+		}
+
+		policy_bootargs = basprintf("barebox.security.policy=%s", active_policy->name);
+		globalvar_add_simple("linux.bootargs.policy", policy_bootargs);
+		free(policy_bootargs);
+	}
+
 	pr_info("\nLoading %s '%s'", file_type_to_string(os_type),
 		data->os_file);
 	if (os_type == filetype_uimage &&
@@ -918,6 +936,8 @@ static int bootm_init(void)
 	globalvar_add_simple_bool("bootm.earlycon", &bootm_earlycon);
 	globalvar_add_simple_bool("bootm.provide_machine_id", &bootm_provide_machine_id);
 	globalvar_add_simple_bool("bootm.provide_hostname", &bootm_provide_hostname);
+	if (IS_ENABLED(CONFIG_SECURITY_POLICY))
+		globalvar_add_simple_bool("bootm.provide_policy", &bootm_provide_policy);
 	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
 		globalvar_add_simple("bootm.initrd", NULL);
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
@@ -981,3 +1001,6 @@ BAREBOX_MAGICVAR(global.bootm.root_dev, "bootm default root device (overrides de
 BAREBOX_MAGICVAR(global.bootm.root_param, "bootm root parameter name (normally 'root' for root=/dev/...)");
 BAREBOX_MAGICVAR(global.bootm.provide_machine_id, "If true, append systemd.machine_id=$global.machine_id to Kernel command line");
 BAREBOX_MAGICVAR(global.bootm.provide_hostname, "If true, append systemd.hostname=$global.hostname to Kernel command line");
+#ifdef CONFIG_SECURITY_POLICY
+BAREBOX_MAGICVAR(global.bootm.provide_policy, "Add barebox.security.policy= option to Kernel");
+#endif
diff --git a/include/bootm.h b/include/bootm.h
index e56a999f0b..1c3bd03d38 100644
--- a/include/bootm.h
+++ b/include/bootm.h
@@ -46,6 +46,11 @@ struct bootm_data {
 	 * of global.hostname to Kernel.
 	 */
 	bool provide_hostname;
+	/*
+	 * provide_policy - if true, try to add barebox.security.policy= with
+	 * with value of currently selected policy
+	 */
+	bool provide_policy;
 	enum bootm_efi_mode efi_boot;
 	unsigned long initrd_address;
 	unsigned long os_address;

-- 
2.47.3



