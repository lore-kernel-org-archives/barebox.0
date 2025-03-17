Delivery-date: Mon, 17 Mar 2025 10:36:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6tv-000Yqb-21
	for lore@lore.pengutronix.de;
	Mon, 17 Mar 2025 10:36:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tu6tu-00028a-9J
	for lore@pengutronix.de; Mon, 17 Mar 2025 10:36:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fMY4/N7VMsnrV5ME+I8rJZcBM4F3CZmVLk4Ne7ZJPIo=; b=PR2ViWHSmtCrylrb6Z9/zce8s0
	voNOINCFSMbWTyXUyLyUu4Q4JGGiky6PdPDGvILa7lcQlEosrehXULJJBJaZO/DKT6BabEFZE1nDU
	fuPPo/Ss6fYkYJYESaUkJWQvrVrGUtmEY6T2fHCcjA4xYsF0+B5BqasRQg43+vVfbo8pxCBf4dVYZ
	LXqQeTPLGdf15llom2gpRXnjeHP5cxxw9I4fHlT4v640+61ltTf5dUvQptG8P6rTJTi/KSpbNxpOu
	sYYUG1zQcLMfm2PHAliKla/qZOgz6FH//MHWoGMTt0JQgPTXDRRGJAZ4K7kVeveR5gNCXOSIC4R60
	fXPcQtfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6tV-00000001xIq-3QEO;
	Mon, 17 Mar 2025 09:36:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tu6s3-00000001wsd-3wk1
	for barebox@lists.infradead.org;
	Mon, 17 Mar 2025 09:34:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rm-0001Qq-Mo; Mon, 17 Mar 2025 10:34:38 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rl-000DpM-35;
	Mon, 17 Mar 2025 10:34:38 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1tu6rm-00H5gy-0x;
	Mon, 17 Mar 2025 10:34:38 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 17 Mar 2025 10:34:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250317-mci-misc-cleanup-v1-3-24b4d6f5d31a@pengutronix.de>
References: <20250317-mci-misc-cleanup-v1-0-24b4d6f5d31a@pengutronix.de>
In-Reply-To: <20250317-mci-misc-cleanup-v1-0-24b4d6f5d31a@pengutronix.de>
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1742204078; l=2970;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=EspjYOCSqVEghNADhM/pmIMTkD7vIBwnh5d7s4wKhpo=;
 b=ibYQ1SKixh/aGn/Z1efy2AN+KPu19E2JH58EjzPn3M9IDDdUlI8oGr2TWHZR9WbaOfM3UxDsM
 dh68bu2yAw8CHFwcHiITjQYH6Zk1ZH1UyaHRldxbyE9GCzoGcuWqaL+
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_023455_982293_FA4EBBE4 
X-CRM114-Status: GOOD (  18.56  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/6] mci: cleanup code around ready_for_use flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct mci::ready_for_use is a flag, thus should be boolean. Also
no need to have an extra function which returns a negative error
code when the flag is set. Just check for the flag where needed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 29 ++++-------------------------
 include/mci.h          |  2 +-
 2 files changed, 5 insertions(+), 26 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 975896d2d8..f29dc84f93 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -2373,7 +2373,7 @@ static void mci_info(struct device *dev)
 	struct mci_host *host = mci->host;
 	int bw;
 
-	if (mci->ready_for_use == 0) {
+	if (!mci->ready_for_use) {
 		printf(" No information available:\n  MCI card not probed yet\n");
 		return;
 	}
@@ -2455,23 +2455,6 @@ static void mci_parse_cid(struct mci *mci)
 	dev_add_param_uint32_fixed(dev, "cid_month", mci->cid.month, "%0u");
 }
 
-/**
- * Check if the MCI card is already probed
- * @param mci MCI device instance
- * @return 0 when not probed yet, -EPERM if already probed
- *
- * @a barebox cannot really cope with hot plugging. So, probing an attached
- * MCI card is a one time only job. If its already done, there is no way to
- * return.
- */
-static int mci_check_if_already_initialized(struct mci *mci)
-{
-	if (mci->ready_for_use != 0)
-		return -EPERM;
-
-	return 0;
-}
-
 static struct block_device_ops mci_ops = {
 	.read = mci_sd_read,
 	.write = IS_ENABLED(CONFIG_MCI_WRITE) ? mci_sd_write : NULL,
@@ -2716,7 +2699,7 @@ static int mci_card_probe(struct mci *mci)
 	}
 
 	dev_dbg(&mci->dev, "Card is up and running now, registering as a disk\n");
-	mci->ready_for_use = 1;	/* TODO now or later? */
+	mci->ready_for_use = true; /* TODO now or later? */
 
 	for (i = 0; i < mci->nr_parts; i++) {
 		struct mci_part *part = &mci->part[i];
@@ -2775,8 +2758,7 @@ static int mci_set_probe(struct param_d *param, void *priv)
 	if (!mci->probe)
 		return 0;
 
-	rc = mci_check_if_already_initialized(mci);
-	if (rc != 0)
+	if (mci->ready_for_use)
 		return 0;
 
 	rc = mci_card_probe(mci);
@@ -2788,10 +2770,7 @@ static int mci_set_probe(struct param_d *param, void *priv)
 
 int mci_detect_card(struct mci_host *host)
 {
-	int rc;
-
-	rc = mci_check_if_already_initialized(host->mci);
-	if (rc != 0)
+	if (host->mci->ready_for_use)
 		return 0;
 
 	return mci_card_probe(host->mci);
diff --git a/include/mci.h b/include/mci.h
index 689ca7167f..db1333999a 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -660,7 +660,7 @@ struct mci {
 	unsigned write_bl_len;
 	unsigned erase_grp_size;
 	uint64_t capacity;	/**< Card's data capacity in bytes */
-	int ready_for_use;	/** true if already probed */
+	bool ready_for_use;	/** true if already probed */
 	int dsr_imp;		/**< DSR implementation state from CSD */
 	u8 *ext_csd;
 	int probe;

-- 
2.39.5



