Delivery-date: Tue, 18 Apr 2023 11:31:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pohgj-007X00-AG
	for lore@lore.pengutronix.de; Tue, 18 Apr 2023 11:31:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pohgj-0006wH-2w
	for lore@pengutronix.de; Tue, 18 Apr 2023 11:31:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CvDIpjt0b/eTC5sGR+mg+CJWX7T23ndSteN/ycmVmSQ=; b=lbEQLtoLTTRCy+4BF5NnD6PVxj
	A84fs2U39OnSNTylFMnURJ9IHFkGZv2wzw5NctigTA+QxErqs1N6mgFnq2BkjYDz/gkHHA2hXE2B/
	VavXPnO83orPnffqf7iULYEf9jxT8tDK4icBoJG8ZiEQUvpfbQn/UcwKEnd7J8+B0fWkuh5HF8OR/
	t1h6MD+MVIAh78Mnv8RXrklPxQdNADdQmaPBgvjS+Tb4/W2FJ6dhPXru555xiQEfnhptQnJHKkLsg
	zXcIewQn3AUdg8zGB3aEW4cbA/frp8ZIKzAtrt7ULYDOrgE/jWakC22mOL3OzdSRr1IqjgbeWDk7c
	zHXuZZEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pohfn-001Thz-0Q;
	Tue, 18 Apr 2023 09:30:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pohfg-001Teb-0j
	for barebox@lists.infradead.org;
	Tue, 18 Apr 2023 09:30:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pohff-0006cK-18; Tue, 18 Apr 2023 11:30:43 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfe-00C4gA-Dp; Tue, 18 Apr 2023 11:30:42 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pohfd-007pUq-3X; Tue, 18 Apr 2023 11:30:41 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 18 Apr 2023 11:30:37 +0200
Message-Id: <20230418093040.1865982-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230418093040.1865982-1-a.fatoum@pengutronix.de>
References: <20230418093040.1865982-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230418_023044_279035_26B528F1 
X-CRM114-Status: GOOD (  14.15  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/5] mci: introduce new dedicated enum mmc_bus_width type
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

To make it clearer that a bus width of 8 is not equal to integer 8,
let's give it a dedicated type. No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - new patch
---
 drivers/mci/mci-core.c |  6 +++---
 include/mci.h          | 20 ++++++++++----------
 2 files changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index f647cae8203b..2abed0011722 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -864,7 +864,7 @@ static void mci_set_clock(struct mci *mci, unsigned clock)
  * @param mci MCI instance
  * @param width New interface bit width (1, 4 or 8)
  */
-static void mci_set_bus_width(struct mci *mci, unsigned width)
+static void mci_set_bus_width(struct mci *mci, enum mci_bus_width width)
 {
 	struct mci_host *host = mci->host;
 
@@ -1055,7 +1055,7 @@ static void mci_extract_card_dsr_imp_from_csd(struct mci *mci)
 	mci->dsr_imp = UNSTUFF_BITS(mci->csd, 76, 1);
 }
 
-static int mmc_compare_ext_csds(struct mci *mci, unsigned bus_width)
+static int mmc_compare_ext_csds(struct mci *mci, enum mci_bus_width bus_width)
 {
 	u8 *bw_ext_csd;
 	int err;
@@ -1176,7 +1176,7 @@ static int mci_startup_mmc(struct mci *mci)
 		EXT_CSD_BUS_WIDTH_4,
 		EXT_CSD_BUS_WIDTH_8,
 	};
-	static unsigned bus_widths[] = {
+	static enum mci_bus_width bus_widths[] = {
 		MMC_BUS_WIDTH_4,
 		MMC_BUS_WIDTH_8,
 	};
diff --git a/include/mci.h b/include/mci.h
index c38567303241..a3f6d619b361 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -410,16 +410,16 @@ enum mci_timing {
 	MMC_TIMING_MMC_HS400	= 8,
 };
 
-struct mci_ios {
-	unsigned int	clock;			/* clock rate */
-
-	unsigned char	bus_width;		/* data bus width */
-
-#define MMC_BUS_WIDTH_1		0
-#define MMC_BUS_WIDTH_4		2
-#define MMC_BUS_WIDTH_8		3
+enum mci_bus_width {
+	MMC_BUS_WIDTH_1		= 0,
+	MMC_BUS_WIDTH_4		= 2,
+	MMC_BUS_WIDTH_8		= 3,
+};
 
-	enum mci_timing	timing;			/* timing specification used */
+struct mci_ios {
+	unsigned int		clock;			/* clock rate */
+	enum mci_bus_width	bus_width;		/* data bus width */
+	enum mci_timing		timing;			/* timing specification used */
 };
 
 struct mci;
@@ -434,7 +434,7 @@ struct mci_host {
 	unsigned f_min;		/**< host interface lower limit */
 	unsigned f_max;		/**< host interface upper limit */
 	unsigned clock;		/**< Current clock used to talk to the card */
-	unsigned bus_width;	/**< used data bus width to the card */
+	enum mci_bus_width bus_width;	/**< used data bus width to the card */
 	enum mci_timing timing;	/**< used timing specification to the card */
 	unsigned max_req_size;
 	unsigned dsr_val;	/**< optional dsr value */
-- 
2.39.2



