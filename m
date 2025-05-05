Delivery-date: Mon, 05 May 2025 14:39:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6I-002SXi-0F
	for lore@lore.pengutronix.de;
	Mon, 05 May 2025 14:39:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uBv6B-0006nl-0X
	for lore@pengutronix.de; Mon, 05 May 2025 14:39:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SibQyp3aMflWE7+eYlZ+qHNREXvPQRSFeW6E7S9A2IA=; b=QEyhQYNkRJVfVWW7QHVWoA72PQ
	8mABlFHL2s2SdngC/8/Z8/QFxLeKP9yPwBY1aGnE42p56bgIdlRh8+YrTcebgEq0bsBwvNYrayTVM
	u+bz/Itox6JgVMlVuSxwH9As2WqVGSD+DK42KBOppTfpVUHgJTePO31mRuwTcprcEajJB58/+0dWs
	Ge87OUl8e8d43wA7CsTcrbGTkvTVH5VHcldP3+9qahnwGBSujRnEDNxN1YnYwy3jxL0kDBElKjzIu
	s88O71Jn8XjenLTrkaKOOeuoE4Ax13hFph+JIEa0VafkKchbXaQLVrtieaDs0xN8jymMpEeOU8baz
	3DnECcJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv5N-00000007LbA-38kd;
	Mon, 05 May 2025 12:38:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uBv29-00000007Kae-3C9U
	for barebox@lists.infradead.org;
	Mon, 05 May 2025 12:35:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-0004qk-ID; Mon, 05 May 2025 14:34:56 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBv28-001EQT-1C;
	Mon, 05 May 2025 14:34:56 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uBuah-00Fb9X-29;
	Mon, 05 May 2025 14:06:35 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 May 2025 14:06:29 +0200
Message-Id: <20250505120633.3717186-27-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
References: <20250505120633.3717186-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250505_053457_800863_0FB796CD 
X-CRM114-Status: GOOD (  12.66  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 26/30] mci: core: implement mmc_send_tuning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For use by drivers that support eMMC standard tuning, add a new
mmc_send_tuning helper that sends 64-128 bytes and checks the result
for bit errors.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 78 ++++++++++++++++++++++++++++++++++++++++++
 include/mci.h          |  1 +
 2 files changed, 79 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 2645f9240d93..204143011e30 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1607,6 +1607,84 @@ int mci_execute_tuning(struct mci *mci)
 	return host->ops.execute_tuning(host, opcode);
 }
 
+static const u8 tuning_blk_pattern_4bit[] = {
+	0xff, 0x0f, 0xff, 0x00, 0xff, 0xcc, 0xc3, 0xcc,
+	0xc3, 0x3c, 0xcc, 0xff, 0xfe, 0xff, 0xfe, 0xef,
+	0xff, 0xdf, 0xff, 0xdd, 0xff, 0xfb, 0xff, 0xfb,
+	0xbf, 0xff, 0x7f, 0xff, 0x77, 0xf7, 0xbd, 0xef,
+	0xff, 0xf0, 0xff, 0xf0, 0x0f, 0xfc, 0xcc, 0x3c,
+	0xcc, 0x33, 0xcc, 0xcf, 0xff, 0xef, 0xff, 0xee,
+	0xff, 0xfd, 0xff, 0xfd, 0xdf, 0xff, 0xbf, 0xff,
+	0xbb, 0xff, 0xf7, 0xff, 0xf7, 0x7f, 0x7b, 0xde,
+};
+
+static const u8 tuning_blk_pattern_8bit[] = {
+	0xff, 0xff, 0x00, 0xff, 0xff, 0xff, 0x00, 0x00,
+	0xff, 0xff, 0xcc, 0xcc, 0xcc, 0x33, 0xcc, 0xcc,
+	0xcc, 0x33, 0x33, 0xcc, 0xcc, 0xcc, 0xff, 0xff,
+	0xff, 0xee, 0xff, 0xff, 0xff, 0xee, 0xee, 0xff,
+	0xff, 0xff, 0xdd, 0xff, 0xff, 0xff, 0xdd, 0xdd,
+	0xff, 0xff, 0xff, 0xbb, 0xff, 0xff, 0xff, 0xbb,
+	0xbb, 0xff, 0xff, 0xff, 0x77, 0xff, 0xff, 0xff,
+	0x77, 0x77, 0xff, 0x77, 0xbb, 0xdd, 0xee, 0xff,
+	0xff, 0xff, 0xff, 0x00, 0xff, 0xff, 0xff, 0x00,
+	0x00, 0xff, 0xff, 0xcc, 0xcc, 0xcc, 0x33, 0xcc,
+	0xcc, 0xcc, 0x33, 0x33, 0xcc, 0xcc, 0xcc, 0xff,
+	0xff, 0xff, 0xee, 0xff, 0xff, 0xff, 0xee, 0xee,
+	0xff, 0xff, 0xff, 0xdd, 0xff, 0xff, 0xff, 0xdd,
+	0xdd, 0xff, 0xff, 0xff, 0xbb, 0xff, 0xff, 0xff,
+	0xbb, 0xbb, 0xff, 0xff, 0xff, 0x77, 0xff, 0xff,
+	0xff, 0x77, 0x77, 0xff, 0x77, 0xbb, 0xdd, 0xee,
+};
+
+int mmc_send_tuning(struct mci *mci, u32 opcode)
+{
+	struct mci_cmd cmd = {};
+	struct mci_data data = {};
+	const u8 *tuning_block_pattern;
+	int size, err = 0;
+	u8 *data_buf;
+
+	if (mci->host->ios.bus_width == MMC_BUS_WIDTH_8) {
+		tuning_block_pattern = tuning_blk_pattern_8bit;
+		size = sizeof(tuning_blk_pattern_8bit);
+	} else if (mci->host->ios.bus_width == MMC_BUS_WIDTH_4) {
+		tuning_block_pattern = tuning_blk_pattern_4bit;
+		size = sizeof(tuning_blk_pattern_4bit);
+	} else
+		return -EINVAL;
+
+	data_buf = calloc(size, 1);
+	if (!data_buf)
+		return -ENOMEM;
+
+	mci_setup_cmd(&cmd, opcode, 0, MMC_RSP_R1 | MMC_CMD_ADTC);
+
+
+	data.blocksize = size;
+	data.blocks = 1;
+	data.flags = MMC_DATA_READ;
+
+	/*
+	 * According to the tuning specs, Tuning process
+	 * is normally shorter 40 executions of CMD19,
+	 * and timeout value should be shorter than 150 ms
+	 */
+	data.timeout_ns = 150 * NSEC_PER_MSEC;
+
+	err = mci_send_cmd(mci, &cmd, &data);
+	if (err)
+		goto out;
+
+	if (memcmp(data_buf, tuning_block_pattern, size))
+		err = -EIO;
+
+out:
+	free(data_buf);
+	return err;
+}
+EXPORT_SYMBOL_GPL(mmc_send_tuning);
+
 int mci_send_abort_tuning(struct mci *mci, u32 opcode)
 {
 	struct mci_cmd cmd = {};
diff --git a/include/mci.h b/include/mci.h
index 29aaecb46305..207fb9779a14 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -773,6 +773,7 @@ static inline int mmc_card_hs(struct mci *mci)
  */
 int mmc_hs200_tuning(struct mci *mci);
 int mci_execute_tuning(struct mci *mci);
+int mmc_send_tuning(struct mci *mci, u32 opcode);
 int mci_send_abort_tuning(struct mci *mci, u32 opcode);
 int mmc_select_timing(struct mci *mci);
 int mci_set_blockcount(struct mci *mci, unsigned int cmdarg);
-- 
2.39.5



