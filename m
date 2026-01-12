Delivery-date: Mon, 12 Jan 2026 09:56:27 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDit-000Smr-36
	for lore@lore.pengutronix.de;
	Mon, 12 Jan 2026 09:56:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vfDis-00021m-Tb
	for lore@pengutronix.de; Mon, 12 Jan 2026 09:56:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Mp1+3CLj7M/pWKU9Yr16w+oAe77hMYXWcJtSxdCbtnY=; b=bHRH1bXYiKubgR4IOlUG2fwS/4
	uoifSVemC3jmY1+CHr6eDaVFfT3hUTstORBDlipTXSmOSKwgH7XklbGRRCv7ldtGwguFO5501nN5o
	KakWb6Kxo/hCEcok3eOG8Ae+32YJ/iwRPPegg5rNdqrYkhQYWqLaXzjqXJIX97F/eq8qzJQ6C/Wtz
	o/7J4HyfvFKW276btgwJJBusISilGQ3DCIXXU+C095CIH3WsJCZlLsKqUwr2IqmrVteun+pG53EGb
	56RYcY5MJxk+GOzy2Bf9DFUULA7Locdoi6uCTP+F17HzZcc6VMqE9G3+UYsts9ZvJA5ICJBovvqld
	vrCxO4cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDiP-00000005203-0e9F;
	Mon, 12 Jan 2026 08:55:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfDiN-000000051ys-1J61
	for barebox@lists.infradead.org;
	Mon, 12 Jan 2026 08:55:56 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vfDiL-0001qw-CO; Mon, 12 Jan 2026 09:55:53 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Claude <noreply@claude.ai>,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon, 12 Jan 2026 09:55:39 +0100
Message-ID: <20260112085548.2952525-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260112_005555_349911_564CC103 
X-CRM114-Status: UNSURE (   9.40  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] virtio: ring: fix stale data in queue after reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When resetting barebox for QEMU Virt or chainloading it, the log is
spammed with:

  virtio_net virtio1: id 65536 out of range

This is because we have two ways to allocate the vrings, either via
dma_alloc_coherent or memalign and the latter doesn't zero the queues.

A better fix that makes use of the DMA APIs unconditionally will follow
in a later release.

Co-developed-by: Claude <noreply@claude.ai>
[ahmad: Claude was pointed at QEMU, Linux and U-Boot implementations
 and found the discrepancy, but had a different less efficient fix]

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/virtio/virtio_ring.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index c1c84e49615f..8b6469f54d2a 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -369,6 +369,8 @@ static void *vring_alloc_queue(struct virtio_device *vdev,
 			phys_addr_t phys_addr = virt_to_phys(queue);
 			*dma_handle = (dma_addr_t)phys_addr;
 
+			memset(queue, 0x00, PAGE_ALIGN(size));
+
 			/*
 			 * Sanity check: make sure we dind't truncate
 			 * the address.  The only arches I can find that
-- 
2.47.3



