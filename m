Delivery-date: Tue, 14 Nov 2023 14:31:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tW1-00BJtY-1f
	for lore@lore.pengutronix.de;
	Tue, 14 Nov 2023 14:31:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tW1-0006xa-Fk
	for lore@pengutronix.de; Tue, 14 Nov 2023 14:31:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i6ZbdGydUqYlopq03oj/DeFm5IgW5MEStdTIBA1SOik=; b=L8n7kpxa4KJQNGV6kkgVXPlhPv
	U5wuHWXo2lPUn9m9WvSFdhr3q/TTm5PtOCcKISkLVvnhZSHzpm1F6Sb7ImV+scd0Q5y3zcfbJROf2
	0L9/FA78CjD7DjgiE8VOjwhykEGOEL1XtDpPuPMStYE2r/pfxpEHDgQP8dNIUMUQNOXbEWrTogx7y
	QrHbChXrXL6qrSN4EnGYsg3UERHrgjszULqs4CbO8KBvy+wDbzsUGkueefUT9LNyPjSAOnp2C3/8t
	0IzZKl6xjAegTPp8UIGg6AxpahVY84bG/YSn76F2becI+HSrheTBEtiqhZeXZTfurNUDGpBdAW+di
	gWMa3uDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUl-00G2ln-2q;
	Tue, 14 Nov 2023 13:30:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUe-00G2hu-1a
	for barebox@lists.infradead.org;
	Tue, 14 Nov 2023 13:30:19 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1r2tUd-0006Gh-5s
	for barebox@lists.infradead.org; Tue, 14 Nov 2023 14:30:15 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 14 Nov 2023 14:30:02 +0100
Message-Id: <20231114133007.3662931-3-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231114133007.3662931-1-m.felsch@pengutronix.de>
References: <20231114133007.3662931-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_053016_585101_71E2092F 
X-CRM114-Status: GOOD (  14.93  )
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
Subject: [PATCH 3/8] commands: mmc: add write_reliability subcommand
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: LI Qingwu <Qing-wu.Li@leica-geosystems.com.cn>

Add new sub-command to enable the write reliability.

Signed-off-by: LI Qingwu <Qing-wu.Li@leica-geosystems.com.cn>
[m.felsch@pengutronix.de: minor cleanups]
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 commands/mmc.c | 68 +++++++++++++++++++++++++++++++++++++++++++++++++-
 include/mci.h  |  4 +++
 2 files changed, 71 insertions(+), 1 deletion(-)

diff --git a/commands/mmc.c b/commands/mmc.c
index 1e62b71850e0..1009b16bfdf7 100644
--- a/commands/mmc.c
+++ b/commands/mmc.c
@@ -147,6 +147,67 @@ static int do_mmc_enh_area(int argc, char *argv[])
 	return COMMAND_ERROR;
 }
 
+static int do_mmc_write_reliability(int argc, char *argv[])
+{
+	const char *devpath;
+	struct mci *mci;
+	u8 *ext_csd;
+
+	if (argc - optind != 1) {
+		printf("Usage: mmc write_reliability /dev/mmcX\n");
+		return COMMAND_ERROR_USAGE;
+	}
+
+	devpath = argv[optind];
+
+	mci = mci_get_device_by_devpath(devpath);
+	if (!mci) {
+		printf("Failure to open %s as mci device\n", devpath);
+		return COMMAND_ERROR;
+	}
+
+	ext_csd = mci_get_ext_csd(mci);
+	if (IS_ERR(ext_csd))
+		return COMMAND_ERROR;
+
+	if (ext_csd[EXT_CSD_PARTITION_SETTING_COMPLETED]) {
+		printf("Partitioning already finalized\n");
+		goto error;
+	}
+
+	if (!(ext_csd[EXT_CSD_WR_REL_PARAM] & EXT_CSD_EN_REL_WR)) {
+		printf("Device doesn't support the enhanced definition of reliable write\n");
+		goto error;
+	}
+
+	if (!(ext_csd[EXT_CSD_WR_REL_PARAM] & EXT_CSD_HS_CTRL_REL)) {
+		printf("Device doesn't support WR_REL_SET writes\n");
+		goto error;
+	}
+
+	/*
+	 * Host has one opportunity to write all of the bits. Separate writes to
+	 * individual bits are not permitted so set all bits for now.
+	 */
+	if ((ext_csd[EXT_CSD_WR_REL_SET] & 0x1f) != 0x1f) {
+		int ret;
+
+		ret = mci_switch(mci, EXT_CSD_WR_REL_SET, 0x1f);
+		if (ret) {
+			printf("Failure to write to EXT_CSD_WR_REL_SET\n");
+			goto error;
+		}
+	}
+
+	free(ext_csd);
+
+	return COMMAND_SUCCESS;
+
+error:
+	free(ext_csd);
+	return COMMAND_ERROR;
+}
+
 static struct {
 	const char *cmd;
 	int (*func)(int argc, char *argv[]);
@@ -154,6 +215,9 @@ static struct {
 	{
 		.cmd = "enh_area",
 		.func = do_mmc_enh_area,
+	}, {
+		.cmd = "write_reliability",
+		.func = do_mmc_write_reliability,
 	}
 };
 
@@ -189,11 +253,13 @@ BAREBOX_CMD_HELP_TEXT("The subcommand enh_area creates an enhanced area of")
 BAREBOX_CMD_HELP_TEXT("maximal size.")
 BAREBOX_CMD_HELP_TEXT("Note, with -c this is an irreversible action.")
 BAREBOX_CMD_HELP_OPT("-c", "complete partitioning")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("The subcommand write_reliability enable write reliability")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(mmc)
 	.cmd = do_mmc,
-	BAREBOX_CMD_OPTS("enh_area [-c] /dev/mmcX")
+	BAREBOX_CMD_OPTS("write_reliability|enh_area [-c] /dev/mmcX")
 	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
 	BAREBOX_CMD_HELP(cmd_mmc_help)
 BAREBOX_CMD_END
diff --git a/include/mci.h b/include/mci.h
index f38384613728..4fed8d739284 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -307,6 +307,10 @@
 /* register PARTITIONING_SUPPORT [160] */
 #define EXT_CSD_ENH_ATTRIBUTE_EN_MASK	(1 << 1)
 
+/* register EXT_CSD_WR_REL_PARAM [166] */
+#define EXT_CSD_HS_CTRL_REL		(1 << 0)
+#define EXT_CSD_EN_REL_WR		(1 << 2)
+
 /* register BUS_WIDTH [183], field Bus Mode Selection [4:0] */
 #define EXT_CSD_BUS_WIDTH_1	0	/* Card is in 1 bit mode */
 #define EXT_CSD_BUS_WIDTH_4	1	/* Card is in 4 bit mode */
-- 
2.39.2



