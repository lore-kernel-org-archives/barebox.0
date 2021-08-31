Delivery-date: Tue, 31 Aug 2021 08:49:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKxaV-0005qF-AV
	for lore@lore.pengutronix.de; Tue, 31 Aug 2021 08:49:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mKxaQ-0006h4-RD
	for lore@pengutronix.de; Tue, 31 Aug 2021 08:49:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=1ghFpUXcikPahinrME1o9XCz8qaPPTedXM9z8+BCjmw=; b=bO27U/VdprK+1/
	Cvdg5WxVjbBZEVDAANCfPnuYKf+ULJoBX3TEt/a2s7hDjWnF32tf93hRYgmojhc4IMhjQWmkHn62N
	Mk2TkHs1i9WYgyJx+ydris4cmVaLpD/OV8sT9IAGTSwebrzO9JWXRIyy/gAkhxlWQVPSCO7HILf0o
	K2xjjPHeDRszJQLif6tnag5gQJx2eC76TikyVGRVQ9eEQjUZKmIEKqBRwfNE71QTvx0DfQEsWEz5D
	KQIBXkGLVnJX3xvMg5bjznuOlqJNcnRHkyK9/4IfhFBq3sTqFekCc+XBbyt8Tg3zh5MzCOo/mjTl4
	MTQ2nPpttJ2ZoNrKvSEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKxYT-001TX8-E4; Tue, 31 Aug 2021 06:47:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKxYN-001TWD-QJ
 for barebox@lists.infradead.org; Tue, 31 Aug 2021 06:47:29 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1mKxYK-0006bH-CN; Tue, 31 Aug 2021 08:47:24 +0200
Received: from str by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>)
 id 1mKxYK-0002CP-3t; Tue, 31 Aug 2021 08:47:24 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 31 Aug 2021 08:47:15 +0200
Message-Id: <20210831064715.8392-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_234727_895154_A0A3A34D 
X-CRM114-Status: GOOD (  10.79  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] mci: sdhci: fix big-endian write for blockcount/size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Steffen Trumtrar <str@pengutronix.de>

The patch

    0a47bce1b03fd236384e904dca005c0870ce8684
    mci: imx-esdhc: Use common DMA helpers

converted the imx-esdhc driver to use the DMA helpers introduced with

    60b608b2714472aa22862a20d04f267cbbac0863
    mci: sdhci: Add DMA transfer helpers

The common DMA helpers however break support for BE-variants (e.g.
Layerscape) as the BLKATTR register seems to be a 32-bit register which
internally switches bytes when used with two 16-bit write accesses.
As the alignment should also work for LE-SDHCI-variants convert the two
16-bit accesses to one 32-bit access.

Signed-off-by: Steffen Trumtrar <str@pengutronix.de>
---
 drivers/mci/sdhci.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index aca4a5a6f911..8b5520d6827a 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -129,9 +129,8 @@ void sdhci_setup_data_pio(struct sdhci *sdhci, struct mci_data *data)
 	if (!data)
 		return;
 
-	sdhci_write16(sdhci, SDHCI_BLOCK_SIZE, sdhci->sdma_boundary |
-		    SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize));
-	sdhci_write16(sdhci, SDHCI_BLOCK_COUNT, data->blocks);
+	sdhci_write32(sdhci, SDHCI_BLOCK_SIZE, sdhci->sdma_boundary |
+		      SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize) | data->blocks << 16);
 }
 
 void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

