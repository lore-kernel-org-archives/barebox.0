Delivery-date: Mon, 16 Dec 2024 14:04:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNAln-008pNs-1m
	for lore@lore.pengutronix.de;
	Mon, 16 Dec 2024 14:04:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tNAlj-0005DM-Cr
	for lore@pengutronix.de; Mon, 16 Dec 2024 14:04:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=q4/5wwPsd9Gmf3YhiXQdObv870O9+nB4CsA4YrJIKa4=; b=wL2pMVaNRY2Xi+gQBwM1ibz28q
	+W23HA6dlsK+yhdNfYj7RpcyaHWhF9SJooM/lPv0IOfWyFangtqdUGSHEUU8uOw9aY34X9ueG1pPF
	5pFrGelgrlYDLK24LBNQ5mL9h9HM3+zkICUHmlX5bL7qLeZ8OIRHP//4hCPPDpW4Mx+10X2O3DAV4
	G5eXhYyiwTAsB9te+qd258Eio61+DWn+x1dsTsG1n+pXJcyW04d/qHjdVj7ArViHqjq3iT0qE0Lut
	OZoSt6xIE6mMU3V64VcIrtExVAlxCJ0AGT0lSSSbWE4NyfME4NNsEpa/gNcjtdWn3KrwJRSCeYuAA
	Xy+C5FIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAlA-0000000A1yn-0kAE;
	Mon, 16 Dec 2024 13:03:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAl6-0000000A1uw-2JU1
	for barebox@lists.infradead.org;
	Mon, 16 Dec 2024 13:03:37 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1tNAl3-0004cI-Ie
	for barebox@lists.infradead.org; Mon, 16 Dec 2024 14:03:33 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 16 Dec 2024 14:03:20 +0100
Message-Id: <20241216130324.1592755-8-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241216130324.1592755-1-m.felsch@pengutronix.de>
References: <20241216130324.1592755-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_050336_591564_DBF28002 
X-CRM114-Status: GOOD (  12.16  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 08/12] spi: allow reporting the effectivly used speed_hz for a transfer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is a copy of Linux commit:

8<-------------------------------------------------------------------------
commit 5d7e2b5ed5858fe739d4cb8ad22dcce7bd9dbe7b
Author: Martin Sperl <kernel@martin.sperl.org>
Date:   Sat Feb 23 08:49:49 2019 +0000

    spi: core: allow reporting the effectivly used speed_hz for a transfer

    Provide a means for the spi bus driver to report the effectively used
    spi clock frequency used for each spi_transfer.

    Signed-off-by: Martin Sperl <kernel@martin.sperl.org>
    Signed-off-by: Mark Brown <broonie@kernel.org>
8<-------------------------------------------------------------------------

to sync the spi core more with Linux which is required for the later
core common message handling.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
Changelog:
v2:
 - no changes

 drivers/spi/spi.c | 1 +
 include/spi/spi.h | 5 +++++
 2 files changed, 6 insertions(+)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index e8a0b1b84be5..78569301776f 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -415,6 +415,7 @@ static int __spi_validate(struct spi_device *spi, struct spi_message *message)
 	message->spi = spi;
 
 	list_for_each_entry(xfer, &message->transfers, transfer_list) {
+		xfer->effective_speed_hz = 0;
 		if (!xfer->bits_per_word)
 			xfer->bits_per_word = spi->bits_per_word;
 
diff --git a/include/spi/spi.h b/include/spi/spi.h
index 2061a44134d0..8458d890f4e6 100644
--- a/include/spi/spi.h
+++ b/include/spi/spi.h
@@ -333,6 +333,9 @@ static inline size_t spi_max_transfer_size(struct spi_device *spi)
  * @len: size of rx and tx buffers (in bytes)
  * @speed_hz: Select a speed other then the device default for this
  *      transfer. If 0 the default (from @spi_device) is used.
+ * @effective_speed_hz: the effective SCK-speed that was used to
+ *      transfer this transfer. Set to 0 if the SPI bus driver does
+ *      not support it.
  * @bits_per_word: select a bits_per_word other then the device default
  *      for this transfer. If 0 the default (from @spi_device) is used.
  * @cs_change: affects chipselect after this transfer completes
@@ -402,6 +405,8 @@ struct spi_transfer {
 	u16		delay_usecs;
 	u32		speed_hz;
 
+	u32		effective_speed_hz;
+
 	struct list_head transfer_list;
 };
 
-- 
2.39.5



