Delivery-date: Mon, 17 Feb 2025 12:35:16 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjzPB-003SoI-1I
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 12:35:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tjzPA-000861-7N
	for lore@pengutronix.de; Mon, 17 Feb 2025 12:35:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HFpqU2HBvw3qJapCdsdpj0Fg6TuAxZqBWUyZdMwEwTI=; b=vmFgE8n1aAU23Ccs0zdmjyyU3F
	StcgpS80e9Ajsdp8DlyKgfh80ePRVenvcImr4GoNzJ6tWvQveaSE4oRFc5Ay8I8eDIZ7CU7RIhIbm
	CQgFgSodQqK80WLiLxkdl50AYKIoP/aHPGuNtWl3/oc2SwstMBnqqoNcZTJ4LSV/Htzg+PyGaw7X2
	mVcfVecD382tR4+sCZ2Bf5uGACZKHiOcWQ6nDJ1IySLiarVes7UfReiX29y052aq4eRhKp2rWK4oP
	vJQZOgK1shPJCsYWuHbjO6Zj0b6+yFQ7zWzN4QPyMjsI2Sd1+7ayegNoXeLkP0m4KZ1xXfA9MzxA2
	EyCTC+Yw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tjzOa-00000004K4M-1y95;
	Mon, 17 Feb 2025 11:34:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tjzOX-00000004K2w-3nQx
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 11:34:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjzOW-0007uV-Ee; Mon, 17 Feb 2025 12:34:36 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjzOW-001Osh-0q;
	Mon, 17 Feb 2025 12:34:36 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tjzOW-008r56-0X;
	Mon, 17 Feb 2025 12:34:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 12:33:55 +0100
Message-Id: <20250217113355.2099178-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217113355.2099178-1-a.fatoum@pengutronix.de>
References: <20250217113355.2099178-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_033437_938737_C4E30799 
X-CRM114-Status: GOOD (  13.96  )
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
Subject: [PATCH v2 2/2] mci: core: reset ERASE_GRP_DEF on startup
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

EXT_CSD register EXT_CSD_ERASE_GROUP_DEF loses its value after power
cycles and needs to be reset. Quoting the eMMC 5.1 standard[1]:

  After every power-up, when the host uses a device that partition(s)
  are configured, it must set the ERASE_GROUP_DEF bit to high before
  issuing read, write, erase and write protect commands, because this
  bit is reset after power-up. Otherwise, these may not work correctly
  and it may leave the stored data in an unknown state.

[1]: JESD84-B51

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 19 ++++++++++++++++---
 1 file changed, 16 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 13306d78dcfe..e6e23b566a44 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1218,11 +1218,24 @@ static void mci_extract_block_lengths_from_csd(struct mci *mci)
 }
 
 /**
- * Extract erase group size
+ * Configure erase group size
  * @param mci MCI instance
  */
-static void mci_extract_erase_group_size(struct mci *mci)
+static void mci_configure_erase_group_size(struct mci *mci)
 {
+	/* Enable ERASE_GRP_DEF. This bit is lost after a reset or power off.
+	 * This needs to happen even if we don't have erase support compiled-in.
+	 */
+	if (!IS_SD(mci) && mci->version >= MMC_VERSION_4_3) { 
+		int err;
+
+		err = mci_switch(mci, EXT_CSD_ERASE_GROUP_DEF, 1);
+		if (err)
+			dev_warn(&mci->dev, "failed erase group switch\n");
+		else
+			mci->ext_csd[EXT_CSD_ERASE_GROUP_DEF] = 1;
+	}
+
 	if (!IS_ENABLED(CONFIG_MCI_ERASE) ||
 	    !(UNSTUFF_BITS(mci->csd, 84, 12) & CCC_ERASE))
 		return;
@@ -1954,7 +1967,7 @@ static int mci_startup(struct mci *mci)
 	dev_info(&mci->dev, "detected %s card version %s\n", IS_SD(mci) ? "SD" : "MMC",
 		mci_version_string(mci));
 	mci_extract_card_capacity_from_csd(mci);
-	mci_extract_erase_group_size(mci);
+	mci_configure_erase_group_size(mci);
 
 	if (IS_SD(mci))
 		err = mci_startup_sd(mci);
-- 
2.39.5



