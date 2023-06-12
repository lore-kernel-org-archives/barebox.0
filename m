Delivery-date: Mon, 12 Jun 2023 15:03:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hCw-003qbH-CG
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:03:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hCt-0000eF-Ne
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VHNZo+v0D8f5JxpeOJvcTxfklc1dnTuSGqbicTT5yJ8=; b=c3+O6iAJEVpGmnlRTtPq1ZnOqx
	1e4w2Y1MbB8AGJIwkj3e6bwRfRAomTm61EHf6+A/fU+0e/dX+RfmODgXDc8Iok3xrGjmH7+hvV7ph
	Q8kXxB/aMXEAbo2MJoTJd4BpsZqNVSu3i4TJtvyYTgOlqHdRtXMN0VPLH7ycsDiGngP3rGE1TF3ET
	PpPQIGAkmv0uJTkO+A3IdvSDtFCZUjmisAL8smwNMOdbOYmqvVSDTO/5d62Q/1APPVeEpgiNhpXHF
	AKN75jBfPH7uXMgsv8ieLeCuVU4ZHQGFNjrj4wgsDEyjQBIYu+UiqNrzLrLE9dUkjJqjmNno6BdS7
	OIQgsVgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCF-0047K3-0X;
	Mon, 12 Jun 2023 13:02:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hC7-0047D0-26
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:02:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC6-0008Ky-EX; Mon, 12 Jun 2023 15:02:50 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC5-006tVb-La; Mon, 12 Jun 2023 15:02:49 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aJN-5B; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:02:26 +0200
Message-Id: <20230612130239.1087599-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060251_684453_3A361E21 
X-CRM114-Status: UNSURE (   9.50  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 05/19] ata: ide-sff: fix warnings when compiling as 64-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Driver is applicable to both IDEs with I/O port and MMIO control. This
is differentiated by ide->io.mmio. Compiler can't follow that and
criticizes casting pointers to 32-bit integers on 64-bit architectures.
Adjust the casts to silence this false positive.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/ata/ide-sff.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/ata/ide-sff.c b/drivers/ata/ide-sff.c
index 69055e058503..f25dfeae4328 100644
--- a/drivers/ata/ide-sff.c
+++ b/drivers/ata/ide-sff.c
@@ -26,7 +26,7 @@ static inline uint8_t ata_rd_byte(struct ide_port *ide, void __iomem *addr)
 	if (ide->io.mmio)
 		return readb(addr);
 	else
-		return (uint8_t) inb((int) addr);
+		return (uint8_t) inb((ulong)addr);
 }
 
 /**
@@ -42,7 +42,7 @@ static inline void ata_wr_byte(struct ide_port *ide, uint8_t value,
 	if (ide->io.mmio)
 		writeb(value, addr);
 	else
-		outb(value, (int) addr);
+		outb(value, (ulong)addr);
 }
 
 /**
@@ -57,7 +57,7 @@ static inline uint16_t ata_rd_word(struct ide_port *ide,
 	if (ide->io.mmio)
 		return readw(addr);
 	else
-		return (uint16_t) inw((int) addr);
+		return (uint16_t) inw((ulong)addr);
 }
 
 /**
@@ -73,7 +73,7 @@ static inline void ata_wr_word(struct ide_port *ide, uint16_t value,
 	if (ide->io.mmio)
 		writew(value, addr);
 	else
-		outw(value, (int) addr);
+		outw(value, (ulong)addr);
 }
 
 /**
-- 
2.39.2



