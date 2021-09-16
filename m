Delivery-date: Thu, 16 Sep 2021 11:35:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQno6-0006Zg-E6
	for lore@lore.pengutronix.de; Thu, 16 Sep 2021 11:35:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mQno5-0006yB-Je
	for lore@pengutronix.de; Thu, 16 Sep 2021 11:35:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=71kkt2sMqY88a/OkWt1qyj9SBVURS4mPfeyQ03VXeY8=; b=aDHqLT1+B+1c98
	WKMCsbnWkSbZOTslNJgOwiB4twL/gOLn6yvIjoFw1yHhZ08BIfbl0tKM5mVABBsrFAFOx4HidM2hq
	NMFDHvVz7fjmbZs0Bj9zMpVGNaJ9ewxY6CsI52Xaj3d3BAY5VFYhw1DGByNzWQqAJxpymD+6M2rPI
	qZGIvwJMiSJprUCAg7g64Mg3I5OmE9BkNivYVH9gc3eDLzS2lPStmasuePFcxIsTdfEtyWWV+l2TJ
	f7EAl8tNdJr8XwOciSjk1uQCBz6PRFWN0AtyoeY2ZLzl5zz2C1njwNYDP9mA0fmUV2bXQcCvhOzn4
	urEM7KszJBHanSQ5uWQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mQnmX-00AiN4-E7; Thu, 16 Sep 2021 09:34:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mQnmP-00AiL9-9T
 for barebox@lists.infradead.org; Thu, 16 Sep 2021 09:34:06 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQnmL-0006e3-32; Thu, 16 Sep 2021 11:34:01 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mQnmK-0005Je-QW; Thu, 16 Sep 2021 11:34:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 16 Sep 2021 11:33:56 +0200
Message-Id: <20210916093356.20353-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210913083047.364759-1-ahmad@a3f.at>
References: <20210913083047.364759-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210916_023405_371532_F0E563A4 
X-CRM114-Status: GOOD (  10.18  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! net: add virtio network driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already stop the virtio device. Let's clean up the rest too and
unregister the network interface and free the private data.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/virtio.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/net/virtio.c b/drivers/net/virtio.c
index 275588e15c50..ea4d5529037e 100644
--- a/drivers/net/virtio.c
+++ b/drivers/net/virtio.c
@@ -171,6 +171,8 @@ static int virtio_net_probe(struct virtio_device *vdev)
 
 	priv = xzalloc(sizeof(*priv));
 
+	vdev->priv = priv;
+
 	/*
 	 * For v1.0 compliant device, it always assumes the member
 	 * 'num_buffers' exists in the struct virtio_net_hdr while
@@ -205,8 +207,13 @@ static int virtio_net_probe(struct virtio_device *vdev)
 
 static void virtio_net_remove(struct virtio_device *vdev)
 {
+	struct virtio_net_priv *priv = vdev->priv;
+
 	vdev->config->reset(vdev);
+	eth_unregister(&priv->edev);
 	vdev->config->del_vqs(vdev);
+
+	free(priv);
 }
 
 /*
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

