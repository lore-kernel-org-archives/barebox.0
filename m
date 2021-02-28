Delivery-date: Sun, 28 Feb 2021 20:10:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSE-0003Ui-5Z
	for lore@lore.pengutronix.de; Sun, 28 Feb 2021 20:10:10 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSD-000189-C6
	for lore@pengutronix.de; Sun, 28 Feb 2021 20:10:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=cUJPDxYemmTLleRmIQUvPbPK0vOG0m+1HgZL9RJ1gS8=; b=dkUP13CPUuntMPpmhLKHvRS6R
	UaMeMnrwO6OrAsUg8j2y+7UKtC2tkuvLl1ngIS8Xh9VY1odp5/pG337v55S8QHOYKROvF+PLcs/R5
	v8+ZBg72RKBXHzeggaTzet5uA3RBbK0Tl9hzrqReFXAMi8oZITxOqb89+2JTVklcBG/nltUfwo80x
	rKiI02Y3inlTMkgIB6PUSLWGSLzCw2mZMfmdJJvlxbaduHGfAeSnsWmJSXq4xxw+1HfbdRPE/oLG+
	lPE8rAIbepamDLN9UQcFl/1QFgi+hV6JZ0Umzigts7EBuKi2PPGXBTITios9uZvt/InjBwSVrBVX+
	xC1p4t2hw==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGRR4-0006AQ-Fi; Sun, 28 Feb 2021 19:08:59 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGRQr-00065d-Ip
 for barebox@lists.infradead.org; Sun, 28 Feb 2021 19:08:48 +0000
X-Originating-IP: 87.123.101.180
Received: from geraet.fritz.box (unknown [87.123.101.180])
 (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id 495D86000D;
 Sun, 28 Feb 2021 19:08:44 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Sun, 28 Feb 2021 20:08:33 +0100
Message-Id: <20210228190836.1451663-6-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210228190836.1451663-1-ahmad@a3f.at>
References: <20210228190836.1451663-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210228_140845_753929_1A8F53A2 
X-CRM114-Status: UNSURE (   9.22  )
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
Subject: [PATCH 6/9] virtio: fix support for big-endian clients
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With virtio 1.0 everything is little endian. Add back the Version 1.0
check that got lost during porting virtio to barebox.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 include/linux/virtio_config.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/include/linux/virtio_config.h b/include/linux/virtio_config.h
index e6fc31f627fc..f33cfdacaa2c 100644
--- a/include/linux/virtio_config.h
+++ b/include/linux/virtio_config.h
@@ -203,7 +203,8 @@ static inline bool virtio_has_dma_quirk(const struct virtio_device *vdev)
 
 static inline bool virtio_is_little_endian(struct virtio_device *vdev)
 {
-	return virtio_legacy_is_little_endian();
+	return virtio_has_feature(vdev, VIRTIO_F_VERSION_1) ||
+		virtio_legacy_is_little_endian();
 }
 
 
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

