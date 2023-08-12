Delivery-date: Sat, 12 Aug 2023 09:50:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUjOb-000OeG-WE
	for lore@lore.pengutronix.de; Sat, 12 Aug 2023 09:50:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qUjOa-0005RG-6q
	for lore@pengutronix.de; Sat, 12 Aug 2023 09:50:48 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UY5x044F1DWgVVAXyT1kB6HYx8H0Q0IIAcFyqR9mO+U=; b=ob9bfoN0rytR7srJhtNTNBLQtu
	ciYe2DFUldRHYHeVV5nE/zI6eFRaoxeSjGMB7bIil2jBaP4uT1MPVrN14ldwjWB9kw6ExMq1L0uZg
	MB7M5i0WXTDCPcNeMC3vHaqVAH1G1+fM6b1R/J+0HHBIgWvGB5OfRhW3Ihjx8BIpTeEQaJXqq1EU8
	R+r9GLr5SJn8z8cn8ZbVBtLNIvrLI2og3P2LjQTcozqOL78hIcREp2zXT6JrWAYoOdPXWr7SBuH2S
	j3QokMRURTXCoRFndcuKiRBbNGdc2C9/1jrOgJl9UFmnUhP+PZ00UGVHei0yhWKrbMU41LLds06Jh
	WUV12IFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qUjNL-00CsKz-2R;
	Sat, 12 Aug 2023 07:49:31 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qUjNI-00CsJh-2u
	for barebox@lists.infradead.org;
	Sat, 12 Aug 2023 07:49:30 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id EFBDBFF804;
	Sat, 12 Aug 2023 07:49:22 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Sat, 12 Aug 2023 09:48:20 +0200
Message-ID: <20230812074859.1755-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230812_004929_087348_44CD9B25 
X-CRM114-Status: UNSURE (   8.43  )
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
Subject: [PATCH v2 1/5] mtd: spi-nor: Add SPI_NOR_QUAD_WRITE hwcap
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Jules Maselbas <jmaselbas@kalray.eu>

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/mtd/spi-nor/spi-nor.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/mtd/spi-nor/spi-nor.c b/drivers/mtd/spi-nor/spi-nor.c
index 8f6726ca4b..2c46bb2b10 100644
--- a/drivers/mtd/spi-nor/spi-nor.c
+++ b/drivers/mtd/spi-nor/spi-nor.c
@@ -83,6 +83,7 @@ struct flash_info {
 #define USE_CLSR		BIT(14)	/* use CLSR command */
 #define SPI_NOR_OCTAL_READ	BIT(15)	/* Flash supports Octal Read */
 #define UNLOCK_GLOBAL_BLOCK	BIT(16)	/* Unlock global block protection */
+#define SPI_NOR_QUAD_WRITE	BIT(17)	/* Flash supports Quad Write */
 };
 
 enum spi_nor_read_command_index {
@@ -1166,6 +1167,13 @@ static int spi_nor_init_params(struct spi_nor *nor,
 	spi_nor_set_pp_settings(&params->page_programs[SNOR_CMD_PP],
 				SPINOR_OP_PP, SNOR_PROTO_1_1_1);
 
+	if (info->flags & SPI_NOR_QUAD_WRITE) {
+		params->hwcaps.mask |= SNOR_HWCAPS_PP_1_1_4;
+		spi_nor_set_pp_settings(
+				&params->page_programs[SNOR_CMD_PP_1_1_4],
+				SPINOR_OP_PP_1_1_4, SNOR_PROTO_1_1_4);
+	}
+
 	if (info->flags & UNLOCK_GLOBAL_BLOCK) {
 		int err;
 
-- 
2.41.0



