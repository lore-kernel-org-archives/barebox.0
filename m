Delivery-date: Thu, 04 Apr 2024 20:40:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS15-00AYdQ-2N
	for lore@lore.pengutronix.de;
	Thu, 04 Apr 2024 20:40:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rsS14-00039E-Nj
	for lore@pengutronix.de; Thu, 04 Apr 2024 20:40:51 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3NjoiVZKKh9k0d6c3bh0vYKLsUzSTcpr6QvaoqxkO0g=; b=DK6kIPqtHLDw7bdg39+dM0pV39
	eLOuPqKLYijp53ZsTOSC29d31XNlbz5/IpXDrcrJ2bxIWhmDWzfcTX0A9JKSbjqA6N+tOy8j6Yjrb
	DyM1GTBRvnDUGrwyvngLPN8Q96htEsLoTrg17KMqGeCYTt8IHejzDixoY6v3MhXMbTf4hx0qk+7Ic
	I+2INPFfRg/lZ+zRGvkMPyE9C5ga3bGEDsdQcTQcEKByGuWbM++mn07GBp8xL2tu6fIg7cJW1Kk5C
	qzvqZbqhQTHS8vI+X7FPtufHm/2TOs11jKhryVFgpDo+LVla5yLufbVP6N0mzjxVZ64q7odwv5yo7
	VpLx06gQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0T-00000003sKI-3yeM;
	Thu, 04 Apr 2024 18:40:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rsS0N-00000003sG6-1GMW
	for barebox@lists.infradead.org;
	Thu, 04 Apr 2024 18:40:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0J-0001sT-2l; Thu, 04 Apr 2024 20:40:03 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-00AQQr-KG; Thu, 04 Apr 2024 20:40:02 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rsS0I-006VVt-1l;
	Thu, 04 Apr 2024 20:40:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  4 Apr 2024 20:39:57 +0200
Message-Id: <20240404184001.1532897-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
References: <20240404184001.1532897-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240404_114007_426711_10E8DA6B 
X-CRM114-Status: GOOD (  12.91  )
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
Subject: [PATCH 06/10] net: cpsw: report correct frame size to network stack
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the NIC reports that there is a computed CRC appended to the frame
content, we need to subtract its size from the total length before
passing that further down the network stack.

This fixes a WARN_ON_ONCE reported by the network stack when built
with #define DEBUG, because the expected size as indicated by the IP
header is not the same as what's reported by the driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/cpsw.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 31ca61a230e9..3aafebaad49d 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -51,10 +51,12 @@
 #define CPDMA_DESC_EOP		BIT(30)
 #define CPDMA_DESC_OWNER	BIT(29)
 #define CPDMA_DESC_EOQ		BIT(28)
+#define CPDMA_DESC_PASS_CRC	BIT(26)
 #define CPDMA_DESC_TO_PORT_EN	BIT(20)
 #define CPDMA_FROM_TO_PORT_SHIFT	16
 #define CPDMA_RX_SOURCE_PORT(__status__)	\
 	(((__status__) >> CPDMA_FROM_TO_PORT_SHIFT) & 0x7)
+#define CPDMA_DESC_CRC_LEN	4
 
 #define SLIVER_SIZE		0x40
 
@@ -865,8 +867,11 @@ static int cpdma_process(struct cpsw_slave *slave, struct cpdma_chan *chan,
 
 	status = readl(&desc->hw_mode);
 
-	if (len)
+	if (len) {
 		*len = status & 0x7ff;
+		if (status & CPDMA_DESC_PASS_CRC)
+			*len -= CPDMA_DESC_CRC_LEN;
+	}
 
 	if (dma)
 		*dma = readl(&desc->hw_buffer);
-- 
2.39.2



