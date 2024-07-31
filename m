Delivery-date: Wed, 31 Jul 2024 10:05:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LN-004jWw-32
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 10:05:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LN-0004Op-3d
	for lore@pengutronix.de; Wed, 31 Jul 2024 10:05:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YBV94QWwIX0NUa4I2d8qmdVZCbtQUTFl2jZ/dtlFALE=; b=UltTfk7yFT6Zrger9fpq1/X1rF
	woQWOf9W6iwtkzZGlPDPSuUXGLfTd2tsjKxhlvFLNcvNtvgqRmwJsYtTps1uBzqPr6/vWzrqQUozX
	0WqjqUwnN5WsUg9TqiNEOMN4c5HNPYmGO9bxfuIFlDYwftAoxULUlFu6RYEtEXbq7m7+Y/aLsjV+f
	VNIGL2ankeuyXccFVBvvKUSCIVQZ7pkZGBJ5z0pYAqKJtQ+6x5kahMvRokuVzUMvQX8YmMl1hoqtF
	ZMIHkIdy8oZsVJida/oLDoYDCyS95VvE+WpfgNwPpgOpiOTBub445et+g7ARjP9Ppdgaz959glL7f
	79GI2GSA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Kt-00000000FAO-0YwP;
	Wed, 31 Jul 2024 08:05:27 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Kn-00000000F6b-1SL6
	for barebox@bombadil.infradead.org;
	Wed, 31 Jul 2024 08:05:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=YBV94QWwIX0NUa4I2d8qmdVZCbtQUTFl2jZ/dtlFALE=; b=jxJfOq8D7qlD4LJLeFAPc8bwUd
	PUaG52YlUDd64ik04FRu7XyPE0knk07kj6R6+PX5r/OGM8KKHo7ODuhnLn+V7rwy5id3KgLZoxMQT
	ZadCAvZg88V2OgSm9NUP+yj/mlt1DbG3C68VtWaN75oZBtMk6o9kC55IClYQRshtJu43PfV8xAewY
	bZDR6jBi5LO/SxIzmxT0HjzWg0Bjwv/Vv/lHEVrtIR1a+9FDVEeXX0XZdMOae92QMuZJDt949RetI
	9ll43QQH9R0f+JcX/PzzFCw/jjT4be0GtceaGhTesued9TfKaPGXiyF+pp1aAoGlUNvuNFKGTWnMB
	TIxdx9wQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Ki-00000005ATw-33W1
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 08:05:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-0003yE-JU; Wed, 31 Jul 2024 10:05:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-003Tfm-5p; Wed, 31 Jul 2024 10:05:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-001Wt2-0I;
	Wed, 31 Jul 2024 10:05:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2024 10:05:05 +0200
Message-Id: <20240731080510.364706-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731080510.364706-1-a.fatoum@pengutronix.de>
References: <20240731080510.364706-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_090517_208231_6DED48B4 
X-CRM114-Status: GOOD (  11.62  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 05/10] mci: turn bool members into bitfield in struct mci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for adding more boolean flags, turn the current two bools
into two bits sharing the same u8-sized member.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 include/mci.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/include/mci.h b/include/mci.h
index 773aed896c96..4f1ff9dc57c8 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -568,8 +568,8 @@ struct mci {
 	unsigned csd[4];	/**< card's "card specific data register" */
 	unsigned cid[4];	/**< card's "card identification register" */
 	unsigned short rca;	/**< relative card address */
-	bool sdio;              /**< card is a SDIO card */
-	bool high_capacity;	/**< high capacity card is connected (OCR -> OCR_HCS) */
+	u8 sdio:1;              /**< card is a SDIO card */
+	u8 high_capacity:1;	/**< high capacity card is connected (OCR -> OCR_HCS) */
 	unsigned tran_speed;	/**< Maximum transfer speed */
 	/** currently used data block length for read accesses */
 	unsigned read_bl_len;
-- 
2.39.2



