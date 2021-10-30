Delivery-date: Sat, 30 Oct 2021 19:56:46 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsb0-000135-JD
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 19:56:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsaz-0001gr-Lv
	for lore@pengutronix.de; Sat, 30 Oct 2021 19:56:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CocaU8iUYQsFdLPLuCj/uhy+7AMjwmpboRbHtF/Jigk=; b=Fk5x+cy/tYYzRK
	rd1u5kRbMSIi4qbIYUBLfRpzH/vRI117C/0F9rw8/A6MeDePL6ngYon6yiVOdWD3/FwXqWFoMXolQ
	n3+wal9c5cS6gnNC7UMx/299hpdmjIdQVi9ud7DWzaHz/Xzp9GtsM3SCfDyU0Y+qj7Gxml9kcvmwN
	KX0oJkfywVaHfJSfSHiIPQOe+/apXO/0rkjxPVi78XbwfCHNrQWxgNc4saX5MLe/QCOahQq/KZ+HA
	3MWTZA+8/Dhp8NO+cckocyzSAmZReQi0JDjk5hGAfMKizSBRtADt1Fg7IOQjiF15XvQqDQHuaeuSF
	2NkDmkcvsNot2iwAE+wQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgsZE-00DM4M-79; Sat, 30 Oct 2021 17:54:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgsZ7-00DM2c-FK
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 17:54:51 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsZ5-00019Q-TB; Sat, 30 Oct 2021 19:54:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsZ5-009XdY-EP; Sat, 30 Oct 2021 19:54:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 19:54:46 +0200
Message-Id: <20211030175446.2274194-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211030175446.2274194-1-a.fatoum@pengutronix.de>
References: <20211030175446.2274194-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_105449_535241_B99D1990 
X-CRM114-Status: GOOD (  10.82  )
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
Subject: [PATCH 4/4] spi: zynq_qspi: don't check clk_get return value for
 NULLness
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

clk_get never returns NULL, so no point in checking for it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/spi/zynq_qspi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/zynq_qspi.c b/drivers/spi/zynq_qspi.c
index d01e4a8e6c65..bd3418a3fb3e 100644
--- a/drivers/spi/zynq_qspi.c
+++ b/drivers/spi/zynq_qspi.c
@@ -559,13 +559,13 @@ static int zynq_qspi_probe(struct device_d *dev)
 	xqspi->regs = IOMEM(iores->start);
 
 	xqspi->pclk = clk_get(dev, "pclk");
-	if (IS_ERR_OR_NULL(xqspi->pclk)) {
+	if (IS_ERR(xqspi->pclk)) {
 		dev_err(dev, "pclk clock not found.\n");
 		return PTR_ERR(xqspi->pclk);
 	}
 
 	xqspi->refclk = clk_get(dev, "ref_clk");
-	if (IS_ERR_OR_NULL(xqspi->refclk)) {
+	if (IS_ERR(xqspi->refclk)) {
 		dev_err(dev, "ref_clk clock not found.\n");
 		return PTR_ERR(xqspi->refclk);
 	}
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

