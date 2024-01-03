Delivery-date: Wed, 03 Jan 2024 11:15:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyHI-001mSV-0O
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 11:15:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rKyHH-0002Ka-1s
	for lore@pengutronix.de; Wed, 03 Jan 2024 11:15:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=B1JiWzUNOlwvI89A7hgSMfeBwUw/uLJTbi7kjtKrZXs=; b=qdQglYLzA4S1UfCogjifZJaEu3
	r39ASxwRPSAUc36SJEL5SJcjVFLo7rsGlr3FHkGG9bDiG0aVk8a5L8tPFcNvqHUPZWk8UW0+jbIyz
	lnGmAAoLtfPFgbEHpdugFq6sTrvw31i3WBiWPIcNqAodKsNOvjgm2Bz7nFUl0Qb9d7mx61YlrsUoC
	0S9jyfr82O9E+WCcOz4EhQO5C6acHKVthHGOc25QiltKxjrz8AmQP3vosbM3+WHfETgBSzj/tsfzr
	8JzUov9FNV71fHuj2pik4MkCMRQOqB+HNbizRqOyuwreFn+SQSFOw4R37zZ3IVU+uhKaNn3wGdLYk
	6Jds94aA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyGA-00ALpg-2w;
	Wed, 03 Jan 2024 10:14:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rKyG7-00ALoC-15
	for barebox@lists.infradead.org;
	Wed, 03 Jan 2024 10:14:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyG6-0001o5-5O; Wed, 03 Jan 2024 11:13:58 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyG5-0005vu-P8; Wed, 03 Jan 2024 11:13:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rKyG5-00B1xH-2E;
	Wed, 03 Jan 2024 11:13:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 11:13:54 +0100
Message-Id: <20240103101354.2629106-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_021359_372299_4203E438 
X-CRM114-Status: GOOD (  13.14  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] virtio: pci: don't re-enable with 0 as argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Qemu prints an error during barebox shutdown when virtio-net was used:

  qemu-system-aarch64: wrong value for queue_enable 0

This warning was added a few years back in Qemu commit 10d35e5819:

 | virtio-pci: fix queue_enable write
 |
 | Spec said: The driver uses this to selectively prevent the device from
 | executing requests from this virtqueue. 1 - enabled; 0 - disabled.
 |
 | Though write 0 to queue_enable is forbidden by the spec, we should not
 | assume that the value is 1.
 |
 | Fix this by ignore the write value other than 1.
 |
 | Signed-off-by: Jason Wang <jasowang@redhat.com>
 | Message-Id: <20200610054351.15811-1-jasowang@redhat.com>
 | Reviewed-by: Michael S. Tsirkin <mst@redhat.com>
 | Signed-off-by: Michael S. Tsirkin <mst@redhat.com>
 | Reviewed-by: Stefano Garzarella <sgarzare@redhat.com>
 | Reviewed-by: Stefan Hajnoczi <stefanha@redhat.com>
 | Reviewed-by: Michael S. Tsirkin <mst@redhat.com>
 | Signed-off-by: Michael S. Tsirkin <mst@redhat.com>

Even older Qemu versions actually marked the virtqueue enabled when
queue_enable was written with any value, we should really stop writing
anything, but 1 into queue_enable in the removal path.

We already reset before deleting the virtqueues, which disables them.
This aligns us with what Linux is doing, except that Linux has some
MSIX cleanup logic in virtio_pci_del_vq. We don't have that, but we
will keep the function anyway to simplify future synchronization.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/virtio/virtio_pci_modern.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/drivers/virtio/virtio_pci_modern.c b/drivers/virtio/virtio_pci_modern.c
index 26eefba85bea..2dd369b02e9a 100644
--- a/drivers/virtio/virtio_pci_modern.c
+++ b/drivers/virtio/virtio_pci_modern.c
@@ -223,14 +223,6 @@ static struct virtqueue *virtio_pci_setup_vq(struct virtio_device *vdev,
 
 static void virtio_pci_del_vq(struct virtqueue *vq)
 {
-	struct virtio_pci_device *vp_dev = to_vp_device(vq->vdev);
-	unsigned int index = vq->index;
-
-	iowrite16(index, &vp_dev->common->queue_select);
-
-	/* Select and deactivate the queue */
-	iowrite16(0, &vp_dev->common->queue_enable);
-
 	vring_del_virtqueue(vq);
 }
 
-- 
2.39.2



