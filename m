Delivery-date: Fri, 04 Apr 2025 20:24:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0liE-008MHE-1P
	for lore@lore.pengutronix.de;
	Fri, 04 Apr 2025 20:24:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0liD-0008Kj-O0
	for lore@pengutronix.de; Fri, 04 Apr 2025 20:24:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nouUtcZ1dC0WlCG/V71KIcTUGQbo93urET3etGUeNrs=; b=ixRzuu54Ae44JG/gUQfiHGdg8z
	TbGMHP7pQZBjutuzDR5rYBqffDuOWzwMyAn1qj3gg5wkPgUM5mOql1jQqVPy0FWJAuRs+iWIRLZ58
	erHic6JWXCPSLtDCP8be87SvXDvNdpQpFHM5ZiPzhAOHu7wmxYvxpvrw+TcMZxJLdFq0ppD+Kcywx
	BqqEWFAYGTHVmqEOwQLzOsLh2VVXEOgAgsctanzMVD+iuy3joDCioMWjtLhCKaQbxU+6aYfIlzTIs
	YHAVnEvSV48WPATOLQfGukhCaYo+nLJYjvsrQmMFXo5w6dGR1b9bNYqM8L2gLq4lGiVHExPn/hlUM
	Zu5pby+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0lhn-0000000CWd1-34ZP;
	Fri, 04 Apr 2025 18:23:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0lhk-0000000CWbY-0y8m
	for barebox@lists.infradead.org;
	Fri, 04 Apr 2025 18:23:49 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lhi-00086y-Vi; Fri, 04 Apr 2025 20:23:46 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lhi-003JFW-2Z;
	Fri, 04 Apr 2025 20:23:46 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u0lhi-00CaV2-2H;
	Fri, 04 Apr 2025 20:23:46 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  4 Apr 2025 20:23:45 +0200
Message-Id: <20250404182345.2999795-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250404182345.2999795-1-a.fatoum@pengutronix.de>
References: <20250404182345.2999795-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250404_112348_268574_B3D64483 
X-CRM114-Status: GOOD (  15.51  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/3] commands: devlookup: add option to print kernel root option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There exists currently no way to view the kernel root option that
barebox would generate when instructed to via global.bootm.root_dev,
but without actually mounting the file system.

Add a new -k option that can print this. This can be useful in scripts
that want to fixup the root line, so it's interpreted by the rdinit, but
not by the kernel.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/devlookup.c | 38 ++++++++++++++++++++++++++++----------
 1 file changed, 28 insertions(+), 10 deletions(-)

diff --git a/commands/devlookup.c b/commands/devlookup.c
index 4a2c9b773661..0d4c6e808b60 100644
--- a/commands/devlookup.c
+++ b/commands/devlookup.c
@@ -8,26 +8,36 @@
 #include <linux/stat.h>
 #include <linux/ctype.h>
 #include <environment.h>
+#include <block.h>
 
 static int do_devlookup(int argc, char *argv[])
 {
 	const char *variable = NULL, *devicefile, *paramname;
 	struct cdev *cdev;
 	int opt, ret;
+	bool kernelopt = false;
+	const char *val;
+	char *buf = NULL;
 
-	while ((opt = getopt(argc, argv, "v:")) > 0) {
+	while ((opt = getopt(argc, argv, "v:k")) > 0) {
 		switch(opt) {
 		case 'v':
 			variable = optarg;
 			break;
+		case 'k':
+			kernelopt = true;
+			break;
 		}
 	}
 
-	if (argc - optind == 0 || argc - optind > 2)
+	argv += optind;
+	argc -= optind;
+
+	if (argc == 0 || argc > 2 || (kernelopt && argc != 1))
 		return COMMAND_ERROR_USAGE;
 
-	devicefile = argv[optind];
-	paramname  = argv[optind + 1];
+	devicefile = argv[0];
+	paramname  = argv[1];
 
 	devicefile = devpath_to_name(devicefile);
 
@@ -43,11 +53,16 @@ static int do_devlookup(int argc, char *argv[])
 		goto out;
 	}
 
-	if (paramname)
-		ret = cmd_export_val(variable, dev_get_param(cdev->dev, paramname));
+	if (kernelopt)
+		val = buf = cdev_get_linux_rootarg(cdev);
+	else if (paramname)
+		val = dev_get_param(cdev->dev, paramname);
 	else
-		ret = cmd_export_val(variable, dev_name(cdev->dev));
+		val = dev_name(cdev->dev);
+
+	ret = cmd_export_val(variable, val);
 out:
+	free(buf);
 	cdev_close(cdev);
 
 	return ret;
@@ -56,14 +71,17 @@ static int do_devlookup(int argc, char *argv[])
 BAREBOX_CMD_HELP_START(devlookup)
 BAREBOX_CMD_HELP_TEXT("Detects the device behind a device file and outputs it,")
 BAREBOX_CMD_HELP_TEXT("unless a second argument is given. In that case the device")
-BAREBOX_CMD_HELP_TEXT("parameter with that name is looked up. Specifying -v VARIABLE")
-BAREBOX_CMD_HELP_TEXT("will write output to VARIABLE instead of printing it")
+BAREBOX_CMD_HELP_TEXT("parameter with that name is looked up.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-v",  "write output to VARIABLE instead of printing it")
+BAREBOX_CMD_HELP_OPT ("-k",  "output kernel rootarg line")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(devlookup)
 	.cmd		= do_devlookup,
 	BAREBOX_CMD_DESC("look up device behind device file and its parameters")
-	BAREBOX_CMD_OPTS("[-v VAR] /dev/DEVICE [parameter]")
+	BAREBOX_CMD_OPTS("[-v VAR] [-k] /dev/DEVICE [parameter]")
 	BAREBOX_CMD_GROUP(CMD_GRP_SCRIPT)
 	BAREBOX_CMD_HELP(cmd_devlookup_help)
 BAREBOX_CMD_END
-- 
2.39.5



