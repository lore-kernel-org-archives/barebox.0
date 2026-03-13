Delivery-date: Fri, 13 Mar 2026 14:37:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12hu-000Dda-1t
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:37:38 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12hu-0002gW-1d
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:37:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IDCZKm8durYl6O0Dm8HscfzT/Zr6TFqsZGN+xhpOl/A=; b=JOzuC34t/RVdexU1dkMHpc58Rc
	CM7x0eiHildepU6uH3nG5CbF+ZBczXzyqacEp4F6Un9QuIuzjts4EesLu2Tk6AcPpcnTjGshMYjwM
	uBzLXu3vYhAoaHtWjVJk2LNKCtgye7JytrpKa0XKBiLWTNbmskihBUSu+0fpwwilkPH9XgPZEfo0m
	K3NEU0OTQa8iqJsQVnea8tfhR5EC8U+K4y/T25hY4vdo07z1WI1O/Xx+R1EIxJOXv08YELTnefbCQ
	cO5yu74NwEA0g3zjgjNiaNHRbnhMymVN9r3KQLyzWbKYSp9gBs54x/TtDK17YNzFY4FaUexxECOCh
	yapMMQcg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12hV-00000000I2A-0dr4;
	Fri, 13 Mar 2026 13:37:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12hU-00000000I1x-11Hf
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:37:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=IDCZKm8durYl6O0Dm8HscfzT/Zr6TFqsZGN+xhpOl/A=; b=o1iu/cTZYjlfkHBeBwlzDMvjji
	09x/cxZrzLcQS/AsJP8MV1NK6Hqiyqo0Sq0CJWtbm8+MQnN1NhypKN2oZVqu1jL7qzDc1szvkEo3y
	Aw0S1sOPNsvz9KlsoFlQb16QlVAvSNOpOp/9wIRTjyo5LKWDK5upNxNv0TZ3dKPwMzlfMRoz2HMB0
	pyjIN4FXOWJlUHe/y4D4XpJVOCbFIJVhkOFO8qiYkMGD9sCVj1vCD/PAAnpXG9UpxO5TqRs8m2Xht
	MRPl3sudZNVPjUcdX4Ugm23zAzUzK0foMSjrOYPd33TUz6ySyqa1deUzePLJOpcvg38foskoDwTcI
	MZgpQMeQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12hQ-00000003PSo-3FLS
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:37:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d3-0006wb-Cv; Fri, 13 Mar 2026 14:32:37 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12d1-0005V7-09;
	Fri, 13 Mar 2026 14:32:35 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00000009ULB-02ef;
	Fri, 13 Mar 2026 14:26:43 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>,
	Claude <noreply@claude.ai>
Date: Fri, 13 Mar 2026 14:25:01 +0100
Message-ID: <20260313132631.2257573-18-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_133709_100840_36EDC11B 
X-CRM114-Status: UNSURE (   9.72  )
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
Subject: [PATCH v2025.09.y 17/58] virtio: ring: fix stale data in queue after reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@barebox.org>

When resetting barebox for QEMU Virt or chainloading it, the log is
spammed with:

  virtio_net virtio1: id 65536 out of range

This is because we have two ways to allocate the vrings, either via
dma_alloc_coherent or memalign and the latter doesn't zero the queues.

A better fix that makes use of the DMA APIs unconditionally will follow
in a later release.

Co-developed-by: Claude <noreply@claude.ai>
[ahmad: Claude was pointed at QEMU, Linux and U-Boot implementations
 and found the discrepancy, but had a different less efficient fix]

(cherry picked from commit 40339821fad1a97afdd1d9ffcc3e97d21bf09c3d)

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
Link: https://lore.barebox.org/20260112085548.2952525-1-a.fatoum@barebox.org
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/virtio/virtio_ring.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/virtio/virtio_ring.c b/drivers/virtio/virtio_ring.c
index c1c84e49615f..8b6469f54d2a 100644
--- a/drivers/virtio/virtio_ring.c
+++ b/drivers/virtio/virtio_ring.c
@@ -369,6 +369,8 @@ static void *vring_alloc_queue(struct virtio_device *vdev,
 			phys_addr_t phys_addr = virt_to_phys(queue);
 			*dma_handle = (dma_addr_t)phys_addr;
 
+			memset(queue, 0x00, PAGE_ALIGN(size));
+
 			/*
 			 * Sanity check: make sure we dind't truncate
 			 * the address.  The only arches I can find that
-- 
2.47.3



