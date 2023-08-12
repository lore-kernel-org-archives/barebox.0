Delivery-date: Sat, 12 Aug 2023 09:50:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUjOa-000OdS-9m
	for lore@lore.pengutronix.de; Sat, 12 Aug 2023 09:50:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUjOY-0005Q6-2C
	for lore@pengutronix.de; Sat, 12 Aug 2023 09:50:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=JnS2GYobf0p9x+2SuILlfIb3lsmQav1a+buj0Ucpf/8=; b=JnyX7RbkU1VdGfWruBC0p0VDyH
	fuROxw9w7vrk//BEtYJakJlfHGG4zcAN7yBclzov5QEe8uJ31Fhuot78BfAytPYhGhXIKxA7+KgJU
	7yqqfKSVHefzG2y73DzREMvsNlvampICBf0zlATzCXn5oAgtVn5K2mbVK/wq5RiDIqXZzNIsVkB+t
	3SyTO5GSXhALlQCpW+S8u5adl/AdVIV6/wyn1GF0NxqT91L22HmwvkysNoqIBtDd00K/P/m9dr9DB
	82PvCP0RDShsZcYGNtmjp1M8V8zJhD8uoarPGCSALHOwoo0g7D4J+EnK1vI8z/W65r3gD8/LzP4oa
	I2rE3i9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUjNR-00CsMB-1a;
	Sat, 12 Aug 2023 07:49:37 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUjNO-00CsLD-2k
	for barebox@lists.infradead.org;
	Sat, 12 Aug 2023 07:49:36 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 22C0BFF807;
	Sat, 12 Aug 2023 07:49:32 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Clement Leger <cleger@kalray.eu>,
	Jules Maselbas <jmaselbas@kalray.eu>
Date: Sat, 12 Aug 2023 09:48:21 +0200
Message-ID: <20230812074859.1755-2-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230812074859.1755-1-jmaselbas@zdiv.net>
References: <20230812074859.1755-1-jmaselbas@zdiv.net>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230812_004935_022122_0D1F12A5 
X-CRM114-Status: UNSURE (   9.68  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/5] mtd: spi-nor: enable {dual,quad}-read and quad-write for w25q256
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Clement Leger <cleger@kalray.eu>

The w25q256 flash supports these modes.

Signed-off-by: Clement Leger <cleger@kalray.eu>
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mtd/spi-nor/spi-nor.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 2c46bb2b10..632bfb2496 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -872,7 +872,8 @@ static const struct spi_device_id spi_nor_ids[] = {
 	{ "w25q80bl", INFO(0xef4014, 0, 64 * 1024,  16, SECT_4K) },
 	{ "w25q128", INFO(0xef4018, 0, 64 * 1024, 256, SECT_4K) },
 	{ "w25q128", INFO(0xef7018, 0, 64 * 1024, 256, SECT_4K) },
-	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K) },
+	{ "w25q256", INFO(0xef4019, 0, 64 * 1024, 512, SECT_4K |
+		SPI_NOR_DUAL_READ | SPI_NOR_QUAD_READ | SPI_NOR_QUAD_WRITE | SPI_NOR_4B_OPCODES) },
 
 	/* Catalyst / On Semiconductor -- non-JEDEC */
 	{ "cat25c11", CAT25_INFO(  16, 8, 16, 1, SPI_NOR_NO_ERASE | SPI_NOR_NO_FR) },
-- 
2.41.0



