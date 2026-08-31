Delivery-date: Mon, 31 Aug 2026 17:31:56 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x13zH-009KBs-1P
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 17:31:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8FF83200571
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 17:31:51 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=F09UxFLK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=F5/mo0HTRPcXQzpqdmDhu+fT0BMvgbc0fT1fUb3kTH4=; b=F09UxFLKYtPj8MWJLYMLcVV8ry
	XzsLBCN7LGEE8zEBi06Em7qYJrxlS7NA07GxcxBRe7oR4mCMTBLEYKNBcY/jNjic0C/35vyEQKoTI
	aqr3+p6Uq/u50aXcDPGVGvM/okK9+iuHBtqU4PalD6Y6H8xbS3peQ6h5G6Awf6QcAcrqlgkEkkjtN
	0fXKdFzy0lCUCq1Yq253LdKbiF56SGUOSjuYUIxLRIzGuDg4+hwggvjMcaYy+NRipG1+C6motsppN
	oglDulDSb61HeXBm6xQdkbvoqILnjlKWsmHrnYhBANGixOxbeKnhcieJlC1BsIqmJNcWXdpZ2+DSl
	BnVGDUFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x13Ij-00000009g8q-3n6h;
	Mon, 31 Aug 2026 14:47:57 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x13Ih-00000009g85-2DIB
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 14:47:57 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C34C4201D27;
	Mon, 31 Aug 2026 16:47:49 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x13Ib-004H3o-2I;
	Mon, 31 Aug 2026 16:47:49 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x13Ib-00000004LRY-2WLk;
	Mon, 31 Aug 2026 16:47:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] virtio: fix out-of-bounds scatterlist array access in virtqueue_add_{in,out}buf
Date: Mon, 31 Aug 2026 16:47:44 +0200
Message-ID: <20260831144746.1035711-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_074755_716466_DB57E2CC 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  virtqueue_add_outbuf() and virtqueue_add_inbuf() take one
   scatterlist with N entries, but pass N to virtqueue_add_sgs() as the number
    of scatterlists, which then reads sgs[1] past the single pointer o [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: 1u4jugz454i7nicgaxqyo4faqqfk7d9j
X-Rspamd-Queue-Id: 8FF83200571
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

virtqueue_add_outbuf() and virtqueue_add_inbuf() take one scatterlist
with N entries, but pass N to virtqueue_add_sgs() as the number of
scatterlists, which then reads sgs[1] past the single pointer on the
stack. In virtio_net_send(), GCC happened to place the zeroed
virtio_net_hdr there, so the bogus entry was NULL and skipped. With
clang it's the saved frame pointer:

  qemu-system-aarch64: virtio: bogus descriptor or out of resources

virtqueue_add_sgs() also used the number of scatterlists instead of
entries for its free space accounting.

Do as Linux does: have virtqueue_add() take the total entry count,
count the entries in virtqueue_add_sgs() and let the single-list
wrappers call virtqueue_add() directly.

While at it, rewind i to head in the unmap_release path: err_idx is
assigned from i just above the loop, so the loop broke on its first
iteration and left the entries mapped before the failing one mapped.

Fixes: 2336406d2b91 ("virtio: replace virtio_sg with common scatterlist")
Assisted-by: Claude:fable-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/virtio/virtio_ring.c | 24 ++++++++++++++++++++----
 include/linux/virtio_ring.h  |  8 ++++++--
 2 files changed, 26 insertions(+), 6 deletions(-)

diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index 55f6be311c51..9fb8510f1d04 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -63,12 +63,11 @@ static void vring_unmap_one(struct virtqueue *vq,
 		       DMA_FROM_DEVICE : DMA_TO_DEVICE);
 }
 
-int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
-		      unsigned int out_sgs, unsigned int in_sgs,
-		      void *data)
+int virtqueue_add(struct virtqueue *vq, struct scatterlist *sgs[],
+		  unsigned int total_sg, unsigned int out_sgs,
+		  unsigned int in_sgs, void *data)
 {
 	struct vring_desc *desc;
-	unsigned int total_sg = out_sgs + in_sgs;
 	struct scatterlist *sg;
 	unsigned int i, err_idx, n, avail, descs_used, uninitialized_var(prev);
 	int head;
@@ -165,6 +164,7 @@ int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
 
 unmap_release:
 	err_idx = i;
+	i = head;
 
 	for (n = 0; n < total_sg; n++) {
 		if (i == err_idx)
@@ -174,7 +174,23 @@ int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
 	}
 
 	return -ENOMEM;
+}
 
+int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
+		      unsigned int out_sgs, unsigned int in_sgs,
+		      void *data)
+{
+	unsigned int i, total_sg = 0;
+
+	/* Count them first. */
+	for (i = 0; i < out_sgs + in_sgs; i++) {
+		struct scatterlist *sg;
+
+		for (sg = sgs[i]; sg; sg = sg_next(sg))
+			total_sg++;
+	}
+
+	return virtqueue_add(vq, sgs, total_sg, out_sgs, in_sgs, data);
 }
 
 static bool virtqueue_kick_prepare(struct virtqueue *vq)
diff --git a/include/linux/virtio_ring.h b/include/linux/virtio_ring.h
index 7548504bc42b..6e5c9c3af242 100644
--- a/include/linux/virtio_ring.h
+++ b/include/linux/virtio_ring.h
@@ -188,6 +188,10 @@ int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
 		      unsigned int out_sgs, unsigned int in_sgs,
 		      void *data);
 
+int virtqueue_add(struct virtqueue *vq, struct scatterlist *sgs[],
+		  unsigned int total_sg, unsigned int out_sgs,
+		  unsigned int in_sgs, void *data);
+
 /**
  * virtqueue_add_outbuf - expose output buffers to other end
  * @vq: the struct virtqueue we're talking about.
@@ -204,7 +208,7 @@ static inline int virtqueue_add_outbuf(struct virtqueue *vq,
 				       struct scatterlist *sg, unsigned int num,
 				       void *data)
 {
-	return virtqueue_add_sgs(vq, &sg, num, 0, data);
+	return virtqueue_add(vq, &sg, num, 1, 0, data);
 }
 
 /**
@@ -223,7 +227,7 @@ static inline int virtqueue_add_inbuf(struct virtqueue *vq,
 				      struct scatterlist *sg, unsigned int num,
 				      void *data)
 {
-	return virtqueue_add_sgs(vq, &sg, 0, num, data);
+	return virtqueue_add(vq, &sg, num, 0, 1, data);
 }
 
 /**
-- 
2.47.3



