Delivery-date: Fri, 18 Aug 2023 16:24:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qX0PG-009XUH-P6
	for lore@lore.pengutronix.de; Fri, 18 Aug 2023 16:24:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qX0PE-00086o-HY
	for lore@pengutronix.de; Fri, 18 Aug 2023 16:24:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9iG247olc65+kegvz3ToSy2GgOq2BLGaMV+vKPRDGXU=; b=SO7eIX/6L3QsAsFFeeoz4Uok1X
	FkQUyGgQsS7C7YjpsHld6fWjq3Lg3Xpy2eLGirJXzrxodjJt/z1kjHqHhyfYMETgqOXhV6QYUpw4k
	i5CLdqmdgAagtHWty/jTx5aJHMEbVsy1M44eJwsl9SJEmwoms3iPhZRJzQwpW57YPUtlYVyUGSEaz
	Kael3aVcNgd9euN/MuS47H1OlaIKL3uf8a9Ils3YFDLKVV+MjUQATvWWzpHpCXDcpURlLHVziLAi4
	FOF7DVji0NNOW9Vo58XIBybFae46EQD3fSkOkq4KY6PA27ZwvlZXXx+/esDaERzbp02wlSlfohbHv
	Xd17u/2w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qX0O5-009USR-2X;
	Fri, 18 Aug 2023 14:23:41 +0000
Received: from relay1-d.mail.gandi.net ([2001:4b98:dc4:8::221])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qX0Nx-009UP4-2x
	for barebox@lists.infradead.org;
	Fri, 18 Aug 2023 14:23:37 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 8375124000F;
	Fri, 18 Aug 2023 14:23:28 +0000 (UTC)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@kalray.eu>
Date: Fri, 18 Aug 2023 16:22:42 +0200
Message-ID: <20230818142244.17157-5-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230818142244.17157-1-jmaselbas@kalray.eu>
References: <20230818142244.17157-1-jmaselbas@kalray.eu>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-GND-Sasl: jmaselbas@zdiv.net
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230818_072334_231333_88C97E52 
X-CRM114-Status: GOOD (  17.01  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 5/7] mci: sdhci: Add 64-bit DMA addressing suport for V4 mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
change in v2:
 - applied the fixup:
   straight copy from Linux didn't worked because the macro SDHCI_DMA_BOUNDARY_512K
   (default value of sdhci::sdma_boundary) is not a size but the enum value to be
   written in the transfer control register.

 drivers/mci/sdhci.c | 64 +++++++++++++++++++++++++++++++++++++++++++--
 drivers/mci/sdhci.h | 15 +++++++++++
 2 files changed, 77 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/sdhci.c b/drivers/mci/sdhci.c
index bce4ff2a14..4aca3af5aa 100644
--- a/drivers/mci/sdhci.c
+++ b/drivers/mci/sdhci.c
@@ -111,6 +111,35 @@ void sdhci_set_bus_width(struct sdhci *host, int width)
 	sdhci_write8(host, SDHCI_HOST_CONTROL, ctrl);
 }
 
+static inline bool sdhci_can_64bit_dma(struct sdhci *host)
+{
+	/*
+	 * According to SD Host Controller spec v4.10, bit[27] added from
+	 * version 4.10 in Capabilities Register is used as 64-bit System
+	 * Address support for V4 mode.
+	 */
+	if (host->version >= SDHCI_SPEC_410 && host->v4_mode)
+		return host->caps & SDHCI_CAN_64BIT_V4;
+
+	return host->caps & SDHCI_CAN_64BIT;
+}
+
+
+static void sdhci_set_adma_addr(struct sdhci *host, dma_addr_t addr)
+{
+	sdhci_write32(host, SDHCI_ADMA_ADDRESS, lower_32_bits(addr));
+	if (host->flags & SDHCI_USE_64_BIT_DMA)
+		sdhci_write32(host, SDHCI_ADMA_ADDRESS_HI, upper_32_bits(addr));
+}
+
+static void sdhci_set_sdma_addr(struct sdhci *host, dma_addr_t addr)
+{
+	if (host->v4_mode)
+		sdhci_set_adma_addr(host, addr);
+	else
+		sdhci_write32(host, SDHCI_DMA_ADDRESS, addr);
+}
+
 #ifdef __PBL__
 /*
  * Stubs to make timeout logic below work in PBL
@@ -160,6 +189,33 @@ void sdhci_setup_data_pio(struct sdhci *sdhci, struct mci_data *data)
 		      SDHCI_TRANSFER_BLOCK_SIZE(data->blocksize) | data->blocks << 16);
 }
 
+static void sdhci_config_dma(struct sdhci *host)
+{
+	u8 ctrl;
+	u16 ctrl2;
+
+	if (host->version < SDHCI_SPEC_200)
+		return;
+
+	ctrl = sdhci_read8(host, SDHCI_HOST_CONTROL);
+	/* Note if DMA Select is zero then SDMA is selected */
+	ctrl &= ~SDHCI_CTRL_DMA_MASK;
+	sdhci_write8(host, SDHCI_HOST_CONTROL, ctrl);
+
+	if (host->flags & SDHCI_USE_64_BIT_DMA) {
+		/*
+		 * If v4 mode, all supported DMA can be 64-bit addressing if
+		 * controller supports 64-bit system address, otherwise only
+		 * ADMA can support 64-bit addressing.
+		 */
+		if (host->v4_mode) {
+			ctrl2 = sdhci_read16(host, SDHCI_HOST_CONTROL2);
+			ctrl2 |= SDHCI_CTRL_64BIT_ADDR;
+			sdhci_write16(host, SDHCI_HOST_CONTROL2, ctrl2);
+		}
+	}
+}
+
 void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			  dma_addr_t *dma)
 {
@@ -188,7 +244,8 @@ void sdhci_setup_data_dma(struct sdhci *sdhci, struct mci_data *data,
 		return;
 	}
 
-	sdhci_write32(sdhci, SDHCI_DMA_ADDRESS, *dma);
+	sdhci_config_dma(sdhci);
+	sdhci_set_sdma_addr(sdhci, *dma);
 }
 
 int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
@@ -230,7 +287,7 @@ int sdhci_transfer_data_dma(struct sdhci *sdhci, struct mci_data *data,
 			 * the interrupt and kick the DMA engine again.
 			 */
 			sdhci_write32(sdhci, SDHCI_INT_STATUS, SDHCI_INT_DMA);
-			sdhci_write32(sdhci, SDHCI_DMA_ADDRESS, addr);
+			sdhci_set_sdma_addr(sdhci, dma);
 		}
 
 		if (irqstat & SDHCI_INT_XFER_COMPLETE)
@@ -594,5 +651,8 @@ int sdhci_setup_host(struct sdhci *host)
 
 	host->sdma_boundary = SDHCI_DMA_BOUNDARY_512K;
 
+	if (sdhci_can_64bit_dma(host))
+		host->flags |= SDHCI_USE_64_BIT_DMA;
+
 	return 0;
 }
diff --git a/drivers/mci/sdhci.h b/drivers/mci/sdhci.h
index 1f5d0564fc..f3ffd62dff 100644
--- a/drivers/mci/sdhci.h
+++ b/drivers/mci/sdhci.h
@@ -197,6 +197,21 @@ struct sdhci {
 	int max_clk; /* Max possible freq (Hz) */
 	int clk_mul; /* Clock Muliplier value */
 
+	int flags;		/* Host attributes */
+#define SDHCI_USE_SDMA		(1<<0)	/* Host is SDMA capable */
+#define SDHCI_USE_ADMA		(1<<1)	/* Host is ADMA capable */
+#define SDHCI_REQ_USE_DMA	(1<<2)	/* Use DMA for this req. */
+#define SDHCI_DEVICE_DEAD	(1<<3)	/* Device unresponsive */
+#define SDHCI_SDR50_NEEDS_TUNING (1<<4)	/* SDR50 needs tuning */
+#define SDHCI_AUTO_CMD12	(1<<6)	/* Auto CMD12 support */
+#define SDHCI_AUTO_CMD23	(1<<7)	/* Auto CMD23 support */
+#define SDHCI_PV_ENABLED	(1<<8)	/* Preset value enabled */
+#define SDHCI_USE_64_BIT_DMA	(1<<12)	/* Use 64-bit DMA */
+#define SDHCI_HS400_TUNING	(1<<13)	/* Tuning for HS400 */
+#define SDHCI_SIGNALING_330	(1<<14)	/* Host is capable of 3.3V signaling */
+#define SDHCI_SIGNALING_180	(1<<15)	/* Host is capable of 1.8V signaling */
+#define SDHCI_SIGNALING_120	(1<<16)	/* Host is capable of 1.2V signaling */
+
 	unsigned int version; /* SDHCI spec. version */
 
 	enum mci_timing timing;
-- 
2.41.0



