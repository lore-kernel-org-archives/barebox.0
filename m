Delivery-date: Fri, 19 Dec 2025 14:40:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWaj0-00DDQ3-32
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 14:40:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWaj0-0001vh-AR
	for lore@pengutronix.de; Fri, 19 Dec 2025 14:40:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=x7QX3exYryuv9hkAASHFxnQotoKeP04OEIA8lcRHraM=; b=KuZDEDwzqT4+C2O6tKmvLmwlDO
	9hdCJVXOfexDkh8PmRFkUCDsbPZSI0RkDTeGconUcpstFkLJjD3hIgYKuHf4X5DO3Qk5EoJi4DSam
	eOXxxSyRRAAJQ0Hv0mnpU2dcSk5qYFqF/meUVOu4aQHzbxnTVAlekSm6N/xsHcdo5M7HVHeT6r9KC
	u5x60ZHZuC/LnO08SoXhO3wrcFnmOk4MR2B9aPs0VUWYZwXjTI/qo3g0dtkuPMNnff1jirqRldrSU
	2asoWzhL5+f6H2M+QlL5XuFhLZRw0jaeJ8+d9NGeBo/jV6uqk7v17hUXaxeBnsAgmUP+JDXzd95qd
	gGf6UEkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWaiE-0000000AMYa-3Blr;
	Fri, 19 Dec 2025 13:40:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWai8-0000000AMUx-0Wn1
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 13:40:03 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vWai4-0001XS-4p; Fri, 19 Dec 2025 14:39:56 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Fri, 19 Dec 2025 14:39:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251219-v2025-11-0-topic-imx6-field-return-v4-5-57eec237ceaf@pengutronix.de>
References: <20251219-v2025-11-0-topic-imx6-field-return-v4-0-57eec237ceaf@pengutronix.de>
In-Reply-To: <20251219-v2025-11-0-topic-imx6-field-return-v4-0-57eec237ceaf@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>, Lucas Stach <l.stach@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_054000_177421_F088BAEE 
X-CRM114-Status: GOOD (  14.47  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v4 5/5] commands: hab: extend by field_return fuse burn
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Extend hab command with an additional parameter to burn the field return
fuse.
Since there is now a convenient way to burn the field return fuse, give
a hint at the Kconfig option about this, as it already describes what to
do in order to burn the fuse to make it complete.

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig |  2 ++
 commands/hab.c            | 24 ++++++++++++++++++++----
 2 files changed, 22 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 819a753240..7cc34fab95 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -880,6 +880,8 @@ config HABV4_CSF_UNLOCK_UID
 	  So this value have to be set:
 	    - 0x00, 0x11, 0x22, 0x33, 0x44, 0x55, 0x66, 0x77
 
+	  Afterwards, the `hab -p -r` command can be used to burn the fuse.
+
 config HAB_CERTS_ENV
 	depends on HAB
 	bool "Specify certificates in environment"
diff --git a/commands/hab.c b/commands/hab.c
index 8ae943a4c8..df045df470 100644
--- a/commands/hab.c
+++ b/commands/hab.c
@@ -16,9 +16,9 @@ static int do_hab(int argc, char *argv[])
 	char *srkhashfile = NULL, *srkhash = NULL;
 	unsigned flags = 0;
 	u8 srk[SRK_HASH_SIZE];
-	int lockdown = 0, info = 0;
+	int lockdown = 0, info = 0, field_return = 0;
 
-	while ((opt = getopt(argc, argv, "s:fpx:li")) > 0) {
+	while ((opt = getopt(argc, argv, "s:fpx:lir")) > 0) {
 		switch (opt) {
 		case 's':
 			srkhashfile = optarg;
@@ -38,12 +38,15 @@ static int do_hab(int argc, char *argv[])
 		case 'i':
 			info = 1;
 			break;
+		case 'r':
+			field_return = 1;
+			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
 	}
 
-	if (!info && !lockdown && !srkhashfile && !srkhash) {
+	if (!info && !lockdown && !srkhashfile && !srkhash && !field_return) {
 		printf("Nothing to do\n");
 		return COMMAND_ERROR_USAGE;
 	}
@@ -94,7 +97,19 @@ static int do_hab(int argc, char *argv[])
 		printf("Device successfully locked down\n");
 	}
 
-	return 0;
+	if (field_return) {
+		ret = imx_hab_field_return(flags & IMX_SRK_HASH_WRITE_PERMANENT);
+		if (ret == -EINVAL && IS_ENABLED(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN))
+			printf("Field-return burn failed, check HABV4_CSF_UNLOCK_UID!\n");
+		else if (ret == -EINVAL && !IS_ENABLED(CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN))
+			printf("Field-return burn failed because CONFIG_HABV4_CSF_UNLOCK_FIELD_RETURN=n\n");
+		else if (ret)
+			printf("Field-return burn failed\n");
+		else
+			printf("Field return fuse successfully burnt\n");
+	}
+
+	return ret;
 }
 
 BAREBOX_CMD_HELP_START(hab)
@@ -105,6 +120,7 @@ BAREBOX_CMD_HELP_OPT ("-x <sha256>",  "Burn Super Root Key hash from hex string"
 BAREBOX_CMD_HELP_OPT ("-i",  "Print HAB info")
 BAREBOX_CMD_HELP_OPT ("-f",  "Force. Write even when a key is already written")
 BAREBOX_CMD_HELP_OPT ("-l",  "Lockdown device. Dangerous! After executing only signed images can be booted")
+BAREBOX_CMD_HELP_OPT ("-r",  "Field Return. Dangerous! Access to device keys will be disabled forever")
 BAREBOX_CMD_HELP_OPT ("-p",  "Permanent. Really burn fuses. Be careful!")
 BAREBOX_CMD_HELP_END
 

-- 
2.47.3



