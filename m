Delivery-date: Thu, 16 Jun 2022 11:05:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1lRc-003ilU-Kj
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 11:05:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1lRc-0003Zg-IK
	for lore@pengutronix.de; Thu, 16 Jun 2022 11:05:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YKEl3tyQMcu9UEZypvpHZr+ZSIUDeDDut6XBjsDqtQg=; b=M9WpElhGncoA6O+xP/T7y5kNua
	ES1hSNaLIUAsGsrI8HuX78+hzRinLdhtp29rTNaC20uCWs79lUx0PWWaIStc624I/DlXwSbl7385O
	LWFGMW8csF7r8VOAfv+sNZPe4K/V6zP0+lRjMF6ZoKiy/xB3V0NiLEFuaCKgVE0dEWDVVGdWRiGZC
	/ArPQeYcbYdEAW7dRRHCKBB4U18n88eo8LacvNHV1OuYO/kpbp1GUsHh/LGtbvpsV6NkME9V5vKei
	pFejCsB5c/je9wbT2cRRyEY09i5isPRh4x6EVPtwnAET1xZDwNx29zwfUXQ7WF9o8kLvtIteaLlWj
	IZxea/6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1lQ1-001YHN-VA; Thu, 16 Jun 2022 09:04:02 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1lPw-001YG6-Uj
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 09:03:58 +0000
Received: by mail-lj1-x22b.google.com with SMTP id e4so803962ljl.1
        for <barebox@lists.infradead.org>; Thu, 16 Jun 2022 02:03:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YKEl3tyQMcu9UEZypvpHZr+ZSIUDeDDut6XBjsDqtQg=;
        b=hK9IayHhqnh9VAMOV7NTqcns3zqDbk9FR1qNwOdr+X3OImQQY8WUdGV5KhcjA+jMTd
         NVf7Yz151GhxKabA2pUGHLKbXA+7yYhXFG7Lgs9FbXM7DubbgExwdABPI4wLYlhX1T8F
         4j78w0TU/71jaBQxf4hNsBogp3oKX1tYCFvutYokUZb9xQKte01Yz6WRvhsU2yARDTil
         9fySpgUk3jldNiNIhxULnq+l7C9pdD651bZn4a32zRAWjvWriGSOjfqQmIxfq6oTyyR8
         TXznQbBA0ymUd+RKShFC+OQOdNxAV1WNwE9flh8AJjJfSDAui891v7C/lHE/fXIidLMg
         bEfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=YKEl3tyQMcu9UEZypvpHZr+ZSIUDeDDut6XBjsDqtQg=;
        b=118Ia2qS375DGbKH+9LkkT3zAExgqaYFnNprfpKAoloKQ74sNH014SdA0AmKxieNza
         8IgeFgVwY8cVfazGB9LCOlY5ic4bXJr6rZsmIkkE06AnFe9VqvfeOPdvtnK5qxD7uBJK
         0IQA2wvhocpG/zstaiy+Mp4ebUOVJaN6buK3V7pqwHDWUtvr0dONf0c71e+/K/QBEvUI
         FbvaVPRCIpEewDkcQ3t3Rxvq+2KrPrGfn5nC/IC5zAUUJt6vtZPlC5Y6x7kGnCivb6GN
         13zMtzKr/1L+jSK4C/hMVaByEImxlm1uRKWfTYAhryVi2elKnp1td5XxigKNhg+R2bBV
         GX8Q==
X-Gm-Message-State: AJIora/RkTU3w/rxxvzd1sdlTa6L4vedyEuXUVFzE4KUW9LpNh1NLUeY
	qZPPV2yk1zP6TbRB6oJlxo3jYHhYcz7fSw==
X-Google-Smtp-Source: AGRyM1sft1l/9OMgtg76xhMNE2lHYrVQhQw9Ljukgn8SHeSAoLMHdk82l8q9cvP99CA0Vz1MreyRfQ==
X-Received: by 2002:a05:651c:158c:b0:250:a23d:2701 with SMTP id h12-20020a05651c158c00b00250a23d2701mr1952384ljq.475.1655370234896;
        Thu, 16 Jun 2022 02:03:54 -0700 (PDT)
Received: from localhost.localdomain (109-252-141-171.dynamic.spd-mgts.ru. [109.252.141.171])
        by smtp.gmail.com with ESMTPSA id k5-20020a2e9205000000b00255804c185csm172601ljg.22.2022.06.16.02.03.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Jun 2022 02:03:54 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Thu, 16 Jun 2022 12:03:51 +0300
Message-Id: <20220616090351.645589-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_020357_062925_608D0DCD 
X-CRM114-Status: GOOD (  11.24  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: rtl8169: make it work on big-endian system
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/net/rtl8169.c | 34 +++++++++++++++++-----------------
 1 file changed, 17 insertions(+), 17 deletions(-)

diff --git a/drivers/net/rtl8169.c b/drivers/net/rtl8169.c
index 80997dc89f4..341f5f240e4 100644
--- a/drivers/net/rtl8169.c
+++ b/drivers/net/rtl8169.c
@@ -230,13 +230,13 @@ static void rtl8169_init_ring(struct rtl8169_priv *priv)
 	for (i = 0; i < NUM_RX_DESC; i++) {
 		if (i == (NUM_RX_DESC - 1))
 			priv->rx_desc[i].status =
-				BD_STAT_OWN | BD_STAT_EOR | PKT_BUF_SIZE;
+				cpu_to_le32(BD_STAT_OWN | BD_STAT_EOR | PKT_BUF_SIZE);
 		else
 			priv->rx_desc[i].status =
-				BD_STAT_OWN | PKT_BUF_SIZE;
+				cpu_to_le32(BD_STAT_OWN | PKT_BUF_SIZE);
 
 		priv->rx_desc[i].buf_addr =
-				virt_to_phys(priv->rx_buf + i * PKT_BUF_SIZE);
+				cpu_to_le32(virt_to_phys(priv->rx_buf + i * PKT_BUF_SIZE));
 	}
 }
 
@@ -358,21 +358,21 @@ static int rtl8169_eth_send(struct eth_device *edev, void *packet,
 
 	priv->tx_desc[entry].buf_Haddr = 0;
 	priv->tx_desc[entry].buf_addr =
-		virt_to_phys(priv->tx_buf + entry * PKT_BUF_SIZE);
+		cpu_to_le32(virt_to_phys(priv->tx_buf + entry * PKT_BUF_SIZE));
 
 	if (entry != (NUM_TX_DESC - 1)) {
 		priv->tx_desc[entry].status =
-			BD_STAT_OWN | BD_STAT_FS | BD_STAT_LS |
-			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN);
+			cpu_to_le32(BD_STAT_OWN | BD_STAT_FS | BD_STAT_LS |
+			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN));
 	} else {
 		priv->tx_desc[entry].status =
-			BD_STAT_OWN | BD_STAT_EOR | BD_STAT_FS | BD_STAT_LS |
-			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN);
+			cpu_to_le32(BD_STAT_OWN | BD_STAT_EOR | BD_STAT_FS | BD_STAT_LS |
+			((packet_length > ETH_ZLEN) ? packet_length : ETH_ZLEN));
 	}
 
 	RTL_W8(priv, TxPoll, 0x40);
 
-	while (priv->tx_desc[entry].status & BD_STAT_OWN)
+	while (le32_to_cpu(priv->tx_desc[entry].status) & BD_STAT_OWN)
 		;
 
 	dma_sync_single_for_cpu((unsigned long)priv->tx_buf + entry *
@@ -391,9 +391,9 @@ static int rtl8169_eth_rx(struct eth_device *edev)
 
 	entry = priv->cur_rx % NUM_RX_DESC;
 
-	if ((priv->rx_desc[entry].status & BD_STAT_OWN) == 0) {
-		if (!(priv->rx_desc[entry].status & BD_STAT_RX_RES)) {
-			pkt_size = (priv->rx_desc[entry].status & 0x1fff) - 4;
+	if ((le32_to_cpu(priv->rx_desc[entry].status) & BD_STAT_OWN) == 0) {
+		if (!(le32_to_cpu(priv->rx_desc[entry].status) & BD_STAT_RX_RES)) {
+			pkt_size = (le32_to_cpu(priv->rx_desc[entry].status) & 0x1fff) - 4;
 
 			dma_sync_single_for_cpu((unsigned long)priv->rx_buf
 						+ entry * PKT_BUF_SIZE,
@@ -407,14 +407,14 @@ static int rtl8169_eth_rx(struct eth_device *edev)
 						   pkt_size, DMA_FROM_DEVICE);
 
 			if (entry == NUM_RX_DESC - 1)
-				priv->rx_desc[entry].status = BD_STAT_OWN |
-					BD_STAT_EOR | PKT_BUF_SIZE;
+				priv->rx_desc[entry].status = cpu_to_le32(BD_STAT_OWN |
+					BD_STAT_EOR | PKT_BUF_SIZE);
 			else
 				priv->rx_desc[entry].status =
-					BD_STAT_OWN | PKT_BUF_SIZE;
+					cpu_to_le32(BD_STAT_OWN | PKT_BUF_SIZE);
 			priv->rx_desc[entry].buf_addr =
-				virt_to_phys(priv->rx_buf +
-				             entry * PKT_BUF_SIZE);
+				cpu_to_le32(virt_to_phys(priv->rx_buf +
+							 entry * PKT_BUF_SIZE));
 		} else {
 			dev_err(&edev->dev, "rx error\n");
 		}
-- 
2.36.1



