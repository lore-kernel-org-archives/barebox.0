Delivery-date: Thu, 06 May 2021 13:25:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lec82-0001zL-4c
	for lore@lore.pengutronix.de; Thu, 06 May 2021 13:25:14 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lec81-00070i-88
	for lore@pengutronix.de; Thu, 06 May 2021 13:25:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fjcd50SxSZcffsuyUa6mmzVkA7dvHt+d/MLFEFUqDEk=; b=ljIsIuH2fmQgKUS1IyFpdicBC
	XRGd+ofeXvgpiiuV6CAnDDTFe4JYYnGV3nIPS/8R7BcUlWEAVjE/LTU9yLFRBJwmN7zm4wR1cfWb3
	I7fllXdJxRd4NJMWuBChFBrAKm8cimSPzSRoBMput9Wr9oXdPtlNaxEr8rp2DX/p/ZNtp5quAh7/w
	PDsoQ86Q6/MRhzLhsuyd27qT/jisylCYQRdfq7QQOe/9VvY9ZZ7XZnM1TMWvV+pGIGEV3jfHMNX5z
	QXbfsgDFn+uHmcHeozMO/XMPImpJEMRUkvtMTME26d4GktRR9v84H9kgGMNejxzeIefBYC979hLfd
	sibVDoamA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lec72-0047L7-Cf; Thu, 06 May 2021 11:24:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lec5Q-0047Cx-2F
 for barebox@desiato.infradead.org; Thu, 06 May 2021 11:22:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Sender:
 Reply-To:Cc:Content-Type:Content-ID:Content-Description;
 bh=3QmxlgxU9vvLmR4QMMEzrjrzLrlSvQHKRgR7KjIPtBE=; b=2MIM6yDIYNQkMccbts7fAwByvE
 5mItGxP4NC1DgwMkLqpW6RQQbM/Pz+52iC3Nc9/9lucYx+WcQaRCVBgERjpe+TXXy6onsqSgZKqlS
 BhplXeX29WwgGUwVQxpnXxoHxXtCi9qABOMyM1ofLaCyMZllMKv3d1t5gE12dEXpiu58a7ou34768
 bxAfXlc68Rd5yAnpSz8IkncX+DgbmgSlllYG3bLoW4xOwqSi4UHOVgqqzX3Ur3veUYrWIde29QlDk
 jIaE541RpDrYJOGydaNpa9ITPWlaJ6NQ3AR2WXeS+w1xH5UJd3ZC8JLuiTh+nuLAv914n3fPyPo07
 5M5AdLYA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lec5N-005z4v-Jm
 for barebox@lists.infradead.org; Thu, 06 May 2021 11:22:30 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lec5J-0006oa-Qq
 for barebox@lists.infradead.org; Thu, 06 May 2021 13:22:25 +0200
Received: from mfe by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1lec5I-0000Mg-Ft
 for barebox@lists.infradead.org; Thu, 06 May 2021 13:22:24 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu,  6 May 2021 13:22:18 +0200
Message-Id: <20210506112219.27114-2-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210506112219.27114-1-m.felsch@pengutronix.de>
References: <20210506112219.27114-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_042229_667769_171CE5E5 
X-CRM114-Status: UNSURE (   9.13  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] mci: mci-core: set the DEVFS_IS_MCI_DEV flag
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Set the new introduced flag to be able to check if the cdev is an
mmc/mci device.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mci/mci-core.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/mci/mci-core.c b/drivers/mci/mci-core.c
index 017f25d35f..c0fbcb385f 100644
--- a/drivers/mci/mci-core.c
+++ b/drivers/mci/mci-core.c
@@ -420,6 +420,7 @@ static void mci_part_add(struct mci *mci, uint64_t size,
 	part->size = size;
 	part->blk.cdev.name = name;
 	part->blk.cdev.partname = partname;
+	part->blk.cdev.flags |= DEVFS_IS_MCI_DEV;
 	part->blk.blockbits = SECTOR_SHIFT;
 	part->blk.num_blocks = mci_calc_blk_cnt(size, part->blk.blockbits);
 	part->area_type = area_type;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

