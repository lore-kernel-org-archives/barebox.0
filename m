Delivery-date: Mon, 14 Oct 2024 15:57:20 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZY-004HaB-2G
	for lore@lore.pengutronix.de;
	Mon, 14 Oct 2024 15:57:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t0LZX-0006gT-MU
	for lore@pengutronix.de; Mon, 14 Oct 2024 15:57:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/JPOgBNoupUm6Lo5hc5ypvYeiw8LSIWOT0L1QKPsF1g=; b=EoHcnkEByLKSZLQYJby0MoeTuC
	WEwfEC6mUFxQFzAHvgQBzmhVoYgbTYu3C3SF2O+5dXXsXIUierpkq7oBXPrCAh1rBsh9pEWPO4gim
	7Cl5WgaAX1GMyDMzGNYSC/lMa3LUk66gP+t6JY8JCHcgK0zne/wJ+lYiXXHHmXgzxFH4pi8q2ofVQ
	JKZscbDWRFw3nvvAUlF0jtLxvF8E5nkRMRYRSTBeOL6rtyWwcE48DmSC7Kh8RhGzxrdLGnc8QChMh
	IdWgF6UUSz/gH56fTu/VT1A5/J8tp+ICAkfRDPtbheo9VcAsO7yCO20fdg5FyDYLxoiDkGyd3xn9q
	nQACn+cg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t0LYy-00000005NcJ-1Jg7;
	Mon, 14 Oct 2024 13:56:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t0Kmp-00000005Blv-122Z
	for barebox@lists.infradead.org;
	Mon, 14 Oct 2024 13:07:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Kmn-000868-Hv; Mon, 14 Oct 2024 15:06:57 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Kmn-001ncD-5N; Mon, 14 Oct 2024 15:06:57 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t0Kmn-00CVb2-0D;
	Mon, 14 Oct 2024 15:06:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Oct 2024 15:06:56 +0200
Message-Id: <20241014130656.2981029-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241009060511.4121157-6-a.fatoum@pengutronix.de>
References: <20241009060511.4121157-6-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241014_060659_301253_35CEF200 
X-CRM114-Status: GOOD (  10.25  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! virtio: don't use DMA API unless required
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux uses the member to decide e.g. inside vring_map_single, whether
DMA API should be used. I think we may need it in barebox in future too,
but it can always be added later.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/virtio/virtio_ring.c | 1 -
 include/linux/virtio_ring.h  | 1 -
 2 files changed, 2 deletions(-)

diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index 1e5431dd3ee4..b0b402834aca 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -422,7 +422,6 @@ struct virtqueue *vring_create_virtqueue(unsigned int index, unsigned int num,
 
 	vq->queue_dma_addr = dma_addr;
 	vq->queue_size_in_bytes = queue_size_in_bytes;
-	vq->use_dma_api = vring_use_dma_api(vdev);
 
 	return vq;
 }
diff --git a/include/linux/virtio_ring.h b/include/linux/virtio_ring.h
index 7bf667611938..bdef47b0fa6c 100644
--- a/include/linux/virtio_ring.h
+++ b/include/linux/virtio_ring.h
@@ -103,7 +103,6 @@ struct virtqueue {
 	unsigned int num_free;
 	struct vring vring;
 	bool event;
-	bool use_dma_api;
 	unsigned int free_head;
 	unsigned int num_added;
 	u16 last_used_idx;
-- 
2.39.5



