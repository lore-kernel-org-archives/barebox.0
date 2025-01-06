Delivery-date: Mon, 06 Jan 2025 10:19:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjH7-00HQi6-2G
	for lore@lore.pengutronix.de;
	Mon, 06 Jan 2025 10:19:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tUjH7-000481-0f
	for lore@pengutronix.de; Mon, 06 Jan 2025 10:19:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=dcMB06NEyuf7OPrOjpMWB/hFE6BYndtqNJKUTnMVaC0=; b=XpQL0DjVU14whtFWpxq5q26QZo
	EioDTpvoW7NP3B31fWLRDi/nu1sz8gLurt+Vr2EluHVHCjvreueFzOHMmS13DXZPkkbiKctY7RmhM
	m9poWvdM6I6P4GgspBtuSx+6Cc6yVlbHHP1dFjajEILDWAX2FS1LWyiGLG7Sgw9NFUx9Fk4xHcRiA
	AyOB8mlxEHNZoovaBeUswx2UtyEEWc5HESQDVj8G+lD3hi2XwaevnObUC6eQPg+R/tGlvt20eXTYL
	5y2zkq7fqwiEOzSqn9W7YLbngwLKDZuJMzI92cQzwgSOWGvH+KFiAuWJ3BTl4ZNoLBLtwpIjoaYbm
	JtpeDrWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjGg-00000000eRz-1Pyb;
	Mon, 06 Jan 2025 09:19:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tUjGd-00000000ePR-1rba
	for barebox@lists.infradead.org;
	Mon, 06 Jan 2025 09:19:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGb-0003eY-P9; Mon, 06 Jan 2025 10:19:21 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGa-0078r8-1W;
	Mon, 06 Jan 2025 10:19:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tUjGb-00EPjM-0V;
	Mon, 06 Jan 2025 10:19:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jan 2025 10:19:20 +0100
Message-Id: <20250106091920.3435488-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250106_011923_484060_787B8DDC 
X-CRM114-Status: GOOD (  10.15  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] virtio: allow inlining of trivial virtio_find_vqs function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

virtio_find_vqs is just a function pointer call, so move it into a
header, so it can be inlined.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/virtio/virtio.c       | 7 -------
 include/linux/virtio_config.h | 6 +++++-
 2 files changed, 5 insertions(+), 8 deletions(-)

diff --git a/drivers/virtio/virtio.c b/drivers/virtio/virtio.c
index c4854e7d11aa..a0bd147c36c4 100644
--- a/drivers/virtio/virtio.c
+++ b/drivers/virtio/virtio.c
@@ -159,13 +159,6 @@ int virtio_finalize_features(struct virtio_device *dev)
 }
 EXPORT_SYMBOL_GPL(virtio_finalize_features);
 
-int virtio_find_vqs(struct virtio_device *vdev, unsigned int nvqs,
-		    struct virtqueue *vqs[])
-{
-	return vdev->config->find_vqs(vdev, nvqs, vqs);
-}
-EXPORT_SYMBOL_GPL(virtio_find_vqs);
-
 static int virtio_dev_probe(struct device *_d)
 {
 	int err, i;
diff --git a/include/linux/virtio_config.h b/include/linux/virtio_config.h
index 6bb1f768b636..6c53f4bc66a4 100644
--- a/include/linux/virtio_config.h
+++ b/include/linux/virtio_config.h
@@ -246,8 +246,12 @@ static inline int virtio_set_config(struct virtio_device *vdev, unsigned int off
  * @vqs:	on success, includes new virtqueues
  * @return 0 if OK, -ve on error
  */
+static inline
 int virtio_find_vqs(struct virtio_device *vdev, unsigned int nvqs,
-		    struct virtqueue *vqs[]);
+		    struct virtqueue *vqs[])
+{
+	return vdev->config->find_vqs(vdev, nvqs, vqs);
+}
 
 /**
  * virtio_device_ready - enable vq use in probe function
-- 
2.39.5



