Delivery-date: Thu, 30 Mar 2023 12:36:04 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phpdT-002eth-Gi
	for lore@lore.pengutronix.de; Thu, 30 Mar 2023 12:36:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1phpdT-0001TD-93
	for lore@pengutronix.de; Thu, 30 Mar 2023 12:36:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DSGpyY86yBbhzU0ZDgp5oyCgSDMeOCsEhj9biCPWv90=; b=ZnIaDUssvpyCTilWXomJI4XnoE
	u47dVrMiosxwqGaR7e5hHFNutK/OYKz5egKy5YIQNYscORHjR/mRFlxgdrSaTKcrXqP2x78qrzWec
	jKnoTsgoW9789Jtdw7LaCqbdK9wv/F+NJOPVZshRURyejHPDSNozfw/M7Cwl+4uwPWzdy6UhBKoZf
	4u4bj/KU0627pawoF/I6vgHItM1VmtKb29GfZ9ovuIcTvBnSDuF8I/c5IXr4ZxWdzJJtUu1aiB1KG
	m9g8zcEvHN0PyKD1XpeiZ4DQsIGxlmK2gavzzWUTrPSX+B7714cuovcNSxn5dLi4TnWClmqIKBTz5
	DRPoCHcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1phpbg-003Tq8-1A;
	Thu, 30 Mar 2023 10:34:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1phpbd-003Tnj-1y
	for barebox@lists.infradead.org;
	Thu, 30 Mar 2023 10:34:10 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <p.zabel@pengutronix.de>)
	id 1phpbY-0000yg-QH; Thu, 30 Mar 2023 12:34:04 +0200
From: Philipp Zabel <p.zabel@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 30 Mar 2023 12:33:58 +0200
Message-Id: <20230330103359.2751080-3-p.zabel@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230330103359.2751080-1-p.zabel@pengutronix.de>
References: <20230330103359.2751080-1-p.zabel@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230330_033409_668701_0C67CDDD 
X-CRM114-Status: UNSURE (   9.97  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] video: mipi_dbi: disable byte swapping if 16-bit SPI transfers are supported
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

If the SPI controller supports switching to 16-bit transfers, there
is no need to swap bytes on little-endian architectures. This also
allows to transfer directly from the 16-bit framebuffer.

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 drivers/video/mipi_dbi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
index e6a147a9bf36..30fba07acfb2 100644
--- a/drivers/video/mipi_dbi.c
+++ b/drivers/video/mipi_dbi.c
@@ -632,8 +632,7 @@ int mipi_dbi_spi_init(struct spi_device *spi, struct mipi_dbi *dbi,
 
 	dbi->command = mipi_dbi_typec3_command;
 	dbi->dc = dc;
-	// TODO: can we just force 16 bit?
-	if (mipi_dbi_machine_little_endian() && spi->bits_per_word != 16)
+	if (mipi_dbi_machine_little_endian() && !spi_is_bpw_supported(spi, 16))
 		dbi->swap_bytes = true;
 
 	dev_dbg(dev, "SPI speed: %uMHz\n", spi->max_speed_hz / 1000000);
-- 
2.39.2



