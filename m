Delivery-date: Mon, 08 Jan 2024 11:15:43 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmfW-008gsd-3D
	for lore@lore.pengutronix.de;
	Mon, 08 Jan 2024 11:15:43 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rMmfW-0003Og-ET
	for lore@pengutronix.de; Mon, 08 Jan 2024 11:15:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8SGrn5hDpyQNbG59x6xfqQuCS7PW5alwJejtE6UPIKA=; b=lYF2sycjURtZ4HPFB7Nf95Y+LQ
	H9Ls7eRBX8qIhB3nLQ1fIsSLzkchKyxR7IDwTEqF7s43QEe7VZ3ccHZAhgh/O/bQGYcHtqoTOMrNZ
	hCvtUAyU1VpVxjv0gJOkGx43ghsJyYU6JYdhCdSF0hw84PonwGQmGumGHadJjzgBb+L0iDpwlVSbZ
	pI+y5aj1t+F7PKwzRyK2duUy0+XkeIY0VD68x9Pf1p+GVz/itGTF0lADyCBC9ATK8oFvyQtYkEbgr
	dfif2h5mdzTu1rIH07kHS6QwENM6fbTgkAhERLbJymJkTOBP8+vFwaHQekAxEVha4alfNyJceJYZL
	O7ytJPjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmeI-004Zno-1A;
	Mon, 08 Jan 2024 10:14:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rMmeF-004ZnA-0m
	for barebox@lists.infradead.org;
	Mon, 08 Jan 2024 10:14:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmeD-00033w-74; Mon, 08 Jan 2024 11:14:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmeC-001Dvh-Qj; Mon, 08 Jan 2024 11:14:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rMmeC-005Pp1-2O;
	Mon, 08 Jan 2024 11:14:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  8 Jan 2024 11:14:18 +0100
Message-Id: <20240108101419.1290778-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240108_021423_294574_A49CEEB2 
X-CRM114-Status: UNSURE (   9.64  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master 1/2] net: fsl-fman: fix alignment of RX buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The receive buffer needs to be cacheline aligned for cache maintenance
to avoid invalidating unrelated malloc memory. This was so far not the
case due to malloc's minimum alignment of 8-byte (with TLSF), so switch
to dma_alloc instead.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/fsl-fman.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index ff32fa8fc753..baafe027c079 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -620,9 +620,7 @@ static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
 			* RX_BD_RING_SIZE);
 
 	/* alloc Rx buffer from main memory */
-	rx_buf_pool = malloc(MAX_RXBUF_LEN * RX_BD_RING_SIZE);
-	if (!rx_buf_pool)
-		return -ENOMEM;
+	rx_buf_pool = dma_alloc(MAX_RXBUF_LEN * RX_BD_RING_SIZE);
 
 	memset(rx_buf_pool, 0, MAX_RXBUF_LEN * RX_BD_RING_SIZE);
 
-- 
2.39.2



