Delivery-date: Mon, 22 Nov 2021 18:33:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mpDC8-0006oT-J9
	for lore@lore.pengutronix.de; Mon, 22 Nov 2021 18:33:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mpDC7-0008HJ-MY
	for lore@pengutronix.de; Mon, 22 Nov 2021 18:33:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XkgrMKWHro0buuY+/DtOdaz0czq/Z1ek+6kuGqM7dZE=; b=NAX6Klb35sug1F
	LV+64hKPaMZ8y0p1YmRYkiTwJbRrfi2qzxBqXZnX7UzKlOr2WDc5MLHhLME7W8h1UAkU6Cc1jVtBP
	TsdkpzU66N7kDmVyRQk1VSV/BCTEj9ZAo2d+QoP1QCsxxUaDUqPri7A1OzusrQSmdrmoldCf+tWkU
	3pTR02KsLhyXWtVZiI8A/Lb0rDgsXMqPww48zeqyZz4GDtMK12AOQiM1qGsRz1IdHN6Ul2oxzmqE7
	eJjMmR3ALmZ7csHtFZ1smIQBePlD1C+MX/eTmY4vXIUdwucWHzdV0bcF9KL34+N62Z0Yk/MoU84nH
	C2/FfzmMHWrMa05ME9LQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mpDAM-00HG6Q-U6; Mon, 22 Nov 2021 17:31:43 +0000
Received: from smtpout140.security-mail.net ([85.31.212.148]
 helo=fx408.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mpDAI-00HG5U-44
 for barebox@lists.infradead.org; Mon, 22 Nov 2021 17:31:39 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id E17EC1B7B157
 for <barebox@lists.infradead.org>; Mon, 22 Nov 2021 18:31:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kalray.eu;
 s=sec-sig-email; t=1637602290;
 bh=Z5o0W/mBdH7Cl5EMYXd7N09OB14h6vcnCSV1XuAkWyU=;
 h=From:To:Cc:Subject:Date;
 b=wkZxmy7xIGAubrk1nn5p/JV1u87989TqHVc/wa5B1fwfwhnxUO2ffvgaYCc2jd4YG
 dH8xGwuzG895/OuiTcz969NdDc+HWK7UMZEbvPLGtAHw5LIwFIwbroQPbQY8pPcSQV
 w+pdgHWKsR6F5zQ16ft0X1Uu9IzMYyBLjLg6qirc=
Received: from fx408 (localhost [127.0.0.1])
 by fx408.security-mail.net (Postfix) with ESMTP id A0D651B7B123
 for <barebox@lists.infradead.org>; Mon, 22 Nov 2021 18:31:29 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <4a5c.619bd3f1.53798.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx408.security-mail.net (Postfix) with ESMTPS id 53FC91B7B11F
 for <barebox@lists.infradead.org>; Mon, 22 Nov 2021 18:31:29 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id 3AE2327E038A;
 Mon, 22 Nov 2021 18:31:29 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 24D9627E0390;
 Mon, 22 Nov 2021 18:31:29 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 24D9627E0390
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1637602289;
 bh=ZbwCzyJcd/e4FO59S8nWn/P6PR8vITqebbaqxguPcrk=;
 h=From:To:Date:Message-Id;
 b=p8HjgFm0nGeh5scHcnIN1F45C+n8AQOLgEyqRbdhf3IQSSvbA33xEQ4h+iJ73+7ua
 1BkQDcg7RzP5637La60chNj/faxpTAjhwD7uLV7vj7XUEPlBSpYMhQiAeq8KPeIRFS
 XweDdKjGcrppfNxp7zRPDLHoJw+nBvryybqAsviM=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id WegDbXXZN2Pn; Mon, 22 Nov 2021 18:31:29 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 15BD527E038A;
 Mon, 22 Nov 2021 18:31:29 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 22 Nov 2021 18:31:23 +0100
Message-Id: <20211122173123.17252-1-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211122_093138_412829_B1E2C018 
X-CRM114-Status: UNSURE (   9.90  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: dwc2: host: Do not map buffer on zero len packet
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The transfer_chunk can be called for zero length packet, in such case
the buffer pointer is NULL and can fail to be mapped for the device.

In such case the device DMA address can be directly set to 0, as the
buffer address should be NULL anyway, without calling map/unmap at all.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/dwc2/host.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/dwc2/host.c b/drivers/usb/dwc2/host.c
index b5a51f5668..6726ff60db 100644
--- a/drivers/usb/dwc2/host.c
+++ b/drivers/usb/dwc2/host.c
@@ -169,10 +169,11 @@ static int transfer_chunk(struct dwc2 *dwc2, u8 hc,
 			  int xfer_len, int *actual_len, int odd_frame)
 {
 	uint32_t hctsiz, hcchar, sub;
-	dma_addr_t dma_addr;
+	dma_addr_t dma_addr = 0;
 	int ret = 0;
 
-	dma_addr = dma_map_single(dwc2->dev, buffer, xfer_len,
+	if (xfer_len)
+		dma_addr = dma_map_single(dwc2->dev, buffer, xfer_len,
 				  in ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
 
 	if (dma_mapping_error(dwc2->dev, dma_addr)) {
@@ -213,7 +214,8 @@ static int transfer_chunk(struct dwc2 *dwc2, u8 hc,
 	*actual_len = xfer_len;
 
 exit:
-	dma_unmap_single(dwc2->dev, dma_addr, xfer_len,
+	if (xfer_len)
+		dma_unmap_single(dwc2->dev, dma_addr, xfer_len,
 				  in ? DMA_FROM_DEVICE : DMA_TO_DEVICE);
 
 	return ret;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

