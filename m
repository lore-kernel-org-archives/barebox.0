Delivery-date: Mon, 13 May 2024 11:59:34 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6ST0-00CQRm-1o
	for lore@lore.pengutronix.de;
	Mon, 13 May 2024 11:59:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s6SSz-0004LO-3L
	for lore@pengutronix.de; Mon, 13 May 2024 11:59:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=HCyoBXs8oBwCqN8d83lQFghUA08FvGqjDYnQK1317t0=; b=a6FAkIDjMCAKs6EHmsz//F4yxo
	eaK949B0xA+bvBkTB/5pyp2rOheNNAiwAyXtuGmjEWR865i1GXid1kK96FOuGguJhq2Hj+qug3+Kr
	3qV2sQ9GpgtKC8bgiz+UbGpjvv7ImRj3htzDF+KzKC8WZYB8kLGfXitpg963uAj2Pl/WmtcjxxXGb
	s3cVY0WGFlGDn2IgJ6rzGKvLvdIEFQdqkugFzcyGWWeeLkAw2rqcveO7CAId9sfAtks+BI7x3/Pqu
	67XZhNIHfnPyQVVVKxwpsdofRG/kwHCQshB2rKYyJTkRZg9qp0wTyvsGsmkEXoDbJdVduf393f0NJ
	eYFHP1Ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6SSO-0000000CSw2-3Nuc;
	Mon, 13 May 2024 09:58:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s6SSK-0000000CSuD-30em
	for barebox@lists.infradead.org;
	Mon, 13 May 2024 09:58:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s6SSH-00047n-D1; Mon, 13 May 2024 11:58:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s6SSH-00191H-0W; Mon, 13 May 2024 11:58:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s6SSG-00AAQ6-2x;
	Mon, 13 May 2024 11:58:48 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 May 2024 11:58:46 +0200
Message-Id: <20240513095847.2420044-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240513095847.2420044-1-a.fatoum@pengutronix.de>
References: <20240513095847.2420044-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240513_025852_782008_D949AF29 
X-CRM114-Status: UNSURE (   8.78  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] mci: core: remove HS200 from mci_timing_is_ddr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

HS200 is a single date rate speed mode. HS400 is the DDR variant, so
drop the former from the mci_timing_is_ddr list.

No functional change expected as the only driver that currently
supported HS200 doesn't call this function anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mci.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/include/mci.h b/include/mci.h
index 3612c50b1398..b87301f97d47 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -446,7 +446,6 @@ static inline bool mci_timing_is_ddr(enum mci_timing timing)
 {
 	switch (timing) {
 	case MMC_TIMING_UHS_DDR50:
-	case MMC_TIMING_MMC_HS200:
 	case MMC_TIMING_MMC_DDR52:
 	case MMC_TIMING_MMC_HS400:
 		return true;
-- 
2.39.2



