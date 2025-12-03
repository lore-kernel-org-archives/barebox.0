Delivery-date: Wed, 03 Dec 2025 16:20:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQoew-007YSF-2b
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 16:20:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQoew-0003ml-A0
	for lore@pengutronix.de; Wed, 03 Dec 2025 16:20:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=f1z1QmFFXjvqkb9sP1VIpHQ8LqiJw7E1YXN2SECo7Co=; b=bK+0ugn2e/lBaBC3xoW7e2XHtW
	sQ321zwM8965c0/mEYjcGQrrRbMmw0eWMyiRDsdao4NDsUd/MPZRF0lYE63fi2PgnmimGf2V19hck
	XD7edmJUrpaxkhnyDp34+24KCaY5vWgWgxvhruc5ooepJMT3MvCilqi9YLq316kX1g66DBhAdTUzy
	4nDvrcB/y73YhKBlMAaD7ubiZwD9NjVCYeYuQ9M1jnXa7i31Yh9JSdOZddtG8YchlIoi7nqjwpfBK
	eVcfJ9H6b5Zy75crWHi/nZv47tGjNSv+s+16MDcnXqc+JWllPUWQ6WZISls3DFX6OFiSFu+PvEFqq
	r8US5F/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQoeZ-00000006h7W-3Wmv;
	Wed, 03 Dec 2025 15:20:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQoeX-00000006h6N-47su
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 15:20:27 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQoeW-0003id-B8; Wed, 03 Dec 2025 16:20:24 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQoeW-003nYp-0V;
	Wed, 03 Dec 2025 16:20:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vQoeW-00000002CLT-0EbO;
	Wed, 03 Dec 2025 16:20:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  3 Dec 2025 16:20:18 +0100
Message-ID: <20251203152020.524066-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_072026_040556_B1E37C28 
X-CRM114-Status: UNSURE (   9.31  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] devinfo: print DMA offset and mask in devinfo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This is useful information to have in debugging, especially as
dma-ranges inheritance can be hard to follow, so add it to the devinfo
command output.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 commands/devinfo.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/commands/devinfo.c b/commands/devinfo.c
index c87b30e84307..b80dce005e9c 100644
--- a/commands/devinfo.c
+++ b/commands/devinfo.c
@@ -104,6 +104,12 @@ static int do_devinfo(int argc, char *argv[])
 		if (dev->of_node) {
 			struct device *main_dev = dev->of_node->dev;
 
+			if (dev->dma_offset)
+				printf("DMA offset: 0x%lx\n", dev->dma_offset);
+
+			if (dev->dma_mask)
+				printf("DMA mask: 0x%llx\n", dev->dma_mask);
+
 			printf("DMA Coherent: %s%s\n",
 			       dev_is_dma_coherent(dev) ? "true" : "false",
 			       dev->dma_coherent == DEV_DMA_COHERENCE_DEFAULT ? " (default)" : "");
-- 
2.47.3



