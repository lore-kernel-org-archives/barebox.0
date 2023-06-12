Delivery-date: Mon, 12 Jun 2023 15:04:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hDF-003qgc-Sg
	for lore@lore.pengutronix.de; Mon, 12 Jun 2023 15:04:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q8hDC-00010A-At
	for lore@pengutronix.de; Mon, 12 Jun 2023 15:03:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Fs6EZ8KClkv+7piONBYh+YsOtofTonesxZ+ewT+rhI4=; b=Dces836mIKVBpqiH6aQKZ3840e
	SDOTBeWVcoWTNz7C8tqJL4EBuZy94rL++Aa07r84qN7ely2Z9EUHfI15udyAKNey2J2gY0vUjAhp5
	79VuXrTE34d4mL69hwpmxaoWoAdLjYGp+44BJIegw1hBLkYr9XcVAetuEc1RJVyDazlqQVONr6R+x
	zN19dEiwHX2isTmNx8K85es8COoMIDCirzEmEAixmIxe2KfP2/HQtQLjyAOH82iRCR+ddTNnEVHlB
	gCbNYm180RBb+FEHfGgazI6YIIbyFgDeR6NSSXWXEYZiJ0tqDSJscdpyIXUKnymoOQ6nK3w43SUBT
	K9p7VrxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCS-0047Z1-1n;
	Mon, 12 Jun 2023 13:03:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q8hCG-0047Kg-1F
	for barebox@lists.infradead.org;
	Mon, 12 Jun 2023 13:03:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC7-0008Lx-4I; Mon, 12 Jun 2023 15:02:51 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC6-006tVt-DQ; Mon, 12 Jun 2023 15:02:50 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q8hC3-004aK1-7p; Mon, 12 Jun 2023 15:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 12 Jun 2023 15:02:36 +0200
Message-Id: <20230612130239.1087599-16-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
References: <20230612130239.1087599-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230612_060300_440120_796C91F0 
X-CRM114-Status: GOOD (  12.23  )
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
Subject: [PATCH 15/19] mtd: spi-nor: cadence: fix types
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The JH7100 for which we have basic support has 64-bit CPUs and a cadence
quad SPI controller. Building the driver for that CPU would result in a
couple of warning due to casting 64-bit pointers to 32-bit integers. Fix
this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mtd/spi-nor/cadence-quadspi.c | 8 +++-----
 1 file changed, 3 insertions(+), 5 deletions(-)

diff --git a/drivers/mtd/spi-nor/cadence-quadspi.c b/drivers/mtd/spi-nor/cadence-quadspi.c
index 5079127be43a..763858567b9c 100644
--- a/drivers/mtd/spi-nor/cadence-quadspi.c
+++ b/drivers/mtd/spi-nor/cadence-quadspi.c
@@ -336,8 +336,7 @@ static int cqspi_command_read(struct spi_nor *nor,
 
 	if (!n_rx || n_rx > CQSPI_STIG_DATA_LEN_MAX || rxbuf == NULL) {
 		dev_err(nor->dev,
-			"Invalid input argument, len %d rxbuf 0x%08x\n", n_rx,
-			(unsigned int)rxbuf);
+			"Invalid input argument, len %d rxbuf 0x%p\n", n_rx, rxbuf);
 		return -EINVAL;
 	}
 
@@ -382,8 +381,7 @@ static __maybe_unused int cqspi_command_write(struct spi_nor *nor,
 
 	if (n_tx > 4 || (n_tx && txbuf == NULL)) {
 		dev_err(nor->dev,
-			"Invalid input argument, cmdlen %d txbuf 0x%08x\n",
-			n_tx, (unsigned int)txbuf);
+			"Invalid input argument, cmdlen %d txbuf 0x%p\n", n_tx, txbuf);
 		return -EINVAL;
 	}
 
@@ -422,7 +420,7 @@ static int cqspi_indirect_read_setup(struct spi_nor *nor,
 {
 	struct cqspi_flash_pdata *f_pdata;
 	struct cqspi_st *cqspi = nor->priv;
-	unsigned int ahb_base = (unsigned int) cqspi->ahb_base;
+	phys_addr_t ahb_base = virt_to_phys(cqspi->ahb_base);
 	void __iomem *reg_base = cqspi->iobase;
 	unsigned int dummy_clk = 0;
 	unsigned int dummy_bytes;
-- 
2.39.2



