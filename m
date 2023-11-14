Delivery-date: Tue, 14 Nov 2023 14:31:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tW0-00BJsn-0j
	for lore@lore.pengutronix.de;
	Tue, 14 Nov 2023 14:31:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tW0-0006we-8J
	for lore@pengutronix.de; Tue, 14 Nov 2023 14:31:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fuR7Z2ce7qIWMUzRa9+Iw9YxhELUoJpTjoxeXuOk0SY=; b=ZZpyzatPyUSRN7tUhjsK4aKrq4
	NpzSzyexcACxlBf027bDcXZwAYNkEg36htlb0fcZQ0lgdX8GgsYemMLBv0wo6ETDc+FuLMBaZ4MmS
	GQjaYROjdRfMaEuyZw38cchE4bEw4ZUHCUDwRGhoQu40nF7Kvbu0WCiQLmeBXKgZ4aQPdWkbioDOD
	cWUPluVMTyaDczoojbjNguitFsO1QxBkzfLIiRuYNgFgmYvscHEomGfZjvkAg0YoNsDlvWwqhfF6P
	jdaCKg9t6DFM8ijXNOL5MufqM7eaz1susy/OsZB8ptVdy5nqo1RdrGM0BMsm2CpL2xtsKMhYSyMok
	ZuP7JCCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUl-00G2lX-0u;
	Tue, 14 Nov 2023 13:30:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUe-00G2hv-1Z
	for barebox@lists.infradead.org;
	Tue, 14 Nov 2023 13:30:19 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1r2tUd-0006Gh-8B
	for barebox@lists.infradead.org; Tue, 14 Nov 2023 14:30:15 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 14 Nov 2023 14:30:03 +0100
Message-Id: <20231114133007.3662931-4-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231114133007.3662931-1-m.felsch@pengutronix.de>
References: <20231114133007.3662931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_053016_534471_9A1BF0F2 
X-CRM114-Status: GOOD (  11.59  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 4/8] commands: mmc: add partition_complete subcommand
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: LI Qingwu <Qing-wu.Li@leica-geosystems.com.cn>

A separate command is less error prone in case both the "write
reliability" and the "enhanced area" feature should be set.

Signed-off-by: LI Qingwu <Qing-wu.Li@leica-geosystems.com.cn>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 commands/mmc.c | 35 ++++++++++++++++++++++++++++++++++-
 1 file changed, 34 insertions(+), 1 deletion(-)

diff --git a/commands/mmc.c b/commands/mmc.c
index 1009b16bfdf7..4e7d03231023 100644
--- a/commands/mmc.c
+++ b/commands/mmc.c
@@ -208,6 +208,34 @@ static int do_mmc_write_reliability(int argc, char *argv[])
 	return COMMAND_ERROR;
 }
 
+static int do_mmc_partition_complete(int argc, char *argv[])
+{
+	const char *devpath;
+	struct mci *mci;
+	int ret;
+
+	if (argc - optind != 1) {
+		printf("Usage: mmc partition_complete /dev/mmcX\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	devpath = argv[optind];
+
+	mci = mci_get_device_by_devpath(devpath);
+	if (!mci) {
+		printf("Failure to open %s as mci device\n", devpath);
+		return COMMAND_ERROR_USAGE;
+	}
+
+	ret = mmc_partitioning_complete(mci);
+	if (ret)
+		return COMMAND_ERROR;
+
+	printf("Now power cycle the device to let it reconfigure itself.\n");
+
+	return COMMAND_SUCCESS;
+}
+
 static struct {
 	const char *cmd;
 	int (*func)(int argc, char *argv[]);
@@ -218,6 +246,9 @@ static struct {
 	}, {
 		.cmd = "write_reliability",
 		.func = do_mmc_write_reliability,
+	}, {
+		.cmd = "partition_complete",
+		.func = do_mmc_partition_complete,
 	}
 };
 
@@ -255,11 +286,13 @@ BAREBOX_CMD_HELP_TEXT("Note, with -c this is an irreversible action.")
 BAREBOX_CMD_HELP_OPT("-c", "complete partitioning")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("The subcommand write_reliability enable write reliability")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("The subcommand partition_complete set PARTITION_SETTING_COMPLETED (irreversible action)")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(mmc)
 	.cmd = do_mmc,
-	BAREBOX_CMD_OPTS("write_reliability|enh_area [-c] /dev/mmcX")
+	BAREBOX_CMD_OPTS("partition_complete|write_reliability|enh_area [-c] /dev/mmcX")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_mmc_help)
 BAREBOX_CMD_END
-- 
2.39.2



