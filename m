Delivery-date: Sat, 12 Aug 2023 09:50:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUjOX-000Ocz-La
	for lore@lore.pengutronix.de; Sat, 12 Aug 2023 09:50:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUjOV-0005Oh-RN
	for lore@pengutronix.de; Sat, 12 Aug 2023 09:50:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ze8Vov/WzAQUzdCnbDIRcOVj+yQCatieyMSBumGPzUQ=; b=j7uKfzbwlcjhhBwOjwl5Kl0RW+
	JJ5W9Uy0U6oJFQXryt8cepXwGIZEuPItboTml1+ICrl75mRYA/L2wCYK6CslT+TLFQjcqYyjpzH4h
	1IIzgnY5IIktbtwciwfvR2U7WSDSpxtao/wCwCmELiWdJN6D00iSAzJxL3yJEVLUyMGm/J+tre6QJ
	AszZiK7i4bkDTw851Ts8d4FwbwPsRD6gnY0HrwYnbZJMWeLxwlUEUhfUIkfiZujCa1ExRdC7FtQoD
	/rZ2GMit8T1z5hmK5UIghzN7cypdGWbwR2Mb7TfTYoevPyvVngu4kEOUQjG1JLKr8cBwQgPeEsDkv
	pbIVEwTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUjNU-00CsN4-2s;
	Sat, 12 Aug 2023 07:49:40 +0000
Received: from relay9-d.mail.gandi.net ([2001:4b98:dc4:8::229])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUjNQ-00CsLE-0t
	for barebox@lists.infradead.org;
	Sat, 12 Aug 2023 07:49:37 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id B9959FF808;
	Sat, 12 Aug 2023 07:49:33 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Sat, 12 Aug 2023 09:48:22 +0200
Message-ID: <20230812074859.1755-3-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230812074859.1755-1-jmaselbas@zdiv.net>
References: <20230812074859.1755-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230812_004936_453557_40225A30 
X-CRM114-Status: UNSURE (   9.57  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/5] mtd: spi-nor: enable quad-write for is25lp01g
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mtd/spi-nor/spi-nor.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 632bfb2496..968fd3ea7a 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -680,7 +680,7 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "is25lp016d", INFO(0x9d6015, 0,  64 * 1024,  32,
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "is25lp01g", INFO(0x9d601b, 0,  64 * 1024,  2048,
-			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
+			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_QUAD_WRITE) },
 	{ "is25lp080d", INFO(0x9d6014, 0,  64 * 1024,  16,
 			     SECT_4K | SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ) },
 	{ "is25lp032",  INFO(0x9d6016, 0,  64 * 1024,  64,
-- 
2.41.0



