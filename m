Delivery-date: Wed, 03 Apr 2024 11:04:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrwY9-005bF7-2N
	for lore@lore.pengutronix.de;
	Wed, 03 Apr 2024 11:04:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrwY3-0006qs-Pd
	for lore@pengutronix.de; Wed, 03 Apr 2024 11:04:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y/bGR7RkOO11BDGewuobs2dwn2QAJx9G0zD/NRpc2c0=; b=DisfGlXxP4GFxVHr/Ohe5ap/QZ
	9v/yKYaXr4EE2PgVe2muXPvMf/YQHl0vMhOqO8Xk4s27BLVr8afYc0j0GsnGYlFUvhjiqXqrueacD
	Iio0AnrxJSUmVrogYsw6R61eUeLg3A0jvquDV4NXCxfCc7hkLanqtazDNgJqXEF7N6Ld+zzCTzrO3
	/gexLDW6KaE35+WCKHs/XJvTdpbpqgY4wdNydLuBp90w4yo7Tu0bVpXLt1qedaQT25ZTTzJa0tYtC
	CSGp54veQW1fpDBFfcL4TQiy92FwFUDDbiIEMJkW0/Q2ANl4/RZXObKmgA/uXw7KGDgn6waUDn9FU
	KK7a332A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrwXP-0000000F5w0-0rJB;
	Wed, 03 Apr 2024 09:04:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrwXM-0000000F5uF-113K
	for barebox@lists.infradead.org;
	Wed, 03 Apr 2024 09:04:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rrwXD-0005zo-2L; Wed, 03 Apr 2024 11:03:55 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rrwXC-00A8sa-Lq; Wed, 03 Apr 2024 11:03:54 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rrwXC-00CUIP-1s;
	Wed, 03 Apr 2024 11:03:54 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Apr 2024 11:03:53 +0200
Message-Id: <20240403090353.2976380-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240403090353.2976380-1-a.fatoum@pengutronix.de>
References: <20240403090353.2976380-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240403_020404_399864_86CBB737 
X-CRM114-Status: GOOD (  13.72  )
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
Subject: [PATCH 2/2] mci: remove FIXME in rca description
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The FIXME was added in the commit introducing the file many years ago.
The RCA is a bit special in that it's unused for SPI, reported by the
card for MMC and set by the host for SD. There are comments describing
this in the MCI core, so just explain the abbreviation in the
documentation comment.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/mci.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/mci.h b/include/mci.h
index 5781fb8ea381..2274ca8e97d5 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -564,7 +564,7 @@ struct mci {
 	unsigned scr[2];
 	unsigned csd[4];	/**< card's "card specific data register" */
 	unsigned cid[4];	/**< card's "card identification register" */
-	unsigned short rca;	/* FIXME */
+	unsigned short rca;	/**< relative card address */
 	bool sdio;              /**< card is a SDIO card */
 	bool high_capacity;	/**< high capacity card is connected (OCR -> OCR_HCS) */
 	unsigned tran_speed;	/**< Maximum transfer speed */
-- 
2.39.2



