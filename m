Delivery-date: Mon, 01 Mar 2021 12:08:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgQ1-0004Xj-Rj
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 12:08:53 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGgQ1-0001Sl-0H
	for lore@pengutronix.de; Mon, 01 Mar 2021 12:08:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=t4g3wyLCjL9iyNA2oMcckWqgUiBGHN1m3EoOBQzoQnU=; b=SEK4v5n4I2eaEVxhxuGJdyWQrP
	zDBdCQf+TULWDWE1KtsUAf+9ooJJ+sHgfYYXlLXX0v32OY7ulfOTB6Vuy9A63z0boQEtR788GBQdR
	tHEKdsOVMppawfjbfNuBqJ5PtiHLewMBYZphR9XCp511nwl5kGmKCz12dmoeZOtE2rlypCbIKk4P9
	mUaCXL6T4GeLviZEh71F8VpY/0bc8b/W+H+0oBltyuVqeCctTw7Su6YuUgxV0Ole7F07q9Gp7JsYF
	3VNi02gSSDPnaqPwkPvFD5KMpjCZASb09JiQx6pSNJ/IgsWQ4JMo9+EtEDMx4wDoufXGP2UpZ9kph
	7Kdxc4Zg==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGgOy-00071a-Sk; Mon, 01 Mar 2021 11:07:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGgOw-00070f-8c
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 11:07:47 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgOv-0001DF-8o; Mon, 01 Mar 2021 12:07:45 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lGgOv-0003LT-05; Mon, 01 Mar 2021 12:07:45 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 12:07:43 +0100
Message-Id: <20210301110743.12812-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_060746_339814_B2D88297 
X-CRM114-Status: GOOD (  14.74  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH] usb: storage: increase init retry count to support lengthy
 HDD spin up
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Some USB disks take notoriously long to spin up. They are seen by a bus
scan, but they report ready only after a few seconds have passed. This
is not a problem if vbus is enabled early on, so devices have had a
chance to spin up. If vbus is first enabled as part of the usb scan,
not enough time might have passed for the USB disk to be usable.

This issue was observed on an i.MX6QP with following topology:

  usb: USB: scanning bus for devices...
  usb: 5 USB Device(s) found
    1 ID 0000:0000
    |  u-boot EHCI Host Controller
    |
    +-2 ID 0424:2517
    |
    +-5 ID 1058:2621
    |    Western Digital Elements 2621
    ...

Unplugging and replugging the USB disk and doing a second usb scan
made the unit ready test succeed. By increasing the retry count
during initialization, this workaround is no longer necessary.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/storage/usb.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index b417640186a2..7b0aecd757b0 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -141,7 +141,7 @@ exit:
 	return ret;
 }
 
-static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev)
+static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev, int retries)
 {
 	u8 cmd[6];
 	int ret;
@@ -150,7 +150,7 @@ static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev)
 	cmd[0] = SCSI_TST_U_RDY;
 
 	ret = usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), NULL, 0,
-				 10, 100);
+				 retries, 100);
 	if (ret < 0)
 		return -ENODEV;
 
@@ -282,7 +282,7 @@ static int usb_stor_blk_io(struct block_device *disk_dev,
 
 	/* ensure unit ready */
 	dev_dbg(dev, "Testing for unit ready\n");
-	if (usb_stor_test_unit_ready(pblk_dev)) {
+	if (usb_stor_test_unit_ready(pblk_dev, 10)) {
 		dev_dbg(dev, "Device NOT ready\n");
 		return -EIO;
 	}
@@ -365,7 +365,8 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	/* ensure unit ready */
 	dev_dbg(dev, "Testing for unit ready\n");
 
-	result = usb_stor_test_unit_ready(pblk_dev);
+	/* retry a bit longer than usual as some HDDs take longer to spin up */
+	result = usb_stor_test_unit_ready(pblk_dev, 60);
 	if (result) {
 		dev_dbg(dev, "Device NOT ready\n");
 		return result;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

