Delivery-date: Fri, 16 Apr 2021 19:28:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXSGk-0001rh-FS
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 19:28:38 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXSGj-0000N4-FZ
	for lore@pengutronix.de; Fri, 16 Apr 2021 19:28:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ouz/jJDSfwZj6oAhqkqxBKvnMNMyH1OTmDO7vBsNQJM=; b=Fotqimh9qQ6FcZ7C0OLDj1cNAB
	exuL55B0aosQ2GzMn1DDMN5EAgx7LQy8iotcbsruwG7qQJhOjCPxr4z8SCx+dw0drA1zWP8tPs1I4
	VE+QmnWtdl04hjHFvg3/R4daiR+GCmdgByU3/Jess2yqXNDshGj9e+K/EDFdj8J3DnV2fkefFpy6W
	+vsb/HFzMXaq+ENbfmSZKLrt4ebJEv7GQpnbQf/DnzZY9HdRPCtap8irNE90J4IeZPpW/rQ8+Xl6i
	qVMvQCA5iXkFL0AMygRENibZCTULwGKkrtaJvRvpdrdJ3M5npJ2qUwmsBIew6+ZF7nolW+1U4Z00E
	qE0UxUqg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXSFA-002wfA-4G; Fri, 16 Apr 2021 17:27:02 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXSF4-002weK-VE
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 17:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=KXWoifNN8e/sUhXPqZ3KJ1yj7pvp65HKTo25gFLZ3HU=; b=vUgKzFNIhrsSRvKO5qWsaPq+ZL
 9xnhMyd1irOtNzXmsTmKR5eUJfVFQ3LJnZIg363HcIm/mK+QI/mLSgrS7lyo338F1fN1LD2uCOcLX
 4oX+1tb1VzY+cP8BP6SXl0t6ZJ9Hk4aBI4IrpUYZSq4I35FxPrtkVYPNNO7viU2dU8I+rfoFahVKu
 5PlHJTufKMoLi5Mi3yT4g/JBEu+oTkjaHMx2C44BOrkSefau7Wt2GfTXlHKlp3x2yRKP9VaYyIMpp
 6uADeP3x7H7yz+N+Ng2w5v8xDrGxwSL/3hfmb6N+u8VAKe6jrX51/o47Sa9OBS0/MqUK6NgjO/EFy
 Why7J1LA==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXSF2-009awh-8C
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 17:26:53 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lXSEx-0000Gh-9Y; Fri, 16 Apr 2021 19:26:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1lXSEx-000751-17; Fri, 16 Apr 2021 19:26:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 16 Apr 2021 19:26:46 +0200
Message-Id: <20210416172646.26834-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_102652_315546_9B567E65 
X-CRM114-Status: GOOD (  16.85  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] usb: storage: retry for up to 10s on lengthy HDD spin up
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
made the unit ready test succeed. Increasing the retry count
during initialization has negative consequences for other cases,
like when a device is unplugged while being probed (which already
takes way too long).

Instead, just for the case of a detected USB mass storage device that
couldn't get ready initially: retry for 10s at initialization time
before giving up.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - don't increase retry count, instead just check time and don't
    loop longer than 10s at init time.
---
 drivers/usb/storage/usb.c | 20 ++++++++++++--------
 1 file changed, 12 insertions(+), 8 deletions(-)

diff --git a/drivers/usb/storage/usb.c b/drivers/usb/storage/usb.c
index b417640186a2..b0f789b42a9f 100644
--- a/drivers/usb/storage/usb.c
+++ b/drivers/usb/storage/usb.c
@@ -141,20 +141,23 @@ exit:
 	return ret;
 }
 
-static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev)
+static int usb_stor_test_unit_ready(struct us_blk_dev *usb_blkdev, u64 timeout_ns)
 {
+	u64 start;
 	u8 cmd[6];
 	int ret;
 
 	memset(cmd, 0, sizeof(cmd));
 	cmd[0] = SCSI_TST_U_RDY;
 
-	ret = usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), NULL, 0,
-				 10, 100);
-	if (ret < 0)
-		return -ENODEV;
+	start = get_time_ns();
 
-	return 0;
+	do {
+		ret = usb_stor_transport(usb_blkdev, cmd, sizeof(cmd), NULL, 0,
+					 10, 100);
+	} while (ret < 0 && !is_timeout(start, timeout_ns));
+
+	return ret ? -ENODEV : 0;
 }
 
 static int read_capacity_16(struct us_blk_dev *usb_blkdev)
@@ -282,7 +285,7 @@ static int usb_stor_blk_io(struct block_device *disk_dev,
 
 	/* ensure unit ready */
 	dev_dbg(dev, "Testing for unit ready\n");
-	if (usb_stor_test_unit_ready(pblk_dev)) {
+	if (usb_stor_test_unit_ready(pblk_dev, 0)) {
 		dev_dbg(dev, "Device NOT ready\n");
 		return -EIO;
 	}
@@ -365,7 +368,8 @@ static int usb_stor_init_blkdev(struct us_blk_dev *pblk_dev)
 	/* ensure unit ready */
 	dev_dbg(dev, "Testing for unit ready\n");
 
-	result = usb_stor_test_unit_ready(pblk_dev);
+	/* retry a bit longer than usual as some HDDs take longer to spin up */
+	result = usb_stor_test_unit_ready(pblk_dev, 10ULL * NSEC_PER_SEC);
 	if (result) {
 		dev_dbg(dev, "Device NOT ready\n");
 		return result;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

