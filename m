Delivery-date: Tue, 22 Apr 2025 07:27:17 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A9-003us4-1H
	for lore@lore.pengutronix.de;
	Tue, 22 Apr 2025 07:27:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u76A8-0004Bv-BH
	for lore@pengutronix.de; Tue, 22 Apr 2025 07:27:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6URsmfBCoy5CoVtCCuyQMHWSgWa08n3cvMQCeEDWK88=; b=wHMra9lFYhNHabQO2hpH2YiMGN
	tNRmb1Xpjn1U95AWRztjFAjf5w6OKlBNPpXBaE5hb6gaqaOtr6yVyYmIeVhpniyxAqbNM9bi7Rnva
	htXAbvcyCIZANUJ80SJNTwFeY43Iem44v8hTNkPx0IrDG+/+G1fz7f8RONiBT1RVGex9/wEhuep0y
	IVUxCzTBQmNhN8iGU2lR9LUotFSUYyg0GNcP4/11cBVj00GAt5S3ssx6AZeIp+cMoKKx3Yhi1c9IJ
	Oc2k3W/OWHeo1urWuI3orrPIB86MBvC2c2bd6dtSy+vz8b9QebpUsXS0szp2eN+SXVYV4JXlq/JDO
	iMOs/FTA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769e-00000005rGO-1iQC;
	Tue, 22 Apr 2025 05:26:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u769X-00000005r9W-0hxv
	for barebox@lists.infradead.org;
	Tue, 22 Apr 2025 05:26:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-0003iy-TG; Tue, 22 Apr 2025 07:26:37 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-001UvA-2D;
	Tue, 22 Apr 2025 07:26:37 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u769V-00EN4R-1u;
	Tue, 22 Apr 2025 07:26:37 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Apr 2025 07:26:31 +0200
Message-Id: <20250422052635.3423961-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
References: <20250422052635.3423961-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250421_222639_215225_2BC5C941 
X-CRM114-Status: GOOD (  24.23  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/9] mci: pbl: add autodetection of BootROM-initialized standard capacity cards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We more or less manage without driver model in PBL, because we reuse
hardware setup done by the BootROM.

In case of SD/eMMC cards, this presents one annoying problem: A card in
transfer state can't be asked whether it's standard or high capacity,
but we require this information to know whether we need to use a byte or
a block offset for the READ_MULTIPLE_BLOCK command.

We had a number of workaround for that:

  - On i.MX, the bootloader is located raw near the start of the SD/MMC,
    so we just read from offset 0 onwards and then jump to the correct
    location

  - On AT91SAM9, the BootROM supports only standard capacity SD-Cards,
    so we hardcode that

  - On older platforms, we have a separate configuration for the
    first stage that can use the normal mci-core and reinitialized
    the card with the downside of needing two builds.

  - On everything else, we assume that we have a high capacity card.

Fortunately, at the modest cost of 4 commands, we can get out
of transmission mode, ask the card for its capacity and back,
so let's do that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-pbl.c | 108 ++++++++++++++++++++++++++++++++++++++++--
 1 file changed, 105 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/mci-pbl.c b/drivers/mci/mci-pbl.c
index b58cd8dafe84..610002b3d022 100644
--- a/drivers/mci/mci-pbl.c
+++ b/drivers/mci/mci-pbl.c
@@ -1,4 +1,5 @@
 // SPDX-License-Identifier: GPL-2.0-only
+// SPDX-FileCopyrightText: 2025 Ahmad Fatoum
 /*
  * This code assumes that the SD/eMMC is already in transfer mode,
  * because it card initialization has been done by the BootROM.
@@ -16,7 +17,6 @@
 #include <pbl/mci.h>
 #include <pbl/bio.h>
 #include <linux/minmax.h>
-#include <linux/bug.h>
 
 #define MCI_PBL_BLOCK_LEN		512
 
@@ -76,6 +76,22 @@ static int pbl_bio_mci_read(struct pbl_bio *bio, off_t start,
 	return count;
 }
 
+static enum pbl_mci_capacity capacity_decode(unsigned csd_struct_ver)
+{
+	switch (csd_struct_ver) {
+	case 0:
+		return PBL_MCI_STANDARD_CAPACITY;
+	case 1:
+		return PBL_MCI_HIGH_CAPACITY;
+	case 2:
+		return PBL_MCI_ULTRA_CAPACITY;
+	case 3:
+		return PBL_MCI_RESERVED_CAPACITY;
+	}
+
+	return PBL_MCI_UNKNOWN_CAPACITY;
+}
+
 static const char *capacity_tostr(enum pbl_mci_capacity capacity)
 {
 	switch (capacity) {
@@ -94,11 +110,97 @@ static const char *capacity_tostr(enum pbl_mci_capacity capacity)
 	return "unknown";
 }
 
+/**
+ * pbl_mci_check_high_capacity() - Determine what type of card we have
+ * @mci: already initialized MCI card
+ *
+ * Standard capacity cards use a byte offset for the READ_MULTIPLE_BLOCK
+ * command argument, which high capacity uses a block offset.
+ *
+ * As we haven't set up the card ourselves here, we do not have
+ * this information directly available.
+ *
+ * A workaround is reading from address 0 onwards, which works for raw
+ * second stage barebox located near start of the card, but is not so
+ * good when we need to load barebox from a file system.
+ *
+ * This function implements the necessary state transitions, so we
+ * can reread the CSD and determine, which the card is high capacity
+ * or not.
+ *
+ * Refer to Part1_Physical_Layer_Simplified_Specification_Ver9.00.pdf
+ * "Figure 4-13 : SD Memory Card State Diagram (data transfer mode)"
+ * for a visualization of how this works.
+ *
+ * Return: 0 when capacity type could be determined and
+ * mci->high_capacity was updated or a negative return code upon error.
+ */
+static int pbl_mci_check_high_capacity(struct pbl_mci *mci)
+{
+	struct mci_cmd cmd = {};
+	unsigned rca_arg = 0; /* RCA shifted up by 16 bis */
+	int ret, ret2;
+
+	/* CMD7: Deselect all cards and move into standby mode */
+	mci_setup_cmd(&cmd, MMC_CMD_SELECT_CARD, 0, MMC_RSP_NONE);
+	ret = pbl_mci_send_cmd(mci, &cmd, NULL);
+	if (ret) {
+		pr_debug("deselecting cards failed: %d\n", ret);
+		return ret;
+	}
+
+	/*
+	 * CMD3: Need to get RCA for SDs, so we can use it to communicate
+	 * with the correct SD (argument to CMD9)
+	 *
+	 * TODO: What to do about eMMCs? These would get a
+	 * MMC_CMD_SET_RELATIVE_ADDR here
+	 *
+	 * Figure 27 — e•MMC state diagram (data transfer mode) n
+	 * JESD84-B51.pdf doesn't list CMD3 as allowed command while
+	 * in stand-by mode
+	 */
+	mci_setup_cmd(&cmd, SD_CMD_SEND_RELATIVE_ADDR, 0, MMC_RSP_R6);
+	ret = pbl_mci_send_cmd(mci, &cmd, NULL);
+	if (ret) {
+		pr_debug("sending relative address failed: %d\n", ret);
+		goto out;
+	}
+
+	rca_arg = cmd.response[0] & GENMASK(31, 16);
+
+	/* CMD9: Get the Card-Specific Data */
+	mci_setup_cmd(&cmd, MMC_CMD_SEND_CSD, rca_arg, MMC_RSP_R2);
+	ret = pbl_mci_send_cmd(mci, &cmd, NULL);
+	if (ret) {
+		pr_err("sending CSD failed: %d\n", ret);
+		goto out;
+	}
+
+	/* Check CSD version */
+	mci->capacity = capacity_decode(cmd.response[0] >> 30);
+	pr_debug("detect %s capacity\n", capacity_tostr(mci->capacity));
+
+out:
+	/* CMD7: now let's got get back to transfer mode */
+	mci_setup_cmd(&cmd, MMC_CMD_SELECT_CARD, rca_arg, MMC_RSP_R1b);
+	ret2 = pbl_mci_send_cmd(mci, &cmd, NULL);
+	if (ret2) {
+		pr_err("reselecting card with %x failed: %d\n", rca_arg, ret2);
+		return ret2;
+	}
+
+	return ret;
+}
+
 int pbl_mci_bio_init(struct pbl_mci *mci, struct pbl_bio *bio)
 {
-
+	/*
+	 * There's no useful recovery possible here, so we try to continue
+	 * after having printed an error
+	 */
 	if (mci->capacity == PBL_MCI_UNKNOWN_CAPACITY)
-		BUG();
+		(void)pbl_mci_check_high_capacity(mci);
 	else
 		pr_debug("assuming %s capacity card\n",
 			 capacity_tostr(mci->capacity));
-- 
2.39.5



