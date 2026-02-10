Delivery-date: Tue, 10 Feb 2026 13:53:17 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpnEz-000Aov-07
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 13:53:17 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpnEy-00088g-H7
	for lore@pengutronix.de; Tue, 10 Feb 2026 13:53:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uSacjWbpvYqoBZV8ArqFb6pjKENdblOA6B7tq+NuJNQ=; b=J1v1cXNXFrWjcdEp/J9K6vyuTi
	XZ1Wnpu3ihJEkV+PnmJkCkhk/0AiSRohGk2g7TLK9QwiFRLkvC6b9UFZ0lpVM8iGkbrz9CKBBydKj
	nuTYFDv2zMbKfIM2Y2uRywHbYsWhN5Eoi1men/Goo3GBZSfjKPShB4xh8I9rj+0JHDkbDrZ1YFdoH
	oQqMvFMMXmuJ5Ppkp5hIoEedScfQ9cZBIIRvYQ0mX9oFH/LmOnYjcgV1qI2FLtZvqqCZ6hPv4BaY+
	shrPhvxnvbTY1NBWLSa1iXMIsS9rafTbG5QpjkTFBG6+0QeB4R7SDTgITkrBEoALDtRU4fFCG74TS
	tOnl9y/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpnER-0000000GxWR-2Ati;
	Tue, 10 Feb 2026 12:52:43 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpnEM-0000000GxVC-3i0d
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 12:52:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1770727954; x=1773319954;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=fZFZ69Mt1n9tOsAf83nYh81pjJtpC7sJG2CQcukJan8=;
	b=MGHJKjSMViTes5y54mEnrfA1RCqC5oMajr7ThM+/KO0P2AJ/eB3PDWwo4Iaq6J4C
	cUMoVgTkBHsgDTCC3PqAsTKpvzlbzdtBLwn7XMTGna2D9+W8WR7CIfdJehr5+jJ7
	ohzBIjiTz8o0YWTbU/c5eVZaOsMiYfCo4PYrSPT+zKJjBdMSgXKahWQBzjze/fFD
	g+vuhEJPendw2MPqE8igk4qsJnAweHoSjgdZ0vGespKLVvPFvEeDs61fYtvq7Rcs
	m73aGkmIAF6Wj1mqXXz+F0UEEvW4jJLaxVx401qIxRJhtgLiYi3yab1TbUw2H/0f
	d57z8BvIdNp8ADWavYFsCw==;
X-AuditID: ac1001d4-ba83c380000daae5-41-698b2a120cca
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id 98.8D.43749.21A2B896; Tue, 10 Feb 2026 12:52:34 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Tue, 10 Feb 2026 12:52:22 +0000
Message-ID: <20260210125225.981725-2-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260210125225.981725-1-renaud.barbier@ametek.com>
References: <20260210125225.981725-1-renaud.barbier@ametek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCJMWRmVeSWpSXmKPExsXCtT5hnq6QVnemQddGeYsTi/uZLaa/DXJg
	8pi3M8Bj85L6AKYoLpuU1JzMstQifbsEroxLR44xFSxhr9h/9BRjA+Nv1i5GTg4JAROJv5Na
	2LsYuTiEBHYyShz/9IAdJMEmYCDx7+hXNhBbREBeYu7+NrAGZgE9iY4LE5lAbGEBO4kTdxaA
	1bMIqEqcnbebGcTmFbCX+Pv4OiPEAnmJxTuWg8U5BRwknq4+DmYLAdX8vLeDCaJeUOLkzCcs
	EPPlJZq3zmaewMg7C0lqFpLUAkamVYyipdm6Rak5iZWGxnqJuaklqdl6yfm5mxiBAbNGgPHK
	DsY7nz7oHWJk4mA8xCjBwawkwutr0p4pxJuSWFmVWpQfX1Sak1p8iFGag0VJnHftng9xQgLp
	iUBTUlMLUotgskwcnFINTO3bNWdqzzhfujWCb4/i7UPPSvRNsqJWB2x6N3ftm0T3AK2bGyK2
	CyW9Vt999bkLw/mFEt+72TXvXShc/4BhOlv0gce9vzuMXb7O1bu15nVCVJ2zucXLMuHFnieO
	yblNFK5QdmjYueCNQmV84l/Xgi8/15aUCNvuMEn7ocv8atZ7LbPaX/d/W5WdC33yeFvxuXhb
	Vs7rpRaSvvEe0ZLJfgGyX7vPfbzxcs2k5bvSmi+8z+83iV4VxiqTdeStZWPKjdbflaX7pKQX
	ZHnO3K/dWSQaxNfUWt61WX7vvpMzvot+L1uhs9ysTV/L07JQsarzeHaKlqEsV8qMGTuTpm6Z
	HqGmEdLacFWMlatuUu9zJbbijEQjUzMt5qLiRAC0Q9BQiQIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_045239_277424_10902F61 
X-CRM114-Status: UNSURE (   8.69  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 1/4] net: gianfar: disable link information
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Link information are provided by the PHY layer so turn the information
messages into debug messages.

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 drivers/net/gianfar.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/gianfar.c b/drivers/net/gianfar.c
index 18b3c8849c..d0f606279f 100644
--- a/drivers/net/gianfar.c
+++ b/drivers/net/gianfar.c
@@ -121,11 +121,11 @@ static void gfar_adjust_link(struct eth_device *edev)
 		out_be32(regs + GFAR_ECNTRL_OFFSET, ecntrl);
 		out_be32(regs + GFAR_MACCFG2_OFFSET, maccfg2);
 
-		dev_info(&edev->dev, "Speed: %d, %s duplex\n", priv->speed,
-		       (priv->duplexity) ? "full" : "half");
+		dev_dbg(&edev->dev, "Speed: %d, %s duplex\n", priv->speed,
+				(priv->duplexity) ? "full" : "half");
 
 	} else {
-		dev_info(&edev->dev, "No link.\n");
+		dev_dbg(&edev->dev, "No link.\n");
 	}
 }
 
-- 
2.43.0



