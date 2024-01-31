Delivery-date: Thu, 01 Feb 2024 00:04:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVJcs-00Ea7C-0N
	for lore@lore.pengutronix.de;
	Thu, 01 Feb 2024 00:04:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVJcs-0000Lc-Pi
	for lore@pengutronix.de; Thu, 01 Feb 2024 00:04:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Bwhj9FFLvniUPVLechHuFmM5SgjGo6TjazCarFrsE0Y=; b=cdIZ3aUAvpcw3i6h5bJYjfEP+l
	HnXv1qlJnA988Wuhkf9ej1RR87NxEgVEcFM0H77BfPO0Aekr/ahkOwWq/WczgyIyEVHgqkr3cK42u
	GAuwNKLiSAHNjhyKvi3M+8QSK5NDW+t+6SFVxpqSgF5gEzYieWwb4CocceRvz8ODTC1EiSUxcAYQx
	sYIp/mt9Ihk9mx8htORQO7J89YJx2C1cpX4K8YpIOtWfS0AEcCgGF5R4xIthKILNf2tCdytNBoqf6
	Q4m4C/vSWf7SB5e2uB8PJfBv5kxMV+CkiK6gjeuduaUTUUOjHJhSsLp/mWXo/NegrkSsAPhZjVMlf
	62N1KxyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVJcW-00000005mhx-2Pv6;
	Wed, 31 Jan 2024 23:03:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVJcT-00000005mgL-1m63
	for barebox@lists.infradead.org;
	Wed, 31 Jan 2024 23:03:50 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJcS-0000IG-8R; Thu, 01 Feb 2024 00:03:48 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJcR-003j7c-S8; Thu, 01 Feb 2024 00:03:47 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVJcR-007KXA-2X;
	Thu, 01 Feb 2024 00:03:47 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  1 Feb 2024 00:03:47 +0100
Message-Id: <20240131230347.1747216-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_150349_495244_6A137BA7 
X-CRM114-Status: GOOD (  11.90  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mtd: spi-nor: fix format specifier in debug message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The type size_t is to be printed with the %zu modifier as it's not
necessarily typedef'ed as unsigned long, even if for barebox purposes,
the sizeof(size_t) is always equal to sizeof(ulong).

Building the dw-ospi-nor driver for 32-bit warns about this, so fix
that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/spi-nor/dw-ospi-nor.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mtd/spi-nor/dw-ospi-nor.c b/drivers/mtd/spi-nor/dw-ospi-nor.c
index 692c6f9b9dae..897f4f49a9f9 100644
--- a/drivers/mtd/spi-nor/dw-ospi-nor.c
+++ b/drivers/mtd/spi-nor/dw-ospi-nor.c
@@ -637,7 +637,7 @@ static void dw_spi_write(struct spi_nor *nor, loff_t to,
 	struct dw_spi_nor *dw_spi = nor->priv;
 
 	*retlen = 0;
-	dev_dbg(dw_spi->dev, "write %ld bytes at @0x%llx\n", len, to);
+	dev_dbg(dw_spi->dev, "write %zu bytes at @0x%llx\n", len, to);
 
 	if (dw_spi_is_enhanced(nor->write_proto)) {
 		if (dw_spi_prep_enhanced(nor, nor->write_proto, SPI_TMOD_TO))
@@ -673,7 +673,7 @@ static int dw_spi_read(struct spi_nor *nor, loff_t from,
 	size_t chunk;
 
 	*retlen = 0;
-	dev_dbg(nor->dev, "read %ld bytes from @0x%llx\n", len, from);
+	dev_dbg(nor->dev, "read %zu bytes from @0x%llx\n", len, from);
 
 	if (enhanced)
 		ret = dw_spi_prep_enhanced(nor, nor->read_proto, SPI_TMOD_RO);
-- 
2.39.2



