Delivery-date: Wed, 06 Mar 2024 19:46:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhwHP-00BCAJ-2a
	for lore@lore.pengutronix.de;
	Wed, 06 Mar 2024 19:46:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhwHP-00080S-7P
	for lore@pengutronix.de; Wed, 06 Mar 2024 19:46:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hKWSu+5TvTkMwokIR4aHyol3R4WcEXOgAAN/7DTIuC0=; b=L+YnXZiLkKvHnPVJPNXB2TFl3f
	XHtaVkxMvirwqccgsRd4hbosRHh9w0t87foIrp5jAPIys7wS608VwlWHnTpZeCHEAtDAMyT8DgSYb
	fsPZ7nOZyVnBb+q64hl/jeU8w5mkWeW/Qlnj2I/4q7/QaNM9A9ZAkDteBCmqZD6bpvIVGDGokMjlV
	h1LadtcH6HcX4Sh6sWsMMn+rkN487FVAohryI9Do+YLKrpQW8hwnO4CqgT4RYLNXp/8TDxODkKdVG
	ZjP7y4eaB2cFcBEZuPZ/YaNepzVGqvHkKmzsoOXSjGOJVNNf9ih+Vi83TsW5DWhzPM+DUida7WaIs
	TKjdF/TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhwGm-00000001WAy-23YQ;
	Wed, 06 Mar 2024 18:45:36 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhwGf-00000001W7I-0Upv
	for barebox@lists.infradead.org;
	Wed, 06 Mar 2024 18:45:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhwGe-00078a-0E; Wed, 06 Mar 2024 19:45:28 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhwGd-004nZY-KF; Wed, 06 Mar 2024 19:45:27 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhwGd-002d7c-05;
	Wed, 06 Mar 2024 19:45:27 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  6 Mar 2024 19:45:26 +0100
Message-Id: <20240306184526.627028-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240306_104529_278978_DFBA1916 
X-CRM114-Status: UNSURE (   9.46  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mci: add comment about hardcoded 512 bytes for DDR
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Quoting eMMC 5.1 6.6.24 Dual Data Rate mode operation[1]:

  After the Device has been enabled for dual data rate operating mode, the
  block length parameter of CMD17, CMD18, CMD24, CMD25 and CMD56
  automatically default to 512 bytes and cannot be changed by CMD16
  (SET_BLOCKLEN) command that becomes illegal in this mode.

barebox observes this by hardcoding the block length in DDR mode, but
a comment would be a welcome addition to explain why.

[1]: JESD84-B51, February 2015

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/mci-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index bd9083b9f77c..aa222ea1bcc8 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1295,6 +1295,7 @@ static int mci_mmc_select_hs_ddr(struct mci *mci)
 	if (ret < 0)
 		return mci_mmc_try_bus_width(mci, host->bus_width, MMC_TIMING_MMC_HS);
 
+	/* Block length is fixed to 512 bytes while in DDR mode */
 	mci->read_bl_len = SECTOR_SIZE;
 	mci->write_bl_len = SECTOR_SIZE;
 
-- 
2.39.2



