Delivery-date: Wed, 03 Jan 2024 19:37:15 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL67A-002OLZ-0N
	for lore@lore.pengutronix.de;
	Wed, 03 Jan 2024 19:37:15 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rL675-0000D1-0A
	for lore@pengutronix.de; Wed, 03 Jan 2024 19:37:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hDqLCV20+qOA9+5nEkHiN6vVcC/roKPNgxFuBOWdVE8=; b=tX2XyEzzlO+8S5CyD4fGFC/wCZ
	kbvv9/h2sZjG0NxxfylUgI92oNXJufYqKs3c8jATgIhXa/PoQ2Nfw/dla/KRYXtWpT9fYtccRIwpe
	W0v0OkP4/NrWHIu6yF+aguzK4GMVJn6/5BThWHX/BUyfsxfCUkMIwrA4/pAN2qQWAAMfH64WjHqr4
	fSXzvuQi/Nn5IF60ev0/iudi7VAOOUEKF6jB8LtxekZ7k1IDQ6pfTiBDWDA2ORb9dDtFIz7l0zt7t
	JMOo2CFWdgs4xb/Z066KcH0h6IoWe0a0aUPuzRAStp3MLJ4e0XyX6IXRJYMZAsaqSHJ+pQ1Urbdin
	vyoh1eLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rL65O-00BmCI-2l;
	Wed, 03 Jan 2024 18:35:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rL61R-00BhWV-2E
	for barebox@bombadil.infradead.org;
	Wed, 03 Jan 2024 18:31:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=hDqLCV20+qOA9+5nEkHiN6vVcC/roKPNgxFuBOWdVE8=; b=hLQvYZEAWCA8V0/bZoWIS2DQ+k
	Kz9tkKGNcoeSKuz9cBsmN8DSk8aNtSkPtUwXh1hjhucva3LnNVZr5lvjBsul6Q4nT1pr5ktXgRxvO
	FH4g1IoVcv/Hq6C62Ib4H1pGf851VQLyOnSXODo0AdNoEs30T20HsnqUk/2vR+iO1jMhpidh3WtDL
	rPzYyhe2mp2OFYoqCQu8W2RkG0i+2vLsaRxKZMKDDkLF8XyA0AkynTrg/oKPfScdomQ98ILLTtysX
	qqk3ohQZQh1DDTEGrGq9l0YIkTQgecgun7JaYfaBB1PKnpAs/cEPZ3kdswvBefLoakIWk8h+hCGXI
	UQb5/YuQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1rL61I-00DIm0-54
	for barebox@lists.infradead.org; Wed, 03 Jan 2024 18:31:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-0001Ts-D8; Wed, 03 Jan 2024 19:30:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL610-000AuA-0R; Wed, 03 Jan 2024 19:30:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rL5k1-001j4X-2b;
	Wed, 03 Jan 2024 19:13:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Jan 2024 19:11:39 +0100
Message-Id: <20240103181312.409668-20-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240103181312.409668-1-a.fatoum@pengutronix.de>
References: <20240103181312.409668-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240103_183113_628954_DC896260 
X-CRM114-Status: UNSURE (   9.54  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 019/112] block: virtio: assign virtio-mmio device tree node to cdevs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

All block devices except for virtio-mmio have a pointer to the hardware
device tree node if available, so add it to virtio-mmio as well.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/block/virtio_blk.c | 1 +
 drivers/virtio/virtio.c    | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/block/virtio_blk.c b/drivers/block/virtio_blk.c
index 11e52d9e6457..625daf6879c0 100644
--- a/drivers/block/virtio_blk.c
+++ b/drivers/block/virtio_blk.c
@@ -99,6 +99,7 @@ static int virtio_blk_probe(struct virtio_device *vdev)
 
 	devnum = cdev_find_free_index("virtioblk");
 	priv->blk.cdev.name = xasprintf("virtioblk%d", devnum);
+	cdev_set_of_node(&priv->blk.cdev, vdev->dev.device_node);
 	priv->blk.dev = &vdev->dev;
 	priv->blk.blockbits = SECTOR_SHIFT;
 	virtio_cread(vdev, struct virtio_blk_config, capacity, &cap);
diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
index aeca04aa9237..c4854e7d11aa 100644
--- a/drivers/virtio/virtio.c
+++ b/drivers/virtio/virtio.c
@@ -289,6 +289,7 @@ int register_virtio_device(struct virtio_device *dev)
 	dev->dev.bus = &virtio_bus;
 	dev->dev.id = DEVICE_ID_DYNAMIC;
 	dev->dev.name = "virtio";
+	dev->dev.device_node = dev_of_node(dev->dev.parent);
 
 	spin_lock_init(&dev->config_lock);
 	dev->config_enabled = false;
-- 
2.39.2



