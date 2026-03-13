Delivery-date: Fri, 13 Mar 2026 14:33:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12eG-000DJU-0D
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:33:52 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12dx-00080V-H4
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:33:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LBnwJbLTQit1Grt5DxkjIwQZr6S6dsgOw2I+QvZW7D4=; b=HdrnXNYmhIpP6VT/KBwodloAL6
	zGvnTvLy0ytiOp3Cily0vdWgg51N1z3nY+2yg2CtPo2zh4lLa0r2X8iu3PJ4WNVaRXaFf5qxNoV/e
	Y4IY987DbLcg94v2xkbB52qTF+XmbilskLLGP+uDzEv99IhcrbW5y+JiFRHp6YQWFRM0Ezr+bXjO7
	KexhE/hbzIGi8SLKoHIbmal86sMRlWtVW5Hyko4UIjp6mkSBfQBlaqOrITEbRbhJV9fihkbspuach
	pM6XU7LK5QbnDYMAZWbYVcPeSCOtgyu/aQlDRH62qGPZc8akrsmfvC8taFCuyHdgTh4vomkDwbQK2
	/ehnxNnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d5-00000000FWF-3J1q;
	Fri, 13 Mar 2026 13:32:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12d3-00000000FVI-1uxl
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:32:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LBnwJbLTQit1Grt5DxkjIwQZr6S6dsgOw2I+QvZW7D4=; b=Zn45h8Be4mfu7U7UtErIwZXwyH
	Kkm9zP12idiKFVpRygdZxtke9kcqhsTf1FuS5g3UcsMS2l9/JRb+YJLju5ek41DD+LntHmjel1ONq
	KEpCZUlJ7o1NHd1zMoGwOkyCfF0GvBzYLNiJVltn0DKYB3mID6KHqo2PRDbDfu9jz8wOrlVmBZSaD
	AHcKORmRuuSld0ppoWmp94LBGcHrf6P10P+l72T765y6wUbue9I+5T0SmRxm9QExLiKa8uBAcu4dp
	zbK/2IjdkJd1S1E6C8shk8RZBuNQ60720Y6eaKmbNoUTYgxwfKZ43105sJ8qNZizxgM40cq9rxiih
	XVm1PGGA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12cy-00000003OSa-3Auc
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:32:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0006nH-Q0; Fri, 13 Mar 2026 14:32:31 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12cx-0005Sc-1u;
	Fri, 13 Mar 2026 14:32:31 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XM-00000009ULB-0vrD;
	Fri, 13 Mar 2026 14:26:44 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	"Claude Opus 4.6" <noreply@anthropic.com>
Date: Fri, 13 Mar 2026 14:25:28 +0100
Message-ID: <20260313132631.2257573-45-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133234_007535_D80F9EE0 
X-CRM114-Status: UNSURE (   8.72  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,RCVD_IN_VALIDITY_RPBL_BLOCKED,
	RCVD_IN_VALIDITY_SAFE_BLOCKED,SPF_HELO_NONE,SPF_NONE autolearn=no
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 44/58] virtio: fix variable shadowing in virtqueue_add_sgs input scatter loop
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The inner for loop in the in_sgs processing section had a local
declaration 'struct scatterlist *sg = sgs[n]' that shadowed the loop
variable 'sg' from the enclosing for statement.

Remove the shadowing declaration so the loop variable is used
consistently, matching the out_sgs loop.
This aligns the loop with the logic above for out_sgs.

(cherry picked from commit 2731cfdb8dcc449b96b5829a2947866a5c6b19eb)

Reported-by: Claude Opus 4.6 <noreply@anthropic.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Link: https://lore.barebox.org/20260215171125.2646877-1-a.fatoum@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/virtio/virtio_ring.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index 8b6469f54d2a..d28aed7ad1e4 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -107,7 +107,6 @@ int virtqueue_add_sgs(struct virtqueue *vq, struct scatterlist *sgs[],
 
 	for (; n < (out_sgs + in_sgs); n++) {
 		for (sg = sgs[n]; sg; sg = sg_next(sg)) {
-			struct scatterlist *sg = sgs[n];
 			dma_addr_t addr = vring_map_one_sg(vq, sg, DMA_FROM_DEVICE);
 			if (vring_mapping_error(vq, addr))
 				goto unmap_release;
-- 
2.47.3



