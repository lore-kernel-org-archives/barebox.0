Delivery-date: Fri, 10 Mar 2023 10:43:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZI5-00FvhD-Qm
	for lore@lore.pengutronix.de; Fri, 10 Mar 2023 10:43:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paZI5-0006ja-MJ
	for lore@pengutronix.de; Fri, 10 Mar 2023 10:43:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0JKJ44K/4XgQx8TIOQi5ySwtksN3jTJFvYoY/MaNFeA=; b=2vUxBmyRvKSb2Zgpdaoxt9QCBO
	Dv3Y94m5onsogNgw9hWH4zAsR22cxE5uk31NFROGaF9cQkVXMKwFY9sUVyL0qdaZDKqJs10VUjz5Q
	JZrDG1d/kNfpvG2p9MftvFeGd88zDOMnuhZNcg3xmiKlhv7ozLZR7wON3IrGf1tbawlNFEoPcDhUF
	cu1QxHBOXh0/JjluyUul1fj7Nvo5wa8LHgYPWGzsXe6WGZFVnmDrj3uJr+SjbraBpOXXYBgI54p8M
	LOpI6UoHw+bHleRc/GNMmgcxmcsLVpqJq5Mx1tgvKSoThuDVolgoHnKLZxHx0W/HF92lkXpB7OjJJ
	dwa4H1ZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZGp-00DzA8-U1; Fri, 10 Mar 2023 09:42:39 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paZGd-00Dz4o-Jw
	for barebox@lists.infradead.org; Fri, 10 Mar 2023 09:42:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGb-0006MD-KZ; Fri, 10 Mar 2023 10:42:25 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGb-003947-0x; Fri, 10 Mar 2023 10:42:25 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paZGZ-00B49y-IM; Fri, 10 Mar 2023 10:42:23 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Mar 2023 10:42:22 +0100
Message-Id: <20230310094222.2538259-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230310094222.2538259-1-s.hauer@pengutronix.de>
References: <20230310094222.2538259-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230310_014227_823533_8C520243 
X-CRM114-Status: GOOD (  16.28  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 7/7] of_overlay: Add option to apply overlay to live tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The of_overlay command currently only supports applying overlays to the
Linux device tree. Add an option to apply an overlay to the live tree.
Using this option will apply the overlay and also triggers rescanning
the device tree in case new devices have been added.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/of_overlay.c | 38 ++++++++++++++++++++++++++++++++++----
 1 file changed, 34 insertions(+), 4 deletions(-)

diff --git a/commands/of_overlay.c b/commands/of_overlay.c
index b3660b4bf1..1d68e31ef2 100644
--- a/commands/of_overlay.c
+++ b/commands/of_overlay.c
@@ -17,10 +17,20 @@ static int do_of_overlay(int argc, char *argv[])
 	struct fdt_header *fdt;
 	struct device_node *overlay;
 	size_t size;
+	bool live_tree = false;
+	int opt;
 
-	if (argc != 2)
+	if (argc < 2)
 		return COMMAND_ERROR_USAGE;
 
+	while ((opt = getopt(argc, argv, "l")) > 0) {
+		switch (opt) {
+		case 'l':
+			live_tree = true;
+			break;
+		}
+	}
+
 	fdt = read_file(argv[optind], &size);
 	if (!fdt) {
 		printf("cannot read %s\n", argv[optind]);
@@ -32,7 +42,14 @@ static int do_of_overlay(int argc, char *argv[])
 	if (IS_ERR(overlay))
 		return PTR_ERR(overlay);
 
-	ret = of_register_overlay(overlay);
+	if (live_tree) {
+		ret = of_overlay_apply_tree(of_get_root_node(), overlay);
+		if (!ret)
+			ret = of_probe();
+	} else {
+		ret = of_register_overlay(overlay);
+	}
+
 	if (ret) {
 		printf("cannot apply oftree overlay: %s\n", strerror(-ret));
 		goto err;
@@ -45,9 +62,22 @@ err:
 	return ret;
 }
 
+BAREBOX_CMD_HELP_START(of_overlay)
+BAREBOX_CMD_HELP_TEXT("Register a device tree overlay file (dtbo) with barebox.")
+BAREBOX_CMD_HELP_TEXT("By default the overlay is registered as a fixup and the")
+BAREBOX_CMD_HELP_TEXT("overlay will then be applied to the Linux device tree.")
+BAREBOX_CMD_HELP_TEXT("With -l given the overlay is applied to the barebox live")
+BAREBOX_CMD_HELP_TEXT("tree instead. This involves probing new devices added in")
+BAREBOX_CMD_HELP_TEXT("the overlay file.")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT("-l", "apply to barebox live tree")
+BAREBOX_CMD_HELP_END
+
 BAREBOX_CMD_START(of_overlay)
 	.cmd = do_of_overlay,
-	BAREBOX_CMD_DESC("register device tree overlay as fixup")
-	BAREBOX_CMD_OPTS("FILE")
+	BAREBOX_CMD_DESC("register device tree overlay")
+	BAREBOX_CMD_OPTS("[-l] FILE")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_HELP(cmd_of_overlay_help)
 BAREBOX_CMD_END
-- 
2.30.2



