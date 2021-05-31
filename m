Delivery-date: Mon, 31 May 2021 09:41:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncXu-0003Di-Dk
	for lore@lore.pengutronix.de; Mon, 31 May 2021 09:41:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lncXs-000103-Sq
	for lore@pengutronix.de; Mon, 31 May 2021 09:41:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5wGUd9hvsUUqGhrrlBkETd5ye16PtPljdmizj6CYIf8=; b=1uCBcdTVC6S+QP
	6VjNw8qPGTVt1ret5kLlK3dxuFmkB2ISPClpehwtIE4vGmkFX0DUfD0S/BpCLVzHdS/51p6BM/IUl
	jWfJZ8Q0eUBtM6IaVZFh5crgY4P8Jr2+wM6K57Xj9CmQqDaIcLQk7KXwT3D3EKa2i6G7CdYo53QVY
	1HmAzUjz8sx0ECId98XVs2++MlO1n8CmNmdFiCrEGw4T9LWxzZ3UyQQKyWxjQp7gzzye5mFf4bYRx
	wg4eUcGieOFoP80z7pxihXxDeD+eNYDvSvIHhxGluwtpDBpSEJwUskXEyq8/11fIdyNaOJMfvPe7a
	Gr3Y5ulWayYqTv5MhLXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lncWV-00BDMZ-38; Mon, 31 May 2021 07:39:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lncVN-00BChn-OO
 for barebox@lists.infradead.org; Mon, 31 May 2021 07:38:35 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVE-00080F-8e; Mon, 31 May 2021 09:38:24 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lncVC-00045k-Uv; Mon, 31 May 2021 09:38:22 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 31 May 2021 09:38:05 +0200
Message-Id: <20210531073821.15257-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210531073821.15257-1-a.fatoum@pengutronix.de>
References: <20210531073821.15257-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210531_003833_836434_6FFFA5F4 
X-CRM114-Status: GOOD (  12.43  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 04/20] mtd: spi-nor: cadence: fix 64-bit issues
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Pointers are being cast to unsigned int, which will truncate the address
on 64-bit systems. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/spi-nor/cadence-quadspi.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index ea53d2cd847a..09015aad43f1 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -347,8 +347,8 @@ static int cqspi_command_read(struct spi_nor *nor,
 
 	if (!n_rx || n_rx > CQSPI_STIG_DATA_LEN_MAX || rxbuf == NULL) {
 		dev_err(nor->dev,
-			"Invalid input argument, len %d rxbuf 0x%08x\n", n_rx,
-			(unsigned int)rxbuf);
+			"Invalid input argument, len %d rxbuf %p\n", n_rx,
+			rxbuf);
 		return -EINVAL;
 	}
 
@@ -393,8 +393,8 @@ static __maybe_unused int cqspi_command_write(struct spi_nor *nor,
 
 	if (n_tx > 4 || (n_tx && txbuf == NULL)) {
 		dev_err(nor->dev,
-			"Invalid input argument, cmdlen %d txbuf 0x%08x\n",
-			n_tx, (unsigned int)txbuf);
+			"Invalid input argument, cmdlen %d txbuf %p\n",
+			n_tx, txbuf);
 		return -EINVAL;
 	}
 
@@ -433,7 +433,7 @@ static int cqspi_indirect_read_setup(struct spi_nor *nor,
 {
 	struct cqspi_flash_pdata *f_pdata;
 	struct cqspi_st *cqspi = nor->priv;
-	unsigned int ahb_base = (unsigned int) cqspi->ahb_base;
+	unsigned long ahb_base = (unsigned long) cqspi->ahb_base;
 	void __iomem *reg_base = cqspi->iobase;
 	unsigned int dummy_clk = 0;
 	unsigned int dummy_bytes;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

