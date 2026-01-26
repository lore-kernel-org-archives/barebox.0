Delivery-date: Mon, 26 Jan 2026 11:56:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkKGT-005W3K-1E
	for lore@lore.pengutronix.de;
	Mon, 26 Jan 2026 11:56:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkKGS-00044Y-B2
	for lore@pengutronix.de; Mon, 26 Jan 2026 11:56:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ZrDkjhSuTjpW1W1Sh4Hzd6LHr3om2V4C2+/dSM1YoWA=; b=NZ1BUiznn1+gYxsCq/8uF3kN1n
	O5tI3Dx08O5XyENS4snH+f0xmzAbBnQJsOLQ2RnwREjm3EAB0oqIszW1PXNzael0wqYTyYAP8EZno
	pv2cbP5oibapLMD8WLZOviti91HRgUpzqInvTEZKKipCpZqu3e8fArNv/R72ZjV7zcihN9kK34g65
	Q6j0cf7OTWIOmTrD6A8ZOThbs/SR69wezjhRJ5lP5ray4UgjeqHsnNhtsBtW6j/K0FzZPtvDFSPf4
	HYOEByjztU+zrV3QeghWFfm3hZiaSfuJFFcOAFfryT3CWK9Dwd+/uFXU1Uc/CnMOgb8Nw+bihfRAM
	K+LvU20Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKG3-0000000CMrD-38vT;
	Mon, 26 Jan 2026 10:55:47 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKG2-0000000CMr5-0y1v
	for barebox@bombadil.infradead.org;
	Mon, 26 Jan 2026 10:55:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=ZrDkjhSuTjpW1W1Sh4Hzd6LHr3om2V4C2+/dSM1YoWA=; b=UvysZyL+jkgCSubhQEQkcdO9dR
	rYJpijFK3mGYj27heogyLn5TiW6T0UUCRI1ndzRI9aKAxPTmZ2Ij+KKTZqCpIhXqbr46MzubgUYD+
	8jxanv4P7MpZBWKCnCSZz7zqYtD8tPUy8OQ8s4cZVTbsVEsf6b9CsJbngZ8MoHwtO7Gr6ZsD5bh95
	9orS8Z5hLiduP3kTKb2twu8Aa233D1pgM74+CrO9kGkTGmycmImQ0UeC4Fb884YnQXqdXdftsJhLk
	Pps5kACnzg3+Q/yJVi6YhFgPLD1Mabyh4KfFtKhceMlQbwcH5OHhNpnbK3vqJV4eDNn/gLo25k56/
	9Gu5x78w==;
Received: from metis.whiteo.stw.pengutronix.de ([185.203.201.7])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkKFz-000000055IN-1c4W
	for barebox@lists.infradead.org;
	Mon, 26 Jan 2026 10:55:45 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkKFy-0003xV-SL; Mon, 26 Jan 2026 11:55:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkKFz-002ZEn-1B;
	Mon, 26 Jan 2026 11:55:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vkKFz-00000007oFy-0QD9;
	Mon, 26 Jan 2026 11:55:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 26 Jan 2026 11:55:41 +0100
Message-ID: <20260126105541.1859911-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260126_105543_685040_AE8C4F04 
X-CRM114-Status: GOOD (  14.56  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] commands: bootm: add proper support for boot script calling bootm
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If a boot script calls bootm and it returns whether due to error or dry
run, bootscript_boot() will just call bootm again leading to confusing
output.

Let's detect whether bootm was called and skip calling it again in that
case. This will allow boot scripts to do cleanup in future.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/bootm.c  | 9 +++++++++
 common/boot.c     | 7 +++++++
 include/command.h | 9 +++++++++
 3 files changed, 25 insertions(+)

diff --git a/commands/bootm.c b/commands/bootm.c
index 3936623b5199..24bce5ce6b64 100644
--- a/commands/bootm.c
+++ b/commands/bootm.c
@@ -36,6 +36,13 @@
 #define BOOTM_OPTS BOOTM_OPTS_COMMON
 #endif
 
+static unsigned command_attempts;
+
+unsigned bootm_command_attempts(void)
+{
+	return command_attempts;
+}
+
 static int do_bootm(int argc, char *argv[])
 {
 	int opt;
@@ -44,6 +51,8 @@ static int do_bootm(int argc, char *argv[])
 
 	bootm_data_init_defaults(&data);
 
+	command_attempts++;
+
 	while ((opt = getopt(argc, argv, BOOTM_OPTS)) > 0) {
 		switch(opt) {
 		case 'c':
diff --git a/common/boot.c b/common/boot.c
index af07d218f059..78d990f1617e 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -75,6 +75,7 @@ struct bootentry_script {
 static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 {
 	struct bootentry_script *bs = container_of(entry, struct bootentry_script, entry);
+	int bootm_nattempts;
 	int ret;
 
 	struct bootm_data backup = {}, data = {};
@@ -89,12 +90,18 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 	globalvar_add_simple("linux.bootargs.dyn.ip", NULL);
 	globalvar_add_simple("linux.bootargs.dyn.root", NULL);
 
+	bootm_nattempts = bootm_command_attempts();
+
 	ret = run_command(bs->scriptpath);
 	if (ret) {
 		pr_err("Running script '%s' failed: %pe\n", bs->scriptpath, ERR_PTR(ret));
 		goto out;
 	}
 
+	/* No point in repeating bootm if script already called it */
+	if (bootm_nattempts != bootm_command_attempts())
+		goto out;
+
 	bootm_data_init_defaults(&data);
 
 	if (verbose)
diff --git a/include/command.h b/include/command.h
index 378e1458a589..fb140cb8e250 100644
--- a/include/command.h
+++ b/include/command.h
@@ -122,4 +122,13 @@ static const __maybe_unused char cmd_##_name##_help[] =
 
 int register_command(struct command *);
 
+#ifdef CONFIG_CMD_BOOTM
+unsigned bootm_command_attempts(void);
+#else
+static inline unsigned bootm_command_attempts(void)
+{
+	return 0;
+}
+#endif
+
 #endif	/* __COMMAND_H */
-- 
2.47.3



