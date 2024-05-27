Delivery-date: Mon, 27 May 2024 12:28:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBXaK-000f0b-1M
	for lore@lore.pengutronix.de;
	Mon, 27 May 2024 12:28:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sBXaJ-0005oU-PN
	for lore@pengutronix.de; Mon, 27 May 2024 12:28:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WAl+WwdN8U3USFXMDyyPV5LlifC234dmB9UaJWrtUNU=; b=HgiAftx+SJq+Et
	PovgHQ4wvaV1Uxka8U/Aijhy4l4UBV6XHgfo34HNH5AWkrcANBmrm2mbENTI8/h99quQHT8yA0P3H
	S5HC6fqoTMYmiZr9+wqkZ3Id7bertItNMayT9tkZ5yWy3XILhXumR6MTdOi1wQ+rEERW4QivutZ6Q
	gf9IHBGRgkQFhunNUigFWjbne3SUpGaP9evao6GUruizCjoneNIErd3y4914PAubqU/NryXdeosnV
	4rFK2rJQpxdg1QrVHU2fRgxBDOOdraziHGG2sJdfWULLWI4FMDcwYjq13IrDw2TKdC90pWYjLFDbK
	FoEU++1nTPc0irdMNfFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBXZs-0000000EaDy-0IbW;
	Mon, 27 May 2024 10:27:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sBXZl-0000000EaAE-2KRt
	for barebox@lists.infradead.org;
	Mon, 27 May 2024 10:27:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZc-0005RI-DD; Mon, 27 May 2024 12:27:24 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZc-003Asu-0M; Mon, 27 May 2024 12:27:24 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1sBXZb-00Ejyk-2w;
	Mon, 27 May 2024 12:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 27 May 2024 12:27:19 +0200
Message-Id: <20240527102723.3504270-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240527102723.3504270-1-s.hauer@pengutronix.de>
References: <20240527102723.3504270-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240527_032733_657948_3BFE5585 
X-CRM114-Status: GOOD (  16.38  )
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
Cc: jianqiang wang <wjq.sec@gmail.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 3/7] net: ks8851_mll: do not read past the receive buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

the hardware may report a packet longer than our receive buffer. Instead
of reading past the receive buffer, discard too long packets.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/ks8851_mll.c | 36 ++++++++++++++++++++++++++++++------
 1 file changed, 30 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ks8851_mll.c b/drivers/net/ks8851_mll.c
index 2120657bd9..936191597a 100644
--- a/drivers/net/ks8851_mll.c
+++ b/drivers/net/ks8851_mll.c
@@ -420,6 +420,23 @@ static inline void ks_inblk(struct ks_net *ks, u16 *wptr, u32 len)
 		*wptr++ = (u16)readw(ks->hw_addr);
 }
 
+/**
+ * ks_discardblk - read a block of data from QMU discarding the data
+ * @ks: The chip state
+ * @len: length in byte to read
+ *
+ * This discards a block of data, used when a packet is longer than our receive
+ * buffer. I don't know if it is necessary to discard the data like this, but
+ * it is the easy way out to fix the behaviour with too large packets without
+ * risking regressions.
+ */
+static inline void ks_discardblk(struct ks_net *ks, u32 len)
+{
+	len >>= 1;
+	while (len--)
+		(void)readw(ks->hw_addr);
+}
+
 /**
  * ks_outblk - write data to QMU.
  * @ks: The chip information
@@ -676,16 +693,23 @@ static int ks8851_rx_frame(struct ks_net *ks)
 
 	tmp_rxqcr = ks_rdreg16(ks, KS_RXQCR);
 	ks_wrreg16(ks, KS_RXQCR, tmp_rxqcr | RXQCR_SDA);
-	/* read 2 bytes for dummy, 2 for status, 2 for len*/
-	ks_inblk(ks, ks->rx_buf, 2 + 2 + 2);
-	ks_inblk(ks, ks->rx_buf, ALIGN(RxLen, 4));
+	if (RxLen <= PKTSIZE) {
+		/* read 2 bytes for dummy, 2 for status, 2 for len*/
+		ks_inblk(ks, ks->rx_buf, 2 + 2 + 2);
+		ks_inblk(ks, ks->rx_buf, ALIGN(RxLen, 4));
+	} else {
+		ks_discardblk(ks, 2 + 2 + 2 + ALIGN(RxLen, 4));
+	}
+
 	ks_wrreg16(ks, KS_RXQCR, tmp_rxqcr);
 
 	if (RxStatus & RXFSHR_RXFV) {
 		/* Pass to upper layer */
-		dev_dbg(dev, "passing packet to upper layer\n\n");
-		net_receive(&ks->edev, ks->rx_buf, RxLen);
-		return RxLen;
+		if (RxLen <= PKTSIZE) {
+			dev_dbg(dev, "passing packet to upper layer\n\n");
+			net_receive(&ks->edev, ks->rx_buf, RxLen);
+		}
+		return;
 	} else if (RxStatus & RXFSHR_ERR) {
 		dev_err(dev, "RxStatus error 0x%04x\n", RxStatus & RXFSHR_ERR);
 		if (RxStatus & RXFSHR_RXICMPFCS)
-- 
2.39.2



