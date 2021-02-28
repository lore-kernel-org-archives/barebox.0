Delivery-date: Sun, 28 Feb 2021 20:10:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSD-0003UM-6B
	for lore@lore.pengutronix.de; Sun, 28 Feb 2021 20:10:09 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSC-00017f-Ay
	for lore@pengutronix.de; Sun, 28 Feb 2021 20:10:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FoOdBgDYeLQItXPXHWFMWMQSzdPT0FkWYzHjbzwE7Q0=; b=YuiOHUecW2f9Cdhk6Afbc85pKc
	LgO9PDZ/5GAZ9UfOsPnOeWXSoqDlK1/dY3EZxUnZb5sWlgRajsP6JQKM2JOwK3GtU1bifKLwo50GW
	nJzA7h4FKASNTNjO9OiFV/qPwDAzgEhErkyrI5jolL0J98o3+keRwGB7ckgKbDKHqAqQY0fUq1bm7
	SJdrwmU48qiyfhdhd6xKGJMTLELq68K3YEMryiX4zzalBLdnBTPcoo9ZDRjIa7e8mjnp7SNSenAo+
	9n6xztRz9qPPxBA3SYm7wIzhuVyzXc8P1llVVEcWCFnZUp0pbxw6By75bqL57x+FFRoxOSE2Rtoqw
	+q5Uf8Ug==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGRR2-00069T-1z; Sun, 28 Feb 2021 19:08:56 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGRQr-000659-8w
 for barebox@lists.infradead.org; Sun, 28 Feb 2021 19:08:48 +0000
X-Originating-IP: 87.123.101.180
Received: from geraet.fritz.box (unknown [87.123.101.180])
 (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id DC77660006;
 Sun, 28 Feb 2021 19:08:40 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Sun, 28 Feb 2021 20:08:28 +0100
Message-Id: <20210228190836.1451663-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210228_140845_469134_8F39BBEC 
X-CRM114-Status: GOOD (  12.33  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <ahmad@a3f.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/9] virtio: align virtio_config_ops::generation return type
 with Linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The U-Boot return type for the function differs from Linux. We use
the Linux API elsewhere, so use it here as well.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/virtio/virtio_mmio.c  | 8 +++-----
 include/linux/virtio_config.h | 9 ++++-----
 2 files changed, 7 insertions(+), 10 deletions(-)

diff --git a/drivers/virtio/virtio_mmio.c b/drivers/virtio/virtio_mmio.c
index 821b43871a04..4a689495b8df 100644
--- a/drivers/virtio/virtio_mmio.c
+++ b/drivers/virtio/virtio_mmio.c
@@ -141,16 +141,14 @@ static int virtio_mmio_set_config(struct virtio_device *vdev, unsigned int offse
 	return 0;
 }
 
-static int virtio_mmio_generation(struct virtio_device *vdev, u32 *counter)
+static u32 virtio_mmio_generation(struct virtio_device *vdev)
 {
 	struct virtio_mmio_device *priv = to_virtio_mmio_device(vdev);
 
 	if (priv->version == 1)
-		*counter = 0;
-	else
-		*counter = readl(priv->base + VIRTIO_MMIO_CONFIG_GENERATION);
+		return 0;
 
-	return 0;
+	return readl(priv->base + VIRTIO_MMIO_CONFIG_GENERATION);
 }
 
 static int virtio_mmio_get_status(struct virtio_device *vdev)
diff --git a/include/linux/virtio_config.h b/include/linux/virtio_config.h
index 5ee0807fb098..3ed7001f4800 100644
--- a/include/linux/virtio_config.h
+++ b/include/linux/virtio_config.h
@@ -49,10 +49,9 @@ struct virtio_config_ops {
 	 * generation() - config generation counter
 	 *
 	 * @vdev:	the real virtio device
-	 * @counter:	the returned config generation counter
-	 * @return 0 if OK, -ve on error
+	 * @return the config generation counter
 	 */
-	int (*generation)(struct virtio_device *vdev, u32 *counter);
+	u32 (*generation)(struct virtio_device *vdev);
 	/**
 	 * get_status() - read the status byte
 	 *
@@ -311,7 +310,7 @@ static inline void __virtio_cread_many(struct virtio_device *vdev,
 	int i;
 
 	/* no need to check return value as generation can be optional */
-	vdev->config->generation(vdev, &gen);
+	gen = vdev->config->generation(vdev);
 	do {
 		old = gen;
 
@@ -319,7 +318,7 @@ static inline void __virtio_cread_many(struct virtio_device *vdev,
 			virtio_get_config(vdev, offset + bytes * i,
 					  buf + i * bytes, bytes);
 
-		vdev->config->generation(vdev, &gen);
+		gen = vdev->config->generation(vdev);
 	} while (gen != old);
 }
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

