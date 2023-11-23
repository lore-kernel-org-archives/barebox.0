Delivery-date: Thu, 23 Nov 2023 11:41:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r678x-005jdK-2w
	for lore@lore.pengutronix.de;
	Thu, 23 Nov 2023 11:41:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r678x-0003Xf-Uw
	for lore@pengutronix.de; Thu, 23 Nov 2023 11:41:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tc/podl8F+trbGIsARHrOfVDk3cyM5O1l1U9btuhkhc=; b=v3n95vPjFnNcyMhVQvvZ/Lbq6+
	OtEiyqg5CimsRfBmQNb1+8fWUhC0bJbAayzNqc3WNevUcGUceCFhPs0ie5LtsgSg4BOdfEx5/9ieL
	Z/FqWnjTeppudwTZ6gTZYVA4A76CkCooyF8d8uo6QxQM/c/7hQradvPX3Yn35ffNYhUfFOQPzDrhb
	hN7e8Lmlz+QQuWAmMMAUbJi2SJMxvwUMCeGNkOG5Dcst/z4MCA22qFtdpuF2PQOGLlTnprjJQQwpz
	lNboVj5gAkj12rPZT6Z/YQt+oOaI4ebOpHocVIX9hh5XPsiIbPWN/c7QSBcv0v0fRbZrnG2M0mlDV
	2Brcpa6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r677W-004PFJ-1u;
	Thu, 23 Nov 2023 10:39:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r677T-004PDP-23
	for barebox@lists.infradead.org;
	Thu, 23 Nov 2023 10:39:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r677P-0003CI-Di; Thu, 23 Nov 2023 11:39:35 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r677P-00B1ET-12; Thu, 23 Nov 2023 11:39:35 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r677O-001x3o-30;
	Thu, 23 Nov 2023 11:39:34 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Nov 2023 11:38:07 +0100
Message-Id: <20231123103808.432548-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231123_023939_678053_B416D62A 
X-CRM114-Status: GOOD (  13.63  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] mci: core: check for both 3.3v and 1.8v DDR support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't yet support the higher speed modes that require voltage
switching, so regulator interaction in barebox was so far limited to
enabling the supply. barebox also doesn't keep track what voltage the
eMMC is running on, so it doesn't know whether MMC_CAP_MMC_1_8V_DDR
or MMC_CAP_MMC_3_3V_DDR is the correct bit to check. Let's just accept
either until we add support for higher speed modes. barebox will
fallback to the non-DDR speed mode anyway if it fails to read the
ext_csd using it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 175753cca5d7..07eca96a9d61 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1289,7 +1289,13 @@ static int mci_mmc_select_hs_ddr(struct mci *mci)
 	struct mci_host *host = mci->host;
 	int ret;
 
-	if (!(mci_caps(mci) & MMC_CAP_MMC_1_8V_DDR))
+	/*
+	 * barebox MCI core does not change voltage, so we don't know here
+	 * if we should check for the 1.8v or 3.3v mode. Until we support
+	 * higher speed modes that require voltage switching like HS200/HS400,
+	 * let's just check for either bit.
+	 */
+	if (!(mci_caps(mci) & (MMC_CAP_MMC_1_8V_DDR | MMC_CAP_MMC_3_3V_DDR)))
 		return 0;
 
 	ret = mci_mmc_try_bus_width(mci, host->bus_width, MMC_TIMING_MMC_DDR52);
-- 
2.39.2



