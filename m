Delivery-date: Wed, 18 Mar 2026 10:22:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2n6r-0028B4-07
	for lore@lore.pengutronix.de;
	Wed, 18 Mar 2026 10:22:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w2n6o-0004sg-VC
	for lore@pengutronix.de; Wed, 18 Mar 2026 10:22:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PNL1Mb7G5Bd7QN6F2gYq7EF3sJOc1H/1TL26tyncWWU=; b=ALySD5fay2LwK0+hvsqHD9YuYt
	XLWhIg28Ol7BRoylchaoruSQx4JymExW7qnd/JNow442zDc1DfocSKWAYgYgUMQGoTZR0jys90Hqu
	bDhDKq+OrZsjkJ1RrTdEC2aN7778qr9oiaXimPTeREftDqGUnwqomq945hCCW01VenqNr3ostb9V4
	hQWMHp0EEPnAHjTEP7bobLZSh18WqsMnGx/b5pQS6/ijc+vWjyZ2kj1o+nftIIvG3mGCTyvAHqcQW
	ibMCAqYSK4cCymNAj5EwSOxelXYHB9f51NpmSpMR4c2rEGrLecF8gBNhvi8nQJ5IdQve/0av1+efU
	7lSCpQVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2n6T-000000087tG-1ry3;
	Wed, 18 Mar 2026 09:22:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w2n6N-000000087ol-3bjG
	for barebox@lists.infradead.org;
	Wed, 18 Mar 2026 09:22:10 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1w2n6K-0004T5-Ue; Wed, 18 Mar 2026 10:22:04 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Wed, 18 Mar 2026 10:22:00 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260318-v2026-02-0-topic-sconfig_console-v3-2-e26055294723@pengutronix.de>
References: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
In-Reply-To: <20260318-v2026-02-0-topic-sconfig_console-v3-0-e26055294723@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260318_022207_917187_10F04565 
X-CRM114-Status: GOOD (  13.21  )
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
Subject: [PATCH v3 2/5] common: bootm: add policy to commandline
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
index d43079bb81..9484539bc3 100644
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
@@ -759,6 +763,20 @@ int bootm_boot(struct bootm_data *bootm_data)
 		free(hostname_bootarg);
 	}
 
+	if (IS_ENABLED(CONFIG_SECURITY_POLICY) && bootm_data->provide_policy) {
+		char *policy_bootargs;
+
+		if (active_policy && !active_policy->name) {
+			pr_err("Providing policy is enabled but policy has no name\n");
+			ret = -EINVAL;
+			goto err_out;
+		}
+
+		policy_bootargs = basprintf("barebox.security.policy=%s", active_policy->name);
+		globalvar_add_simple("linux.bootargs.dyn.policy", policy_bootargs);
+		free(policy_bootargs);
+	}
+
 	pr_info("\nLoading %s '%s'", file_type_to_string(data->kernel_type),
 		data->os_file);
 	if (data->kernel_type == filetype_uimage &&
@@ -967,6 +985,8 @@ static int bootm_init(void)
 	globalvar_add_simple_bool("bootm.earlycon", &bootm_earlycon);
 	globalvar_add_simple_bool("bootm.provide_machine_id", &bootm_provide_machine_id);
 	globalvar_add_simple_bool("bootm.provide_hostname", &bootm_provide_hostname);
+	if (IS_ENABLED(CONFIG_SECURITY_POLICY))
+		globalvar_add_simple_bool("bootm.provide_policy", &bootm_provide_policy);
 	if (IS_ENABLED(CONFIG_BOOTM_INITRD)) {
 		globalvar_add_simple("bootm.initrd", NULL);
 		globalvar_add_simple("bootm.initrd.loadaddr", NULL);
@@ -1030,3 +1050,6 @@ BAREBOX_MAGICVAR(global.bootm.root_dev, "bootm default root device (overrides de
 BAREBOX_MAGICVAR(global.bootm.root_param, "bootm root parameter name (normally 'root' for root=/dev/...)");
 BAREBOX_MAGICVAR(global.bootm.provide_machine_id, "If true, append systemd.machine_id=$global.machine_id to Kernel command line");
 BAREBOX_MAGICVAR(global.bootm.provide_hostname, "If true, append systemd.hostname=$global.hostname to Kernel command line");
+#ifdef CONFIG_SECURITY_POLICY
+BAREBOX_MAGICVAR(global.bootm.provide_policy, "Add barebox.security.policy= option to Kernel");
+#endif
diff --git a/include/bootm.h b/include/bootm.h
index 21feb1ca98..a712010b2b 100644
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



