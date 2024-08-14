Delivery-date: Wed, 14 Aug 2024 11:25:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAFe-009UR2-07
	for lore@lore.pengutronix.de;
	Wed, 14 Aug 2024 11:25:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1seAFd-00076k-3h
	for lore@pengutronix.de; Wed, 14 Aug 2024 11:25:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C5Jr0qGnKpy0xPMDCP2otTfzNfErMKX/2an9dZL5Ir8=; b=K4tEaGAf9LsceoRee69oe9lfZ3
	1OZS1woOGSlk6KJxrRBgmmakgAXKcE4++HRzLYcDi37KmkWXKnXzFEv7KOsdwwK9L6djFldNlKDss
	BvGgwGHEk9Pbx8FFhQqfrU5oV3GnuSFaMGvcHgAgXnMpZKCC6PWFdCCnx/5UoXRm/IJGqpqZZIVpl
	kXz6dpeE2Ob+CMS0xIuIz540FFbylmgbVdUlKl3siXCPrxghVtbN0TOErBl81XmO9sdjDh58BAJpm
	ZUgc/Pv1iibZ78XIVCoOtyRfTwlQsLIay037/9qyuCsO/wMZPHW2uRlkxbwqsXsZJfBO27Ba31Pau
	YjIUNcng==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF7-00000006Msp-3j7T;
	Wed, 14 Aug 2024 09:24:33 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF6-00000006Ms5-0BOC
	for barebox@bombadil.infradead.org;
	Wed, 14 Aug 2024 09:24:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=C5Jr0qGnKpy0xPMDCP2otTfzNfErMKX/2an9dZL5Ir8=; b=GL9AgNG98x1gXTgPZXnTu443av
	L2/BatgmWoq5tU+brwVXcL5x7vlYTJ0MFhjrrLjYB/0lcChXBnqblzQC6n8dsfjK5HTtaI9i4gtLX
	XiRuFcJgJpvGSTDWIZZyOKfRsroehbDFebr854ACXEhDUMc+r1LaS3uUSW+bFT86OFvhhcQub0jRD
	nYUNl7xrG3kGvFBkw2kVI5UE8tS470hXgbJDNUWwU/w6mAVL7/1pRGWgxeVRrJvgr/8SIDnKrmqDL
	WIMqvReI1p+1no2I2RqpkHdzHMGQii9SczYScDBKTwfxstbpZfthHMoTu2F+eLo1nNP0Yn3CwWIFT
	NcNH7tbg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seAF1-000000080Lg-0Gnp
	for barebox@lists.infradead.org;
	Wed, 14 Aug 2024 09:24:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAF0-0006sn-5O; Wed, 14 Aug 2024 11:24:26 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-000KMw-M6; Wed, 14 Aug 2024 11:24:25 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1seAEz-000AUW-1u;
	Wed, 14 Aug 2024 11:24:25 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 14 Aug 2024 11:24:24 +0200
Message-Id: <20240814092424.39878-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240814092424.39878-1-a.fatoum@pengutronix.de>
References: <20240814092424.39878-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_102427_479389_6AB72DE0 
X-CRM114-Status: GOOD (  13.07  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 6/6] net: fsl_enetc: fix compilation for 32-bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The driver is only used on the 64-bit LS1028, but compile testing on
32-bit fails mostly due to unnecessary pointer casts.

Fixing them cleans up the code a little, so let's do that even if
there's no functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/fsl_enetc.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/net/fsl_enetc.c b/drivers/net/fsl_enetc.c
index 1695758fd3fe..7895e229e483 100644
--- a/drivers/net/fsl_enetc.c
+++ b/drivers/net/fsl_enetc.c
@@ -8,11 +8,12 @@
 #include <net.h>
 #include <linux/phy.h>
 #include <linux/pci.h>
-#include <io.h>
+#include <linux/io.h>
 #include <linux/mdio.h>
 #include <asm/system.h>
 #include <of_net.h>
 #include <asm/unaligned.h>
+#include <io-64-nonatomic-lo-hi.h>
 
 #include "fsl_enetc.h"
 
@@ -197,7 +198,7 @@ static void enetc_start_pcs(struct eth_device *edev)
  * LS1028A is the only part with IERB at this time and there are plans to
  * change its structure, keep this LS1028A specific for now.
  */
-#define LS1028A_IERB_BASE		0x1f0800000ULL
+#define LS1028A_IERB_BASE		IOMEM(0x1f0800000ULL)
 #define LS1028A_IERB_PSIPMAR0(pf, vf)	(LS1028A_IERB_BASE + 0x8000 \
 					 + (pf) * 0x100 + (vf) * 8)
 #define LS1028A_IERB_PSIPMAR1(pf, vf)	(LS1028A_IERB_PSIPMAR0(pf, vf) + 4)
@@ -283,7 +284,6 @@ static void enetc_setup_tx_bdr(struct eth_device *edev)
 {
 	struct enetc_priv *priv = edev->priv;
 	struct bd_ring *tx_bdr = &priv->tx_bdr;
-	u64 tx_bd_add = (u64)priv->enetc_txbd_phys;
 
 	/* used later to advance to the next Tx BD */
 	tx_bdr->bd_count = ENETC_BD_CNT;
@@ -296,9 +296,9 @@ static void enetc_setup_tx_bdr(struct eth_device *edev)
 
 	/* set Tx BD address */
 	enetc_bdr_write(priv, TX, ENETC_TX_BDR_ID, ENETC_TBBAR0,
-			lower_32_bits(tx_bd_add));
+			lower_32_bits(priv->enetc_txbd_phys));
 	enetc_bdr_write(priv, TX, ENETC_TX_BDR_ID, ENETC_TBBAR1,
-			upper_32_bits(tx_bd_add));
+			upper_32_bits(priv->enetc_txbd_phys));
 	/* set Tx 8 BD count */
 	enetc_bdr_write(priv, TX, ENETC_TX_BDR_ID, ENETC_TBLENR,
 			tx_bdr->bd_count);
@@ -323,7 +323,6 @@ static void enetc_setup_rx_bdr(struct eth_device *edev)
 {
 	struct enetc_priv *priv = edev->priv;
 	struct bd_ring *rx_bdr = &priv->rx_bdr;
-	u64 rx_bd_add = (u64)priv->enetc_rxbd_phys;
 	int i;
 
 	/* used later to advance to the next BD produced by ENETC HW */
@@ -337,9 +336,9 @@ static void enetc_setup_rx_bdr(struct eth_device *edev)
 
 	/* set Rx BD address */
 	enetc_bdr_write(priv, RX, ENETC_RX_BDR_ID, ENETC_RBBAR0,
-			lower_32_bits(rx_bd_add));
+			lower_32_bits(priv->enetc_rxbd_phys));
 	enetc_bdr_write(priv, RX, ENETC_RX_BDR_ID, ENETC_RBBAR1,
-			upper_32_bits(rx_bd_add));
+			upper_32_bits(priv->enetc_rxbd_phys));
 	/* set Rx BD count (multiple of 8) */
 	enetc_bdr_write(priv, RX, ENETC_RX_BDR_ID, ENETC_RBLENR,
 			rx_bdr->bd_count);
@@ -448,8 +447,8 @@ static int enetc_send(struct eth_device *edev, void *packet, int length)
 		return -ETIMEDOUT;
 	}
 
-	dev_vdbg(&edev->dev, "TxBD[%d]send: pkt_len=%d, buff @0x%x%08x\n", pi, length,
-		  upper_32_bits((u64)packet), lower_32_bits((u64)packet));
+	dev_vdbg(&edev->dev, "TxBD[%d]send: pkt_len=%d, buff @%p\n", pi, length,
+		  packet);
 
 	dma = dma_map_single(priv->dev, packet, length, DMA_TO_DEVICE);
 
-- 
2.39.2



