Delivery-date: Sun, 28 Feb 2021 20:10:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRS8-0003U0-EM
	for lore@lore.pengutronix.de; Sun, 28 Feb 2021 20:10:04 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRS7-00016C-Nm
	for lore@pengutronix.de; Sun, 28 Feb 2021 20:10:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UeL+9t2MfH8Mwg+v1wckAjxLqcLAxpZcvrm1rDoGLAA=; b=vCY8Jcr1nW2GquzYocmn3Oz54
	2v3xcnhuqLJ+byRIGIBCb8tEW56ZFshRf8h0XxbSmd1WpHpUT1G2dE9feexON3wc9g/BRekA/pEQN
	1aNXsvBKWWH9BQb/W1i8Q79w7XOrZUyY6OLz1qkByLddJjxQv/tUVrINOl3hwzMtN6sccw0qBiQhs
	0fBrO+EBsj30UGNl3dohXly+WUFbGSqhw4lIDRxjw55hnYSUAvTdyBCKggv02D+SAwxD1c6UouoPM
	rfWQhPg5/shR3nXJ4lj4AagqYhi73Lt6nv2dcZw6mF0JZ/+AVCd5hz/XNtsIv0TIxbnPpuPRj5KUG
	x4OPkVjHQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGRQx-00068O-Dh; Sun, 28 Feb 2021 19:08:51 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGRQr-00065P-8x
 for barebox@lists.infradead.org; Sun, 28 Feb 2021 19:08:46 +0000
X-Originating-IP: 87.123.101.180
Received: from geraet.fritz.box (unknown [87.123.101.180])
 (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 8521560007;
 Sun, 28 Feb 2021 19:08:41 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Sun, 28 Feb 2021 20:08:29 +0100
Message-Id: <20210228190836.1451663-2-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210228190836.1451663-1-ahmad@a3f.at>
References: <20210228190836.1451663-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210228_140845_468162_AABF69BD 
X-CRM114-Status: UNSURE (   7.61  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH 2/9] virtio: remove unused, left-over,
 virtio_config_ops::set_features
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux finalize_features was renamed to set_features in the U-Boot port.
We adhere to the Linux naming and set_features is unused anywhere.
Drop it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/linux/virtio_config.h | 7 -------
 1 file changed, 7 deletions(-)

diff --git a/include/linux/virtio_config.h b/include/linux/virtio_config.h
index 3ed7001f4800..e6fc31f627fc 100644
--- a/include/linux/virtio_config.h
+++ b/include/linux/virtio_config.h
@@ -82,13 +82,6 @@ struct virtio_config_ops {
 	 * @return features
 	 */
 	u64 (*get_features)(struct virtio_device *vdev);
-	/**
-	 * set_features() - confirm what device features we'll be using
-	 *
-	 * @vdev:	the real virtio device
-	 * @return 0 if OK, -ve on error
-	 */
-	int (*set_features)(struct virtio_device *vdev);
 	/**
 	 * find_vqs() - find virtqueues and instantiate them
 	 *
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

