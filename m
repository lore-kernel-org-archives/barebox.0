Delivery-date: Wed, 24 Apr 2024 09:09:38 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWl8-00ERC7-2f
	for lore@lore.pengutronix.de;
	Wed, 24 Apr 2024 09:09:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzWl7-0006z3-AA
	for lore@pengutronix.de; Wed, 24 Apr 2024 09:09:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3w6ZkRCdx09CWHVZR1UBudwmy7m7CxbDQL1A69/uJq4=; b=I2p78m+JYeNB5cJqDBsFYcHnpL
	89pvWj3jom5o8f1ca+ajHmd2ewzSDBj0CbWjw0XqgRJz+qCSQb5rFwPiPjkdjwzuClo1H2oIHuorv
	6PdLRH28b8rCkB41YZ8Y49Ua8frpTB6W2LvuISNqKL6D5+/59K9Gi92tpRj2GppGzoQJ0n8jyHz9x
	LXOcT/NpesjpHkXxTllJ3AkNacZJhmQdQCQNuY9LGzjcuXN4wG2v/r+HDPzwb00bJnWr0+wdJoLdO
	fRLmSKCqaDcKNz2xVWoN46zhb+CLsN+YjVYxTIZ8sfd0idnbWxopqxSHiG38WL1gwEc66ZFUztegp
	zsLH4hgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWkU-000000032ME-0csM;
	Wed, 24 Apr 2024 07:08:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzWjx-000000031tH-3K3a
	for barebox@lists.infradead.org;
	Wed, 24 Apr 2024 07:08:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjw-0005eA-7a; Wed, 24 Apr 2024 09:08:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWjv-00E255-RG; Wed, 24 Apr 2024 09:08:23 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rzWJT-00F8kt-2m;
	Wed, 24 Apr 2024 08:41:03 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 24 Apr 2024 08:40:55 +0200
Message-Id: <20240424064058.3608016-21-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
References: <20240424064058.3608016-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240424_000825_958467_4EA200D4 
X-CRM114-Status: GOOD (  12.27  )
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
Subject: [PATCH master 20/23] treewide: use new dma_zalloc instead of opencoding
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We got a number of places using dma_alloc and zeroing its contents.
Replace the ones found by a quick grep with the new dma_zalloc.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/net/fsl-fman.c                   |  4 +---
 drivers/usb/gadget/function/f_fastboot.c |  3 +--
 drivers/video/mipi_dbi.c                 |  3 +--
 fs/ext4/ext4_common.h                    | 10 +---------
 4 files changed, 4 insertions(+), 16 deletions(-)

diff --git a/drivers/net/fsl-fman.c b/drivers/net/fsl-fman.c
index 9ae4dc9abf70..5528ecccc950 100644
--- a/drivers/net/fsl-fman.c
+++ b/drivers/net/fsl-fman.c
@@ -616,9 +616,7 @@ static int fm_eth_rx_port_parameter_init(struct fm_eth *fm_eth)
 		return -ENOMEM;
 
 	/* alloc Rx buffer from main memory */
-	rx_buf_pool = dma_alloc(MAX_RXBUF_LEN * RX_BD_RING_SIZE);
-
-	memset(rx_buf_pool, 0, MAX_RXBUF_LEN * RX_BD_RING_SIZE);
+	rx_buf_pool = dma_zalloc(MAX_RXBUF_LEN * RX_BD_RING_SIZE);
 
 	/* save them to fm_eth */
 	fm_eth->rx_bd_ring = rx_bd_ring_base;
diff --git a/drivers/usb/gadget/function/f_fastboot.c b/drivers/usb/gadget/function/f_fastboot.c
index 41450268fcdb..30d257b5002a 100644
--- a/drivers/usb/gadget/function/f_fastboot.c
+++ b/drivers/usb/gadget/function/f_fastboot.c
@@ -199,12 +199,11 @@ static struct usb_request *fastboot_alloc_request(struct usb_ep *ep)
 		return NULL;
 
 	req->length = EP_BUFFER_SIZE;
-	req->buf = dma_alloc(EP_BUFFER_SIZE);
+	req->buf = dma_zalloc(EP_BUFFER_SIZE);
 	if (!req->buf) {
 		usb_ep_free_request(ep, req);
 		return NULL;
 	}
-	memset(req->buf, 0, EP_BUFFER_SIZE);
 
 	return req;
 }
diff --git a/drivers/video/mipi_dbi.c b/drivers/video/mipi_dbi.c
index 2f8d6ecc72cf..9611a402d1ba 100644
--- a/drivers/video/mipi_dbi.c
+++ b/drivers/video/mipi_dbi.c
@@ -398,8 +398,7 @@ int mipi_dbi_dev_init(struct mipi_dbi_dev *dbidev, struct fb_ops *ops,
 	info->bits_per_pixel = 16;
 	info->line_length = info->xres * 2;
 	info->screen_size = info->line_length * info->yres;
-	info->screen_base = dma_alloc(info->screen_size);
-	memset(info->screen_base, 0, info->screen_size);
+	info->screen_base = dma_zalloc(info->screen_size);
 
 	info->red.length = 5;
 	info->red.offset = 11;
diff --git a/fs/ext4/ext4_common.h b/fs/ext4/ext4_common.h
index f8ebd7626636..3286a21c0e26 100644
--- a/fs/ext4/ext4_common.h
+++ b/fs/ext4/ext4_common.h
@@ -36,15 +36,7 @@
 #include "ext4fs.h"
 #include "ext_common.h"
 
-static inline void *zalloc(size_t size)
-{
-	void *p = dma_alloc(size);
-
-	if (p)
-		memset(p, 0, size);
-
-	return p;
-}
+#define zalloc	dma_zalloc
 
 int ext4fs_read_inode(struct ext2_data *data, int ino,
 		      struct ext2_inode *inode);
-- 
2.39.2



