Delivery-date: Tue, 10 Jan 2023 16:52:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGvN-007ui7-Qf
	for lore@lore.pengutronix.de; Tue, 10 Jan 2023 16:52:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFGvL-00018v-W9
	for lore@pengutronix.de; Tue, 10 Jan 2023 16:52:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0Q0pPoCFw2aEiAracNJ5c0/rQ3NBnIqCAEYqF7RjALA=; b=s77ToogsoecSBPJ6eaKHouBFmy
	+7X5Sq46ut+dr2S1B+1Bv4vKvXs1aSlnQRk0SKn1YiqRzHLh/gTjtsaGShNjdS5jzYoJsM4UVcsMt
	D151j7ohSVsIrVqEyuLZIwKvKIbPyz6KnmYmZu4LVPbOCTTYWqRpSE/lhULVuRezFJEOmEYYDl6ae
	s4fpnTO9RRYokg/COGT1pimc7SZuhYIJ2swACQjn46sBpghdMqIeoI64JuNH6l6aagAD+D+7EXuC/
	79nh4ZECyzaFo8CeiU0bwNQMkGBXFwbhf9fz+caYvIHsLS7Ugbp7bJBKS1kOs53+LslBNRyhU2hKQ
	4+htYPtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGtz-007erM-Ge; Tue, 10 Jan 2023 15:51:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFGtm-007eou-4b
	for barebox@lists.infradead.org; Tue, 10 Jan 2023 15:50:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pFGti-0000ng-1Z; Tue, 10 Jan 2023 16:50:46 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pFGth-0056o3-EJ; Tue, 10 Jan 2023 16:50:45 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pFGtg-008Zgp-I8; Tue, 10 Jan 2023 16:50:44 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 10 Jan 2023 16:50:38 +0100
Message-Id: <20230110155039.2039341-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230110155039.2039341-1-s.hauer@pengutronix.de>
References: <20230110155039.2039341-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230110_075050_218457_681F5F55 
X-CRM114-Status: GOOD (  18.71  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] mci: handle SDIO cards gracefully
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Detect SDIO cards properly to be able to return from card detection
without errors. So far a SDIO card reports several errors during
detection:

ERROR: bcm2835_mci 3f300000.mmc@7e300000.of: Error while executing command 8
ERROR: bcm2835_mci 3f300000.mmc@7e300000.of: Status: 0x1FF0001, Interrupt: 0x18000
ERROR: bcm2835_mci 3f300000.mmc@7e300000.of: Error while executing command 55
ERROR: bcm2835_mci 3f300000.mmc@7e300000.of: Status: 0x1FF0001, Interrupt: 0x18000
ERROR: bcm2835_mci 3f300000.mmc@7e300000.of: Error while executing command 1
ERROR: bcm2835_mci 3f300000.mmc@7e300000.of: Status: 0x1FF0001, Interrupt: 0x18000

With this we can now detect SDIO cards without reporting errors, or
to put it differently: barebox now has SDIO support ;)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mci/mci-core.c | 24 +++++++++++++++++++++++-
 include/mci.h          |  4 ++++
 2 files changed, 27 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 8cda07e711..44a577e8c3 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -232,6 +232,15 @@ static int mci_go_idle(struct mci *mci)
 	return 0;
 }
 
+static int sdio_send_op_cond(struct mci *mci)
+{
+	struct mci_cmd cmd;
+
+	mci_setup_cmd(&cmd, SD_IO_SEND_OP_COND, 0, MMC_RSP_SPI_R4 | MMC_RSP_R4 | MMC_CMD_BCR);
+
+	return mci_send_cmd(mci, &cmd, NULL);
+}
+
 /**
  * FIXME
  * @param mci MCI instance
@@ -1596,7 +1605,9 @@ static void mci_info(struct device_d *dev)
 	mci_print_caps(host->host_caps);
 
 	printf("Card information:\n");
-	printf("  Attached is a %s card\n", IS_SD(mci) ? "SD" : "MMC");
+	printf("  Card type: %s\n", mci->sdio ? "SDIO" : IS_SD(mci) ? "SD" : "MMC");
+	if (mci->sdio)
+		return;
 	printf("  Version: %s\n", mci_version_string(mci));
 	printf("  Capacity: %u MiB\n", (unsigned)(mci->capacity >> 20));
 
@@ -1809,6 +1820,16 @@ static int mci_card_probe(struct mci *mci)
 		goto on_error;
 	}
 
+	if (!host->no_sdio) {
+		rc = sdio_send_op_cond(mci);
+		if (!rc) {
+			mci->ready_for_use = true;
+			mci->sdio = true;
+			dev_info(&mci->dev, "SDIO card detected, ignoring\n");
+			return 0;
+		}
+	}
+
 	/* Check if this card can handle the "SD Card Physical Layer Specification 2.0" */
 	if (!host->no_sd) {
 		rc = sd_send_if_cond(mci);
@@ -2086,6 +2107,7 @@ void mci_of_parse_node(struct mci_host *host,
 	host->broken_cd = of_property_read_bool(np, "broken-cd");
 	host->non_removable = of_property_read_bool(np, "non-removable");
 	host->no_sd = of_property_read_bool(np, "no-sd");
+	host->no_sdio = of_property_read_bool(np, "no-sdio");
 	host->disable_wp = of_property_read_bool(np, "disable-wp");
 }
 
diff --git a/include/mci.h b/include/mci.h
index d3201e17e6..56a5659e50 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -91,6 +91,8 @@
 #define SD_CMD_APP_SEND_OP_COND		41
 #define SD_CMD_APP_SEND_SCR		51
 
+#define SD_IO_SEND_OP_COND		5 /* bcr  [23:0] OCR         R4  */
+
 /* SCR definitions in different words */
 #define SD_HIGHSPEED_BUSY	0x00020000
 #define SD_HIGHSPEED_SUPPORTED	0x00020000
@@ -431,6 +433,7 @@ struct mci_host {
 	int broken_cd;		/**< card detect is broken */
 	bool non_removable;	/**< device is non removable */
 	bool no_sd;		/**< do not send SD commands during initialization */
+	bool no_sdio;		/**< do not send SDIO commands during initialization */
 	bool disable_wp;	/**< ignore write-protect detection logic */
 	struct regulator *supply;
 
@@ -469,6 +472,7 @@ struct mci {
 	struct mci_host *host;		/**< the host for this card */
 	struct device_d dev;		/**< the device for our disk (mcix) */
 	unsigned version;
+	bool sdio;		/**< card is a SDIO card */
 	/** != 0 when a high capacity card is connected (OCR -> OCR_HCS) */
 	int high_capacity;
 	unsigned card_caps;	/**< Card's capabilities */
-- 
2.30.2



