Delivery-date: Sun, 15 Feb 2026 18:12:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrffA-00220G-26
	for lore@lore.pengutronix.de;
	Sun, 15 Feb 2026 18:12:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrffA-0007eS-WC
	for lore@pengutronix.de; Sun, 15 Feb 2026 18:12:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5xS/BTSlEsoLtQbXwOPd19nCGLV5AjCoud4iX+57fcw=; b=f5SjUWWu/QTGDaPkKqVA135KlA
	ivLeo03ElL+FlukWYZwJaVsxodVoE7akIXs8pfakEHnXmoO25QER9ykUeXmcBjhg/hCWv6HNaO4+Y
	Jpu0ZlSlK6uiaSiumPZM87t0GOLQke0dgitxCrolYfAt0sRs5AnuSIYX1UpkqGgbepJClFn0eFYYl
	YHfFMnektOconThQRAzGfg1+SvisdQPqNaO+7h4X0iwNBgZhz+Q2rTT/RVkdMixkWqsSO0QVfd5W0
	LEfBp5NC1TlFGIn3MuAhJ1hS8Lor/vnKmdXeET7FZ+Ejmy7T7SNsFng14F3QMGcf254JDnveV9JB8
	/qYBplKQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrfec-00000005XcC-3Jds;
	Sun, 15 Feb 2026 17:11:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrfea-00000005XbR-2ZWM
	for barebox@lists.infradead.org;
	Sun, 15 Feb 2026 17:11:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vrfeY-0007Zo-Us; Sun, 15 Feb 2026 18:11:26 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vrfeX-000vqV-0D;
	Sun, 15 Feb 2026 18:11:26 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vrfeY-0000000B6al-1JJE;
	Sun, 15 Feb 2026 18:11:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Sun, 15 Feb 2026 18:11:23 +0100
Message-ID: <20260215171125.2646877-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260215_091128_648461_B29A7CEA 
X-CRM114-Status: UNSURE (   8.29  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=ham
	autolearn_force=no version=3.4.2
Subject: [PATCH] virtio: fix variable shadowing in virtqueue_add_sgs input scatter loop
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The inner for loop in the in_sgs processing section had a local
declaration 'struct scatterlist *sg = sgs[n]' that shadowed the loop
variable 'sg' from the enclosing for statement.

Remove the shadowing declaration so the loop variable is used
consistently, matching the out_sgs loop.
This aligns the loop with the logic above for out_sgs.

Reported-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/virtio/virtio_ring.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index 2c61329414d9..55f6be311c51 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -112,7 +112,6 @@ int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
 
 	for (; n < (out_sgs + in_sgs); n++) {
 		for (sg = sgs[n]; sg; sg = sg_next(sg)) {
-			struct scatterlist *sg = sgs[n];
 			dma_addr_t addr = vring_map_one_sg(vq, sg, DMA_FROM_DEVICE);
 			if (vring_mapping_error(vq, addr))
 				goto unmap_release;
-- 
2.47.3



