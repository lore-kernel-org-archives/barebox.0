Delivery-date: Thu, 13 Jun 2024 17:28:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHmNF-005REZ-29
	for lore@lore.pengutronix.de;
	Thu, 13 Jun 2024 17:28:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sHmNE-0000tE-Tv
	for lore@pengutronix.de; Thu, 13 Jun 2024 17:28:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=b5grCmylhFoBmdUX8u6TgvutsHS2hpxecTEFxujIA0A=; b=Wbt+DE9l6V2Hxk3xuaJhPSgxyZ
	XCvBQ8DigSgFZOG+sY1Ewmw5oLNxXXWa18c6YBDE67EoJlcj7H8d9GZJ6+ogajxHl6cPyDhthiYMC
	ERojLsB8VUbEYQ76vMit89h29Yd5Ix1a4fWZkOOUByt2493y+/NssaBFc7eu3nD1m6KhYiMWIg2qd
	xMwjLKcRHKczpXrTFw1dJUFm/iUmuUoMytcgD51GJ3q+l4VxcUZgZmbc9GupzflKD/AFjOVbjMsCN
	IIfCCYkTQpthzlQbMEuouXjYAFBuXaWfg/YHoXll/48966Feu8lr/E93akb5/QgiOMePCEtcuY8ID
	W+nsKzIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHmMX-0000000HATr-2JoL;
	Thu, 13 Jun 2024 15:27:41 +0000
Received: from xvm-107-148.dc0.ghst.net ([46.226.107.148] helo=zdiv.net)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHmMR-0000000HAOU-2fMN
	for barebox@lists.infradead.org;
	Thu, 13 Jun 2024 15:27:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=zdiv.net; s=23;
	t=1718292452;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=b5grCmylhFoBmdUX8u6TgvutsHS2hpxecTEFxujIA0A=;
	b=ME9L4NcbytvYTb4euOmhW3wqkmwQigL4mXSIWm6FhpXySezsPzBT+nomfJMII941SxK82m
	VfSnCiCRum6C5gYb0G24b8DM+idD/kc7JX5ao/VQyYmqXVXsbY7fgS7fEkIPGz2F+Zy/fv
	coS2DU9B4o4+Q4ck8upubMNUL/d6GXBNp2odrXfQH8c2ioY5z4pbgib773z9eaIGuGGhUI
	Bpt73oKKEm0agfVQtj5F57h/WygvE7sSv/qXlNtRvnCpm0jCHHNeakQHo5h/aP/F8RgTMv
	lLLZOK6fUoFT0zySTq5/FV2WpAsR61EWaPyFHbbOYS3Js/yWT0xXPN9vyNbcBw==
Received: from mini.my.domain (91-160-75-97.subs.proxad.net [91.160.75.97])
	by zdiv.net (OpenSMTPD) with ESMTPSA id 2cd0bf3f (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO);
	Thu, 13 Jun 2024 15:27:32 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 13 Jun 2024 17:27:24 +0200
Message-ID: <20240613152724.12914-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.45.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_082736_235532_5676BD73 
X-CRM114-Status: UNSURE (   7.15  )
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
Subject: [PATCH] mci: core: clarify why write_bl_len is the same as read_bl_len
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@zdiv.net>
---
 drivers/mci/mci-core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 5a8f81ecb8..0afb0d26c8 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -1070,8 +1070,12 @@ static void mci_extract_block_lengths_from_csd(struct mci *mci)
 {
 	mci->read_bl_len = 1 << UNSTUFF_BITS(mci->csd, 80, 4);
 
+	/* Quoting Physical Layer Simplified Specification Version 9.10:
+	 * Note that in an SD Memory Card the WRITE_BL_LEN is always
+	 * equal to READ_BL_LEN.
+	 */
 	if (IS_SD(mci))
-		mci->write_bl_len = mci->read_bl_len;	/* FIXME why? */
+		mci->write_bl_len = mci->read_bl_len;
 	else
 		mci->write_bl_len = 1 << ((mci->csd[3] >> 22) & 0xf);
 
-- 
2.45.0



