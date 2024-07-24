Delivery-date: Wed, 24 Jul 2024 11:48:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWYbL-002QmA-26
	for lore@lore.pengutronix.de;
	Wed, 24 Jul 2024 11:48:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sWYbL-0005uD-2L
	for lore@pengutronix.de; Wed, 24 Jul 2024 11:48:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=/JAuGVCL/wpmphSrKPz4JdbpcB5nVJPTpn/+H9L7q64=; b=lAXI3mkaqdLhwq+X7Ax0B/QGmC
	oK0pVJU8OsmaNRb279pMjGAEzGh6jjxTy3ZVWVAPr7KvfaLby72GPlW7n8YPCiR4qt+r2ZcsR84n7
	CQdyQ3+EJJR3vQXaGaHJnHivzJp/8bx7Pav4BtdQWIU98HsbnAT35VuGgVFx7iHBYo61b96qksYwc
	OhaBB5v3XqJwab99DaQtHj0O8gliB0K/OWWBhUaP+urbWa5LR+jOLWMPk81QR9+X5Q2I2Y7D00prI
	QWKUxmSAfTz4e5xkibTmPw657KPT2e7xiXv8KxMi4P4TFfCdok1xZVE5Bnf6/8L43xk+nRsXC+CKU
	KR+3s+ow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYaw-0000000Eyre-3yiK;
	Wed, 24 Jul 2024 09:47:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sWYau-0000000Eyqi-2LFO
	for barebox@lists.infradead.org;
	Wed, 24 Jul 2024 09:47:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYat-0005kg-8c; Wed, 24 Jul 2024 11:47:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYas-001pNH-Ru; Wed, 24 Jul 2024 11:47:34 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sWYas-003jUl-2S;
	Wed, 24 Jul 2024 11:47:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ske@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Jul 2024 11:47:31 +0200
Message-Id: <20240724094732.886245-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240724_024736_635023_0EBEF153 
X-CRM114-Status: GOOD (  10.10  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/2] dma: debug: fix compiler warning about pointer u64 cast
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All other prints in the file use the DMA address except for this single
print inside debug_dma_map(). Let's use the DMA address there as well to
fix the warning about casting a 32-bit pointer to a 64 bit integer and
to align error messages in case of non-1:1 mapped DMA addresses.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/dma/debug.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/dma/debug.c b/drivers/dma/debug.c
index 32a417504479..befe837d6cd8 100644
--- a/drivers/dma/debug.c
+++ b/drivers/dma/debug.c
@@ -131,7 +131,7 @@ void debug_dma_map(struct device *dev, void *addr,
 
 	if (!IS_ALIGNED(dev_addr, DMA_ALIGNMENT))
 		dma_dev_warn(dev, "Mapping insufficiently aligned %s buffer 0x%llx+0x%zx: %u bytes required!\n",
-			     dir2name[direction], (u64)addr, size, DMA_ALIGNMENT);
+			     dir2name[direction], (u64)dev_addr, size, DMA_ALIGNMENT);
 }
 
 void debug_dma_unmap(struct device *dev, dma_addr_t addr,
-- 
2.39.2



