Delivery-date: Tue, 14 Oct 2025 11:38:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8bU8-007gyX-2b
	for lore@lore.pengutronix.de;
	Tue, 14 Oct 2025 11:38:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v8bU8-0006YX-9B
	for lore@pengutronix.de; Tue, 14 Oct 2025 11:38:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=KxJfaYw82VBqtoUeibmWtVAmCCa/ujI9cCkbJNKAEeI=; b=IxwQyDKOdF1Jj9waiiQNXbU9sf
	8h4tu4iVjkIQorWTlsdzkSlmd+LG+1KDZmh9zfjfhdlveXMtLYz5yPSR2rU2P8x9nnqGnhCZ+oJn0
	48h4YRyDUwivBzqnhZw/5vGSUv6NOEjdp1mU/bPPS4sTKwP2ElqSKHOsrast6umxRO7bDbsmQecoZ
	oLHQ5u5Exps7FPJKEHBQDOHbE5yMBcTo7lxSErOfUO2MAaabykukD55owsBI0A109lzkKk73MEoxJ
	9axEa/xKfip3PTRq8Sj+iOLTYxXtwQZTZDq5tDzURQp7RnaF0MY62o/qa6vCgAShADc0aJ94fSbbN
	tiUr0DzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bTZ-0000000FmPf-1eOm;
	Tue, 14 Oct 2025 09:37:49 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v8bTX-0000000FmOs-0JfJ
	for barebox@lists.infradead.org;
	Tue, 14 Oct 2025 09:37:48 +0000
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1v8bTT-0006RT-3L; Tue, 14 Oct 2025 11:37:43 +0200
From: Jonas Rebmann <jre@pengutronix.de>
Date: Tue, 14 Oct 2025 11:37:34 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251014-virtiospam-v1-1-138c7a8dd3de@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAN0Z7mgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1NDA0MT3bLMopLM/OKCxFxdc6Nk4zSztCRDY5MkJaCGgqLUtMwKsGHRsbW
 1AG2tVbFcAAAA
X-Change-ID: 20251014-virtiospam-72c3f6fb134b
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Jonas Rebmann <jre@pengutronix.de>
X-Mailer: b4 0.15-dev-7abec
X-Developer-Signature: v=1; a=openpgp-sha256; l=947; i=jre@pengutronix.de;
 h=from:subject:message-id; bh=wFCziQrZOAlmF8tX2yyxkaJ+v60iJOK2iKGUutdY3ow=;
 b=owGbwMvMwCV2ZcYT3onnbjcwnlZLYsh4J/n42tH/8//VprsurZgyL+z0a607D5jY5q2+/mjZ9
 PaDDu5nzTtKWRjEuBhkxRRZYtXkFISM/a+bVdrFwsxhZQIZwsDFKQAT+XGQ4a+gmFrhaYmTOm9f
 vHV8KDmLfUvbwtkT+vdceLnGTemw3bIIhv+hXxc52LsfXjrXXs27xjHEc/fh1nMLr9yYrhoUOO/
 G6tecAA==
X-Developer-Key: i=jre@pengutronix.de; a=openpgp;
 fpr=0B7B750D5D3CD21B3B130DE8B61515E135CD49B5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251014_023747_135174_D1CFFD3B 
X-CRM114-Status: UNSURE (   7.55  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] virtio: Stop spamming debug buffer
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

At log level 7, this permanently prints over a hundred times per second,
probably unneeded debug print, drop it.

Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
---
 drivers/virtio/virtio_ring.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index 284721aeff..c1c84e4961 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -241,10 +241,8 @@ void *virtqueue_get_buf(struct virtqueue *vq, unsigned int *len)
 	u16 last_used;
 	void *ret;
 
-	if (!more_used(vq)) {
-		vq_debug(vq, "No more buffers in queue\n");
+	if (!more_used(vq))
 		return NULL;
-	}
 
 	/* Only get used array entries after they have been exposed by host */
 	virtio_rmb();

---
base-commit: 8785a6ad7467b6f1f70b6e12aa2ceb2fdd5d8546
change-id: 20251014-virtiospam-72c3f6fb134b

Best regards,
--  
Jonas Rebmann <jre@pengutronix.de>



