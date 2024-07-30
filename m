Delivery-date: Tue, 30 Jul 2024 09:20:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYh9V-004O7A-1E
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 09:20:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYh9T-0007BF-UD
	for lore@pengutronix.de; Tue, 30 Jul 2024 09:20:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6+DLiixgT2wO9+2IkgjtfeUMZq9aoVkgmnK2+7xQrHg=; b=3l5jc5PZWHXUnk3VBM46zUu0dn
	3bqQggvXnA+1eqadKgnltA0XQ8TBNsSG5h4f/WgtRgDg7vRIFszVSJvjBno8GshjT7Lmhrwo7N1Wk
	i60aCP6IGelxAqnjiTmGdd1FBm5c+xR61mJBTND6lt9HI20FcnvbzRdUNa1/nQPe3J2hrMwOfMKwQ
	hDgvjJZK7lw9xhG6gPaAgjBPHkb1GJaa24XsK1EUMbQw4LZNSyfXMUFaHjCndlWSSgcgLLq05DyhI
	OrRjF+v1wfO3WEhvgKFzanAr8/Ox2eLlea71/pNwXu4U/wqD/4z3TQc5J7Hs44jdJARP/3FI7UIOV
	u/bkyCwQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYh91-0000000Dyyx-0fdK;
	Tue, 30 Jul 2024 07:19:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYh8u-0000000Dyuy-25H0
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 07:19:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh8s-0006nU-Oy; Tue, 30 Jul 2024 09:19:30 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh8s-003EJD-76; Tue, 30 Jul 2024 09:19:30 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh8s-008TRQ-0O;
	Tue, 30 Jul 2024 09:19:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Jul 2024 09:19:23 +0200
Message-Id: <20240730071929.2016537-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_001932_606221_10195669 
X-CRM114-Status: GOOD (  10.91  )
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
Subject: [PATCH 04/10] mci: turn bool members into bitfield in struct mci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for adding more boolean flags, turn the current two bools
into two bits sharing the same u8-sized member.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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



