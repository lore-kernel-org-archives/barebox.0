Delivery-date: Tue, 06 May 2025 16:55:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCJho-002pAu-2x
	for lore@lore.pengutronix.de;
	Tue, 06 May 2025 16:55:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uCJho-000697-3v
	for lore@pengutronix.de; Tue, 06 May 2025 16:55:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=F8JRijaNTUO4QnTzOxPKjO/+Cu5SVyrTsoT528801d8=; b=iClLtxLwr0DxN67NjnzOMM5GTS
	O0kiz+LQ0pd6QRMKlKFifd2xA2NiOLMGpaCLi2uFKJY6OdpKXXCgcqn2CDqkelqKi75F7LsMTCSQP
	wETaAv6yXjT0ZxsUFYOHA+0k91WtLZTlE4nCsSfzts4RGT6FoKbXPV8OERnQ9dAAWVw7SHgB2XWMa
	58jnkAPt4E3CAQ99f2VEPbAXDNO/jeOwYIrK5244FPQsFELGa4KT89JfhZluwxN3U2I4bdEwLRbIb
	cKW1KmAJyKsby312lZCopRrVr/evdfwETMowxEEfB3MWSLdTuqk9AdUDbBnmGzTj94cLfFLLKR0st
	ypkQFFqw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCJhE-0000000CP9b-3BOe;
	Tue, 06 May 2025 14:55:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uCGut-0000000Bovx-2M98
	for barebox@lists.infradead.org;
	Tue, 06 May 2025 11:56:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCGur-0000I1-Dh; Tue, 06 May 2025 13:56:53 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCGur-001O4k-0k;
	Tue, 06 May 2025 13:56:53 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uCGur-004l62-1z;
	Tue, 06 May 2025 13:56:53 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue,  6 May 2025 13:56:52 +0200
Message-Id: <20250506115652.1134337-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250506115652.1134337-1-a.fatoum@pengutronix.de>
References: <20250506115652.1134337-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250506_045655_599163_54B57096 
X-CRM114-Status: GOOD (  14.24  )
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
Subject: [PATCH 2/2] mci: atmel_mci: switch PBL implementation to common mci-pbl support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't reinitialize the SD-Card when barebox is used as a first stage,
because it's already initialized by the BootROM and thus we don't use
the MMC stack. Recently, a very stripped down version was added that
doesn't initialize cards, but determines wheter a card is high or
standard capacity and then starts reading blocks directly.
Make use of it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/atmel_mci_pbl.c | 99 +++++++------------------------------
 1 file changed, 18 insertions(+), 81 deletions(-)

diff --git a/drivers/mci/atmel_mci_pbl.c b/drivers/mci/atmel_mci_pbl.c
index d7343246abbb..27727b27343c 100644
--- a/drivers/mci/atmel_mci_pbl.c
+++ b/drivers/mci/atmel_mci_pbl.c
@@ -6,95 +6,32 @@
 
 #include "atmel-mci-regs.h"
 
-#define SECTOR_SIZE			512
 #define SUPPORT_MAX_BLOCKS		16U
 
-struct atmel_mci_priv {
-	struct atmel_mci host;
-	bool highcapacity_card;
-};
-
-static struct atmel_mci_priv atmci_sdcard;
-
-static int atmel_mci_pbl_stop_transmission(struct atmel_mci_priv *priv)
+static int pbl_atmci_common_request(struct pbl_mci *mci,
+				    struct mci_cmd *cmd,
+				    struct mci_data *data)
 {
-	struct mci_cmd cmd = {
-		.cmdidx = MMC_CMD_STOP_TRANSMISSION,
-		.resp_type = MMC_RSP_R1b,
-	};
-
-	return atmci_common_request(&priv->host, &cmd, NULL);
+	return atmci_common_request(mci->priv, cmd, data);
 }
 
-static int at91_mci_sd_cmd_read_multiple_block(struct atmel_mci_priv *priv,
-				      void *buf,
-				      unsigned int start,
-				      unsigned int block_count)
-{
-	u16 block_len = SECTOR_SIZE;
-	struct mci_data data;
-	struct mci_cmd cmd = {
-		.cmdidx = MMC_CMD_READ_MULTIPLE_BLOCK,
-		.resp_type = MMC_RSP_R1,
-		.cmdarg = start,
-	};
-
-	if (!priv->highcapacity_card)
-		cmd.cmdarg *= block_len;
-
-	data.dest = buf;
-	data.flags = MMC_DATA_READ;
-	data.blocksize = block_len;
-	data.blocks = block_count;
-
-	return atmci_common_request(&priv->host, &cmd, &data);
-}
-
-static int at91_mci_bio_read(struct pbl_bio *bio, off_t start,
-				void *buf, unsigned int nblocks)
-{
-	struct atmel_mci_priv *priv = bio->priv;
-	unsigned int blocks_done = 0;
-	unsigned int blocks;
-	unsigned int block_len = SECTOR_SIZE;
-	unsigned int blocks_read;
-	int ret;
-
-	while (blocks_done < nblocks) {
-		blocks = min(nblocks - blocks_done, SUPPORT_MAX_BLOCKS);
-
-		blocks_read = at91_mci_sd_cmd_read_multiple_block(priv, buf,
-							 start + blocks_done,
-							 blocks);
-
-		ret = atmel_mci_pbl_stop_transmission(priv);
-		if (ret)
-			return ret;
-
-		blocks_done += blocks_read;
-
-		if (blocks_read != blocks)
-			break;
-
-		buf += blocks * block_len;
-	}
-
-	return blocks_done;
-}
+static struct atmel_mci atmci_host;
+static struct pbl_mci mci;
 
 int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
 		      unsigned int clock, unsigned int slot,
 		      enum pbl_mci_capacity capacity)
 {
-	struct atmel_mci_priv *priv = &atmci_sdcard;
-	struct atmel_mci *host = &priv->host;
+	struct atmel_mci *host = &atmci_host;
 	struct mci_ios ios = { .bus_width = MMC_BUS_WIDTH_4, .clock = 25000000 };
 
-	/* PBL will get MCI controller in disabled state. We need to reconfigure
-	 * it. */
-	bio->priv = priv;
-	bio->read = at91_mci_bio_read;
+	mci.priv = host;
+	mci.send_cmd = pbl_atmci_common_request;
 
+	/*
+	 * PBL will get MCI controller in disabled state,
+	 * so we need to reconfigure it.
+	 */
 	host->regs = base;
 
 	atmci_get_cap(host);
@@ -112,10 +49,10 @@ int at91_mci_bio_init(struct pbl_bio *bio, void __iomem *base,
 
 	atmci_common_set_ios(host, &ios);
 
-	if (capacity == PBL_MCI_STANDARD_CAPACITY)
-		atmci_sdcard.highcapacity_card = false;
-	else
-		atmci_sdcard.highcapacity_card = true;
+	mci.priv = host;
+	mci.send_cmd = pbl_atmci_common_request;
+	mci.max_blocks_per_read = SUPPORT_MAX_BLOCKS;
+	mci.capacity = capacity;
 
-	return 0;
+	return pbl_mci_bio_init(&mci, bio);
 }
-- 
2.39.5



