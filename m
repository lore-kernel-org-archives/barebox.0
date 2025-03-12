Delivery-date: Wed, 12 Mar 2025 14:06:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnF-00D8BL-26
	for lore@lore.pengutronix.de;
	Wed, 12 Mar 2025 14:06:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tsLnB-00022R-SN
	for lore@pengutronix.de; Wed, 12 Mar 2025 14:06:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SnWZ4diJQaddJNVy0VcGDvqqBx0MYWhIdcub2YKUktg=; b=YszBtEQf5JkmN85as2Lj03TO8n
	c+QcS/9iSfWaHjGbQGZBbwNI790E10aU3qU+CxKRHKX2GafiKbcXB84/Ll4TkvoztY1KHji3md6ll
	W1BoBAKyAFXuumKkiQ6+Unzq6VaVMZWH8E1qjJFz66lniy3YUVzkORxpLfEBNmAPr2CewFqOiJJ4+
	IjqVp3O6Z2TovfnDQ5gbi0pfnoO/luUc42ckCgE+nXyaNFc4X/hFCq4Fk7vKCZ4BzyfQ9t/OaJFVN
	x/TZa6MTIQsJIV2eQm/wLdbCnxfXcrx+2AGD963L05ZWweGieRHsfJOwQVuEap8M7BQjBZxbbiwN8
	fFnJQIUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsLme-00000008Uqf-16r7;
	Wed, 12 Mar 2025 13:06:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tsL0e-00000008NSv-0Nhe
	for barebox@lists.infradead.org;
	Wed, 12 Mar 2025 12:16:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-0003sH-SC; Wed, 12 Mar 2025 13:16:18 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-005M8W-1t;
	Wed, 12 Mar 2025 13:16:18 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tsL0U-00AdfG-1c;
	Wed, 12 Mar 2025 13:16:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 12 Mar 2025 13:16:16 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250312-rpmb-v1-1-0f213382a3f3@pengutronix.de>
References: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
In-Reply-To: <20250312-rpmb-v1-0-0f213382a3f3@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1741781778; l=2072;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=B/GAl87d3puIpaYn8DWkBrzKR41MrvHkZ9OFyMXKKqc=;
 b=oHcKiEPDfUIxqSKxXM2F6dCuJHbSnIO4GyybSTNJxmURzGfxqQz6Q01zyM/hAxy8z3kZvhvxJ
 /UPFgkBwvWZDqAMfKO4PfEIvAn8uzW02hhVhySskLOJl9apWV3/M3N6
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250312_051628_131477_2CA0A635 
X-CRM114-Status: GOOD (  10.35  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] mci: implement mci_set_blockcount()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This adds a function to send a MMC_CMD_SET_BLOCK_COUNT command. This
is not yet needed by barebox as we use open end multiblock transfers,
but will be needed by upcoming RPMB support.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 9 +++++++++
 include/mci.h          | 5 +++++
 2 files changed, 14 insertions(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 27a10df9ce..6d8140f7b0 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -311,6 +311,15 @@ static int mci_block_erase(struct mci *card, unsigned int from,
 	return -EIO;
 }
 
+int mci_set_blockcount(struct mci *mci, unsigned int cmdarg)
+{
+	struct mci_cmd cmd = {};
+
+	mci_setup_cmd(&cmd, MMC_CMD_SET_BLOCK_COUNT, cmdarg, MMC_RSP_R1);
+
+	return mci_send_cmd(mci, &cmd, NULL);
+}
+
 static int mci_do_block_op(struct mci *mci, const void *src, void *dst, int blocknum,
 		int blocks)
 {
diff --git a/include/mci.h b/include/mci.h
index f0db1f9ea0..c6ee6ea50f 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -87,12 +87,16 @@
 #define MMC_CMD_READ_MULTIPLE_BLOCK	18
 #define MMC_SEND_TUNING_BLOCK		19   /* adtc R1  */
 #define MMC_SEND_TUNING_BLOCK_HS200	21   /* adtc R1  */
+#define MMC_CMD_SET_BLOCK_COUNT		23
 #define MMC_CMD_WRITE_SINGLE_BLOCK	24
 #define MMC_CMD_WRITE_MULTIPLE_BLOCK	25
 #define MMC_CMD_APP_CMD			55
 #define MMC_CMD_SPI_READ_OCR		58
 #define MMC_CMD_SPI_CRC_ON_OFF		59
 
+#define MMC_CMD23_ARG_BLOCKS	GENMASK(15, 0)
+#define MMC_CMD23_ARG_REL_WR	BIT(31)
+
   /* class 5 */
 #define MMC_ERASE_GROUP_START    35   /* ac   [31:0] data addr   R1  */
 #define MMC_ERASE_GROUP_END      36   /* ac   [31:0] data addr   R1  */
@@ -724,6 +728,7 @@ int mmc_hs200_tuning(struct mci *mci);
 int mci_execute_tuning(struct mci *mci);
 int mci_send_abort_tuning(struct mci *mci, u32 opcode);
 int mmc_select_timing(struct mci *mci);
+int mci_set_blockcount(struct mci *mci, unsigned int cmdarg);
 
 static inline bool mmc_card_hs200(struct mci *mci)
 {

-- 
2.39.5



