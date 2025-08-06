Delivery-date: Wed, 06 Aug 2025 16:04:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujelC-007eyI-2N
	for lore@lore.pengutronix.de;
	Wed, 06 Aug 2025 16:04:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujelC-00049u-41
	for lore@pengutronix.de; Wed, 06 Aug 2025 16:04:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4YjCtQJ6gPUB4MnSzc3xfATkYmlIRi05t0ztgVVIJVw=; b=sqKvd27yJDjS4Xc426gfJLwI5y
	RRvOsoYiTSPhQb9QGAiCOkOdwXmiiOmQJzVNzTBGfWz4fLvPfV5B2vcdaVhNNFjXiFIp6TNEB6yET
	oSSgNzj/7ha8lNomIjBagzJ0XtSlNHul+9iTd/e9IeFMLQFIY9yKCJCjKgj8leQ/vfZYtUg04+0Ow
	Mdgb2pYTexoyGL4ViEPAN1sKzIGRnMiTq6XyOWe3BkSqA+gcekv6tPzxMqDrgXvpiimimytw/261C
	NxUzmFMBXWrD+bALciPmHVhB9xWg2KHidEWiKcNIYzB1POfxStcwEJGbpURZNK/xECgbElBMe0Zqy
	i05riN6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujeko-0000000FNgD-0UIX;
	Wed, 06 Aug 2025 14:04:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujegZ-0000000FMt6-2nDB
	for barebox@lists.infradead.org;
	Wed, 06 Aug 2025 14:00:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1ujegY-0002eR-E4; Wed, 06 Aug 2025 16:00:06 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed,  6 Aug 2025 16:00:03 +0200
Message-Id: <20250806140005.2866622-3-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250806140005.2866622-1-a.fatoum@barebox.org>
References: <20250806140005.2866622-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250806_070007_701688_F537B142 
X-CRM114-Status: UNSURE (   9.33  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/5] commands: introduce new security command group
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Instead of putting security-related commands into misc, let's give them
their own group.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 commands/avb_pvalue.c | 2 +-
 commands/blobgen.c    | 2 +-
 commands/help.c       | 1 +
 commands/keystore.c   | 2 +-
 include/command.h     | 3 ++-
 5 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/commands/avb_pvalue.c b/commands/avb_pvalue.c
index d91c311de5ec..70d39b8e84f8 100644
--- a/commands/avb_pvalue.c
+++ b/commands/avb_pvalue.c
@@ -134,5 +134,5 @@ BAREBOX_CMD_START(avb_pvalue)
 	BAREBOX_CMD_DESC("AVB persistent variable store")
 	BAREBOX_CMD_OPTS("[-rwf] [VARNAME/VALUE]")
 	BAREBOX_CMD_HELP(cmd_avb_pvalue_help)
-	BAREBOX_CMD_GROUP(CMD_GRP_CONSOLE)
+	BAREBOX_CMD_GROUP(CMD_GRP_SECURITY)
 BAREBOX_CMD_END
diff --git a/commands/blobgen.c b/commands/blobgen.c
index 8ff2cc2c1142..4bbbc24b3b6d 100644
--- a/commands/blobgen.c
+++ b/commands/blobgen.c
@@ -118,6 +118,6 @@ BAREBOX_CMD_START(blobgen)
 	.cmd	= do_blobgen,
 	BAREBOX_CMD_DESC("en/decrypt blobs")
 	BAREBOX_CMD_OPTS("[-edmVb] <plaintext/ciphertext>")
-	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
+	BAREBOX_CMD_GROUP(CMD_GRP_SECURITY)
 	BAREBOX_CMD_HELP(cmd_blobgen_help)
 BAREBOX_CMD_END
diff --git a/commands/help.c b/commands/help.c
index ba8542b90f01..6851c652ac09 100644
--- a/commands/help.c
+++ b/commands/help.c
@@ -59,6 +59,7 @@ static void list_commands(int verbose)
 	list_group(verbose, "Console",               CMD_GRP_CONSOLE);
 	list_group(verbose, "Memory",                CMD_GRP_MEM);
 	list_group(verbose, "Hardware manipulation", CMD_GRP_HWMANIP);
+	list_group(verbose, "Security",              CMD_GRP_SECURITY);
 	list_group(verbose, "Miscellaneous",         CMD_GRP_MISC);
 	list_group(verbose, "Ungrouped",             0);
 	printf("Use 'help COMMAND' for more details.\n\n");
diff --git a/commands/keystore.c b/commands/keystore.c
index 8679a840e8d9..fe5cede951f3 100644
--- a/commands/keystore.c
+++ b/commands/keystore.c
@@ -97,6 +97,6 @@ BAREBOX_CMD_START(keystore)
 	.cmd	= do_keystore,
 	BAREBOX_CMD_DESC("manage keys")
 	BAREBOX_CMD_OPTS("[-rsf] <keyname>")
-	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+	BAREBOX_CMD_GROUP(CMD_GRP_SECURITY)
 	BAREBOX_CMD_HELP(cmd_keystore_help)
 BAREBOX_CMD_END
diff --git a/include/command.h b/include/command.h
index 03ac270d1305..378e1458a589 100644
--- a/include/command.h
+++ b/include/command.h
@@ -79,7 +79,8 @@ static inline int run_command(const char *cmd) { return -ENOSYS; }
 #define CMD_GRP_CONSOLE		8
 #define CMD_GRP_MEM		9
 #define CMD_GRP_HWMANIP		10
-#define CMD_GRP_MISC		11
+#define CMD_GRP_SECURITY	11
+#define CMD_GRP_MISC		12
 
 #endif	/* __ASSEMBLY__ */
 
-- 
2.39.5



