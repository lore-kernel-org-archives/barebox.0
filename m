Delivery-date: Wed, 16 Jun 2021 08:34:51 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltP8V-0000FC-A3
	for lore@lore.pengutronix.de; Wed, 16 Jun 2021 08:34:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltP8T-0000Et-8U
	for lore@pengutronix.de; Wed, 16 Jun 2021 08:34:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O92Ry9191wqZoBQjmTGj700UumnQoGOIQBBLau3Cl0A=; b=mAMv+aOs1EG16A
	ceVN9OfqGTpSmsyaHZsH0lrpaZaViGJ9l5wykMs/fCMuhdCTOo8Gb5AizeAFA3tRfPNfimxdUyie+
	V94wFqPIDsSXEkNdlCzvlRgBOgqhOFT9bmpYEHSodWHpbVGrwRjAq3wQzNSGDJHjSdvB/qmZUswIg
	QpaSZu/b17Rbu47KpKJ8EplVZt9b7Y4uFqfITJfc8hXUTMWU4MmPyUMveVG51Hyd+4vqvreCeZhVH
	V+otsWqYeZKd5UmCSnp6U4ld7rgMeeYIug6Qi1wYYg4oNb27LYBfJKaSUUdeM3wK1fIopLbN3Q4gO
	WtYB1351gg4G+wAFhcmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltP72-0055uD-NB; Wed, 16 Jun 2021 06:33:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltP6m-0055o5-54
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 06:33:07 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ltP6i-0008If-9M
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:33:00 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1ltP6h-00049s-LP
 for barebox@lists.infradead.org; Wed, 16 Jun 2021 08:32:59 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 16 Jun 2021 08:32:44 +0200
Message-Id: <20210616063246.14900-8-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
References: <20210616063246.14900-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210615_233304_294265_88CF28F9 
X-CRM114-Status: GOOD (  15.75  )
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
Subject: [PATCH v4 08/10] commands: firmwareload: allow loading firmware from
 dt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

firmwareload can only load a bitstream into an FPGA without any
knowledge of possible additional needs (e.g. FPGA bridges).

These are defined in the fpga-region nodes in the devicetree. The
fpga-region describes the layout of the FPGA and the bridges it needs
en/disabled.

Add an option to let firmwareload go via the oftree route and load the
firmware that way.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

---

v2->v3 - remove unused arg 'o'
       - use xstrdup()
---
 commands/firmwareload.c | 39 +++++++++++++++++++++++++++++++++------
 1 file changed, 33 insertions(+), 6 deletions(-)

diff --git a/commands/firmwareload.c b/commands/firmwareload.c
index b735088f6117..c2a017c45479 100644
--- a/commands/firmwareload.c
+++ b/commands/firmwareload.c
@@ -5,18 +5,35 @@
 #include <command.h>
 #include <getopt.h>
 #include <firmware.h>
+#include <of.h>
 
 static int do_firmwareload(int argc, char *argv[])
 {
-	int ret, opt;
+	int opt;
 	const char *name = NULL, *firmware;
 	struct firmware_mgr *mgr;
+	char *path = NULL;
+	char *search_path = NULL;
+	char *compatible = NULL;
+	int oftree = 0;
 
-	while ((opt = getopt(argc, argv, "t:l")) > 0) {
+	while ((opt = getopt(argc, argv, "t:c:S:D:l")) > 0) {
 		switch (opt) {
 		case 't':
 			name = optarg;
 			break;
+		case 'c':
+			compatible = xstrdup(optarg);
+			oftree = 1;
+			break;
+		case 'S':
+			search_path = xstrdup(optarg);
+			oftree = 1;
+			break;
+		case 'D':
+			path = xstrdup(optarg);
+			oftree = 1;
+			break;
 		case 'l':
 			firmwaremgr_list_handlers();
 			return 0;
@@ -25,11 +42,20 @@ static int do_firmwareload(int argc, char *argv[])
 		}
 	}
 
-	if (!(argc - optind))
+	if (!oftree && !(argc - optind))
 		return COMMAND_ERROR_USAGE;
 
 	firmware = argv[optind];
 
+	if (oftree) {
+		if (!search_path && !firmware) {
+			printf("Provide at least a file to load or a search path (-S)\n");
+			return 1;
+		}
+
+		return of_firmware_load_file(path, compatible, search_path, firmware);
+	}
+
 	mgr = firmwaremgr_find(name);
 
 	if (!mgr) {
@@ -38,14 +64,15 @@ static int do_firmwareload(int argc, char *argv[])
 		return 1;
 	}
 
-	ret = firmwaremgr_load_file(mgr, firmware);
-
-	return ret;
+	return firmwaremgr_load_file(mgr, firmware);
 }
 
 BAREBOX_CMD_HELP_START(firmwareload)
 BAREBOX_CMD_HELP_TEXT("Options:")
 BAREBOX_CMD_HELP_OPT("-t <target>", "define the firmware handler by name")
+BAREBOX_CMD_HELP_OPT("-c <compatible>", "type of firmware device (e.g. 'fpga-region')")
+BAREBOX_CMD_HELP_OPT("-D <path>", "load firmware to oftree path")
+BAREBOX_CMD_HELP_OPT("-S <path>", "load firmware using this search path")
 BAREBOX_CMD_HELP_OPT("-l\t", "list devices capable of firmware loading")
 BAREBOX_CMD_HELP_END
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

