Delivery-date: Thu, 13 Jun 2024 15:29:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkW6-005OLH-2k
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 15:29:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHkW6-000886-9x
	for lore@pengutronix.de; Thu, 13 Jun 2024 15:29:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Va55t7nRccPcJQQSe8UxRn6YDZLv/dukgTUnxh6fOIo=; b=m+PKiK2tfqxq6OYaoJY5nDQMVQ
	78nXRQ+y3h5YkYlUmndmTWVXoGrDWDuTXrNb3mYOwwKLbzmPFK/90/7cRjw6H7NCTv+V++nOlovQw
	c8Fx+42VicHhVrHZMbliMcIu5Uo8rtsDzngKSvIYTFi+siKRZV7kDbQtCYSgmK03nAFzSTcnkJBRe
	KxDwUNZ50bDUOZ00/71PnOPp+KQ7vDQUlGnxnmeeifrAgD7tGbmXDBSVeE7jJFcsoEiHOTd+mLsTk
	Ynten7wTVx+yDg6IUnOqV9oCzpBvBsxl4Xt9jWz9vgC/6PWIlOgh3jYesII9pgdNPejJraZOb8iT1
	MbFy7C2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkVb-0000000GjOP-1y42;
	Thu, 13 Jun 2024 13:28:55 +0000
Received: from xvm-107-148.dc0.ghst.net ([46.226.107.148] helo=zdiv.net)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHkVY-0000000GjNK-1yQm
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 13:28:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=23;
	t=1718285327;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Va55t7nRccPcJQQSe8UxRn6YDZLv/dukgTUnxh6fOIo=;
	b=PM1Y4NYCUmXuqvnXlOdI5MZjQkVK/JRLP+L5OCWKWMqJHHntX3jSA6Nc4ug8x88C7z29Of
	Z+JP2/3Ok9d9a6W6AV2pkCkripOjjX1IpZxRwxQ365t/6browqkSY/hNvT38M+Pc/bxlQ3
	+fer9cjRnUexrO3bk4LiWGML85k/tTM17egOz/0Jk3xBXvB+FNlhKM15MLulv0x8+k1zao
	UMKS8otYFQB9j2dks/BkVJxtGNHHD8it4FeBMwIcabYK3r+sGZcM/5BcB1WPmqB/1CBwAI
	kbxUjeWodBiVkK5f9GD1/cYqjFGzaQSXhnMEdt5/mnE6Tek0BjVFJlH8WNIPDw==
Received: from mini.my.domain (91-160-75-97.subs.proxad.net [91.160.75.97])
	by zdiv.net (OpenSMTPD) with ESMTPSA id aff733ab (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 13 Jun 2024 13:28:47 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 13 Jun 2024 15:28:20 +0200
Message-ID: <20240613132820.14920-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_062852_804390_926090F9 
X-CRM114-Status: UNSURE (   9.29  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mci: core: fix typos
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/mci/mci-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index b4139be11e..de1efe3bb9 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1619,7 +1619,7 @@ static int mci_startup(struct mci *mci)
 
 	/*
 	 * For MMC cards, set the Relative Address.
-	 * For SD cards, get the Relatvie Address.
+	 * For SD cards, get the Relative Address.
 	 * This also puts the cards into Standby State
 	 */
 	if (!mmc_host_is_spi(host)) { /* cmd not supported in spi */
@@ -1655,7 +1655,7 @@ static int mci_startup(struct mci *mci)
 	mci_extract_block_lengths_from_csd(mci);
 	mci_extract_card_dsr_imp_from_csd(mci);
 
-	/* sanitiy? */
+	/* sanity? */
 	if (mci->read_bl_len > SECTOR_SIZE) {
 		mci->read_bl_len = SECTOR_SIZE;
 		dev_dbg(&mci->dev, "Limiting max. read block size down to %u\n",
-- 
2.45.0



