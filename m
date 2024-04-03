Delivery-date: Wed, 03 Apr 2024 11:04:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrwYA-005bFO-0M
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 11:04:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrwY3-0006qu-UV
	for lore@pengutronix.de; Wed, 03 Apr 2024 11:04:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YNjBkqRXSY3TqzUs7aG0+d9ONh+7LqkctzqI+dgogj8=; b=Gnv/aNmN3ckukGkenLcoOjRae/
	nNx+djLf4HSDSB8aHu8Rml3P0nLz+rfvci4J14nmGKZuswaf4KI/qLLgaadV7486XV10VdHCAqzjV
	gwodhtHNsxKOekB7qfqwBJ91x4UkPsdeoauhoyfFbYzOmQTHLwac0MtbHb0Q/YDHTNDKpxUwpsvLk
	uMfHLO8US8upJBA0zTWN984I4Hsw0z2SR2We0mO/Kt2Z8CEaHJ0rUGyQeU2BjjNjoZ3k+eKTxIkT6
	P83vnF79Q/S2zdJH/z+LazC4r/4qAC/6DyWN4fVI9Qq6Cc16hAo869hQeMXyu30BBp+zEdVTvu2aX
	cL1VXYFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrwXH-0000000F5s3-3TQg;
	Wed, 03 Apr 2024 09:03:59 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrwXE-0000000F5qy-1wwJ
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 09:03:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rrwXD-0005zn-1y; Wed, 03 Apr 2024 11:03:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rrwXC-00A8sZ-KO; Wed, 03 Apr 2024 11:03:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rrwXC-00CUIP-1j;
	Wed, 03 Apr 2024 11:03:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Apr 2024 11:03:52 +0200
Message-Id: <20240403090353.2976380-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_020356_526326_6A5C7B72 
X-CRM114-Status: GOOD (  11.66  )
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
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] mci: improve packing of struct mci
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

rca will be at least 4-byte aligned due to being after a 4-byte member.
It's only 2 byte long though and followed by another 4 byte member,
wasting 2 bytes. Fill those up with the two 1-byte bool members we have.

This includes a change of type for high_capacity: This is ok, because
only 0 or 1 are ever saved into it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mci.h | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/include/mci.h b/include/mci.h
index 52bf84ecdbe2..5781fb8ea381 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -559,15 +559,14 @@ struct mci {
 	struct mci_host *host;		/**< the host for this card */
 	struct device dev;		/**< the device for our disk (mcix) */
 	unsigned version;
-	bool sdio;		/**< card is a SDIO card */
-	/** != 0 when a high capacity card is connected (OCR -> OCR_HCS) */
-	int high_capacity;
 	unsigned card_caps;	/**< Card's capabilities */
 	unsigned ocr;		/**< card's "operation condition register" */
 	unsigned scr[2];
 	unsigned csd[4];	/**< card's "card specific data register" */
 	unsigned cid[4];	/**< card's "card identification register" */
 	unsigned short rca;	/* FIXME */
+	bool sdio;              /**< card is a SDIO card */
+	bool high_capacity;	/**< high capacity card is connected (OCR -> OCR_HCS) */
 	unsigned tran_speed;	/**< Maximum transfer speed */
 	/** currently used data block length for read accesses */
 	unsigned read_bl_len;
-- 
2.39.2



