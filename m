Delivery-date: Mon, 02 Jun 2025 08:20:53 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLyXV-002rkI-0T
	for lore@lore.pengutronix.de;
	Mon, 02 Jun 2025 08:20:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uLyXU-0002tn-KA
	for lore@pengutronix.de; Mon, 02 Jun 2025 08:20:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oDuQGvfvb9oI6bkYHE6hUSS2RlA/NgvFyB8spzaofH0=; b=kpf76cE0vAJyaMk6C6iTTS3ncU
	3RDmjqAnDJ9YHCBN48pxUWR48/S6oaAqwUZiz6OzYXwIY+FcQ4TP+pH3vyf+q3nC+yyIZc3n03ArQ
	yQurrrU1nUUw1hier0/HmIYOYwmtoxAu3XJlaPu6j12IsOvi1piUR8oriVmtzTvszSkXtEkwvL02I
	dZoLqt7DFOkTWyTAgqbwQ5b8zoQBhI8UGJ2j3jem7AVmbM0OLtnqBFlZXTvPk/o6rWyjmEWBcnaWV
	9oXO+7nIIJJuungaMvh9YQ+kWsjvv82mboQWaxCDhj94cQXu3crXXqUoirGl4K+dT/CjYaCvI6oPT
	/iHxYICQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLyX3-00000006pay-2ObH;
	Mon, 02 Jun 2025 06:20:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uLyX0-00000006paE-2CWq
	for barebox@lists.infradead.org;
	Mon, 02 Jun 2025 06:20:23 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1uLyWz-0002iL-79; Mon, 02 Jun 2025 08:20:21 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  2 Jun 2025 08:20:19 +0200
Message-Id: <20250602062020.754880-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250601_232022_562918_D93143E8 
X-CRM114-Status: GOOD (  10.56  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] dma: apbh: pass integer, not pointer as value to writel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In preparation for enforcing that at least the value of writeX is an
integer, a number of places writing a pointer were noticed.

Add a virt_to_phys to paper over this with a comment that this is not
completely correct.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/dma/apbh_dma.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/drivers/dma/apbh_dma.c b/drivers/dma/apbh_dma.c
index 298f706f1bcd..fb8b6b304cf0 100644
--- a/drivers/dma/apbh_dma.c
+++ b/drivers/dma/apbh_dma.c
@@ -103,6 +103,7 @@ int mxs_dma_go(int chan, struct mxs_dma_cmd *cmd, int ncmds)
 	struct apbh_dma *apbh = apbh_dma;
 	uint32_t timeout = 10000;
 	int i, ret, channel_bit;
+	dma_addr_t dma;
 
 	ret = mxs_dma_validate_chan(chan);
 	if (ret)
@@ -113,12 +114,18 @@ int mxs_dma_go(int chan, struct mxs_dma_cmd *cmd, int ncmds)
 		cmd[i].data |= MXS_DMA_DESC_CHAIN;
 	}
 
+	/*
+	 * TODO: cmd is in DMA coherent memory, but it uses DMA_ADDRESS_BROKEN,
+	 * and thus assumes a 1:1 mapping here
+	 */
+	dma = virt_to_phys(cmd);
+
 	if (apbh_dma_is_imx23(apbh)) {
-		writel(cmd, apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX23(chan));
+		writel(dma, apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX23(chan));
 		writel(1, apbh->regs + HW_APBHX_CHn_SEMA_MX23(chan));
 		channel_bit = chan + BP_APBH_CTRL0_CLKGATE_CHANNEL;
 	} else {
-		writel(cmd, apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX28(chan));
+		writel(dma, apbh->regs + HW_APBHX_CHn_NXTCMDAR_MX28(chan));
 		writel(1, apbh->regs + HW_APBHX_CHn_SEMA_MX28(chan));
 		channel_bit = chan;
 	}
-- 
2.39.5



