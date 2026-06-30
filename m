Delivery-date: Tue, 30 Jun 2026 14:41:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weXmA-00BSy3-2G
	for lore@lore.pengutronix.de;
	Tue, 30 Jun 2026 14:41:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1weXmA-0000yJ-0r
	for lore@pengutronix.de; Tue, 30 Jun 2026 14:41:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Un/QEBlNZIsp++h0owJOU10MZ6THc6QrAQdy/eOD5hI=; b=eOTpVRSkMLO6eijAKhau6QtxOR
	yG26ZRa2MP7v4NmutbfJGThpMLwYB5QnvEiRNVS3tb/aa2dsePo5+86Q88+BECx7DYPrVmxMfMtH8
	8mo2cLTEKBfjs9zpVRky3JazifflHd1OodH9WHSvYwcnUTDPqRWOlARdkvENsQcMRmb0GV799x9nq
	mv3BNtflLMPIt2RLN/hO8vBWZBUgTIsPwRmAA49lUqT4P7hlg8jDDU6bQrkcoLnwpLVfLsEvHv2HG
	QhQdYzClUOhHgFav/lDIClBxln8l0yyRQLEuxtc4G0o4DFkY9GfTKvDSmyKYylRqeGbTe/4MF5Fzn
	r7aQ77lw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXl0-0000000H0pF-2PG9;
	Tue, 30 Jun 2026 12:40:06 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1weXkv-0000000H0mB-3QaL
	for barebox@lists.infradead.org;
	Tue, 30 Jun 2026 12:40:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 01B85200AA9;
	Tue, 30 Jun 2026 14:39:57 +0200 (CEST)
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1weXkr-005PmV-2q;
	Tue, 30 Jun 2026 14:39:57 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1weXkr-000000032ZD-3LML;
	Tue, 30 Jun 2026 14:39:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Jun 2026 14:39:56 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260630-usb-disk-alias-v1-2-d23318bcb684@pengutronix.de>
References: <20260630-usb-disk-alias-v1-0-d23318bcb684@pengutronix.de>
In-Reply-To: <20260630-usb-disk-alias-v1-0-d23318bcb684@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1782823197; l=2085;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=StlcsZuoDT4AXt9Uirf50zxAZpYTs2L4BJpKotng120=;
 b=f1kkM+oTRjXfOzqFrPZTZ+8Bx7AbypGCYnBV47KUfUImieeCw5cDorZlKr7n+2xCucatIlxQE
 q7wR29P7epNBKGpD+H0iWtDX/NS1HtHx3gfakR60ZNOE4+OLgUvdICJ
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260630_054002_026113_A97136DF 
X-CRM114-Status: GOOD (  10.72  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] usb: storage: add usbdisk alias for USB storage
 devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Both MMC/SD and USB storage devices can be registered as "disk0" so
there is no way to access the first USB storage device. Add an "usbdisk"
alias so a user can easily detect the presence of a USB storage device
and acces it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/storage/usb.c | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index 2ad08183f6..6251a6e5a5 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -399,6 +399,7 @@ static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 	struct device *dev = &us->pusb_dev->dev;
 	struct us_blk_dev *pblk_dev;
 	int result;
+	char *diskname = NULL, *alias = NULL;
 
 	/* allocate a new USB block device */
 	pblk_dev = xzalloc(sizeof(struct us_blk_dev));
@@ -414,10 +415,12 @@ static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 	if (result < 0)
 		goto BadDevice;
 
-	result = cdev_find_free_index("disk");
-	dev_info(dev, "registering as disk%d\n", result);
+	diskname = xasprintf("disk%d", cdev_find_free_index("disk"));
+	alias = xasprintf("usbdisk%d", cdev_find_free_index("usbdisk"));
 
-	pblk_dev->blk.cdev.name = basprintf("disk%d", result);
+	dev_info(dev, "registering as %s (%s)\n", diskname, alias);
+
+	pblk_dev->blk.cdev.name = diskname;
 	pblk_dev->blk.blockbits = SECTOR_SHIFT;
 	pblk_dev->blk.type = BLK_TYPE_USB;
 	pblk_dev->blk.removable = true;
@@ -429,6 +432,9 @@ static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 		goto BadDevice;
 	}
 
+	devfs_add_alias(&pblk_dev->blk.cdev, alias);
+	free(alias);
+
 	list_add_tail(&pblk_dev->list, &us->blk_dev_list);
 	dev_dbg(dev, "USB disk device successfully added\n");
 
@@ -437,6 +443,9 @@ static int usb_stor_add_blkdev(struct us_data *us, unsigned char lun)
 BadDevice:
 	dev_dbg(dev, "%s failed with %d\n", __func__, result);
 	free(pblk_dev);
+	free(diskname);
+	free(alias);
+
 	return result;
 }
 

-- 
2.47.3



