Delivery-date: Thu, 17 Jun 2021 16:16:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltsod-0005FX-Me
	for lore@lore.pengutronix.de; Thu, 17 Jun 2021 16:16:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ltsoc-0007qz-A3
	for lore@pengutronix.de; Thu, 17 Jun 2021 16:16:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tak4Dju5oKZx/gTR/j/lleK7T7XyaX2696YwqwgJ9mA=; b=jm5RF/2y6w49bl
	vw6TW9pNCu59HgbocErS1jc1Zexc8l8agaPEIxFljZ9Ei8bJJX12V8ikrqT6+Kbya4mCJ2kVt4bDK
	/Eb3DDhimck+t9T8f2ebUN/ObudnuRbXXRnMuQSTXCBsl1OLCfus7fNnXRgUhLYSjXyiffgy32dhR
	dC7sM/dM3/snJ39KWB+6bqrMfXL1a3yqOJNn+Dwd+jwpdPlxTZVVb8pIBu6rDKLpQ2E1s10c8sXfq
	gdk+cSrc07AHdWon4lM41v7QAWkWp7MF8gekVKEsCPaI54ScKxFiU00JZvGS/xAfqTpcYHh6i9W1J
	X4VeivaDFXmP9/hJ2alQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ltsnM-00Ae1e-LL; Thu, 17 Jun 2021 14:15:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ltsnG-00Ae0u-Sr
 for barebox@lists.infradead.org; Thu, 17 Jun 2021 14:14:56 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltsnF-0007U9-Mr; Thu, 17 Jun 2021 16:14:53 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1ltsnF-0000p3-EZ; Thu, 17 Jun 2021 16:14:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 17 Jun 2021 16:14:52 +0200
Message-Id: <20210617141452.3117-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210617_071454_966917_88438236 
X-CRM114-Status: GOOD (  11.72  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] usb: storage: Improve message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of printing a "Using index %d for the new disk" without any
context, use dev_info() to print the device context and also "disk%d"
which is the name of the new device.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/storage/usb.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index b0f789b42a..a43b498e4b 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -420,7 +420,7 @@ static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 	result = cdev_find_free_index("disk");
 	if (result == -1)
 		pr_err("Cannot find a free number for the disk node\n");
-	pr_info("Using index %d for the new disk\n", result);
+	dev_info(dev, "registering as disk%d\n", result);
 
 	pblk_dev->blk.cdev.name = basprintf("disk%d", result);
 	pblk_dev->blk.blockbits = SECTOR_SHIFT;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

