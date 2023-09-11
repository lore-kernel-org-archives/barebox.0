Delivery-date: Mon, 11 Sep 2023 14:13:21 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffn8-00BSuz-6X
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:13:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qffn4-0001WG-Gc
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:13:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dP1LgBzVJtI99xtCri9Jcl4q63FO0kTa0D+NUBYyPkQ=; b=a9bOko8NKVSA1lQKiBkm+sMwGI
	fzmQc4Ax6lC9c1BbI3UwzX3qqPSBJs34hTg9Hdb2eJEmi6bhcfZBKi1Sb2hXlvwJZ+svN8MVxKrJg
	4aEMmtAk7Y8N5UnRp0faRD/35nRz3fvswzjnXPLldkws4Pl8ltJuiy6PNCYSKW8DQycRFF9y3hbnl
	lacSUYesKq19K44j1a5k90Li7Cpb67Q85YdfNnkGe0TtkaK7ghFwjYrR58DlYQvdU7s+fZKN8Nt21
	g2D6JreGC4t/RfyX48Yxz+9dvBOaBPqxqKYUuS/xmwOzSpsG8H6LqohARpNuNV6+6nNOe0JEwCFj9
	QAKwWl3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfflv-000SMM-1N;
	Mon, 11 Sep 2023 12:12:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfflq-000SL7-23
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:12:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qfflm-0001Gs-CI; Mon, 11 Sep 2023 14:11:58 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qffll-005Xrd-OQ; Mon, 11 Sep 2023 14:11:57 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qffll-00B5gJ-0x;
	Mon, 11 Sep 2023 14:11:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: jmaselbas@zdiv.net,
	ore@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 11 Sep 2023 14:11:55 +0200
Message-Id: <20230911121156.2632668-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230911121156.2632668-1-a.fatoum@pengutronix.de>
References: <20230911121156.2632668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_051202_671177_04FB7AF2 
X-CRM114-Status: GOOD (  14.13  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] mci: sdhci: unmap the DMA buffers actually used
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

At the end of sdhci_transfer_data_dma, sdhci_set_sdma_addr is called to
set the next DMA address. Recently, the computation of the next DMA
address was changed and instead of storing the next SDMA address into a
dedicated local variable as before, it was stored into the existing `dma'
variable. The dma variable is passed later though to dma_unmap_single(),
so clobbering it results in a loss of cache coherency and thus potential
memory corruption.

It's worth noting that this next SDMA address is not actually used for
DMA: Like Linux, barebox doesn't make use of this feature to chain (?) DMA
requests, so we actually invalidated memory buffers that were never used
for DMA.

Fixes: 76aa243aad95 ("mci: sdhci: Add 64-bit DMA addressing suport for V4 mode")
Fixes: 88f101358167 ("mci: sdhci: Force DMA update to the next block boundary")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mci/sdhci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index 9829a78cb6c5..ef36a9c1b38a 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -295,14 +295,14 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			int boundary_cfg = (sdhci->sdma_boundary >> 12) & 0x7;
 			dma_addr_t boundary_size = 4096 << boundary_cfg;
 			/* Force update to the next DMA block boundary. */
-			dma = (dma & ~(boundary_size - 1)) + boundary_size;
+			dma_addr_t next = (dma & ~(boundary_size - 1)) + boundary_size;
 
 			/*
 			 * DMA engine has stopped on buffer boundary. Acknowledge
 			 * the interrupt and kick the DMA engine again.
 			 */
 			sdhci_write32(sdhci, SDHCI_INT_STATUS, SDHCI_INT_DMA);
-			sdhci_set_sdma_addr(sdhci, dma);
+			sdhci_set_sdma_addr(sdhci, next);
 		}
 
 		if (irqstat & SDHCI_INT_XFER_COMPLETE)
-- 
2.39.2



