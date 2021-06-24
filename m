Delivery-date: Thu, 24 Jun 2021 10:54:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL7y-0007Fn-VH
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 10:54:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwL7x-0001aX-4I
	for lore@pengutronix.de; Thu, 24 Jun 2021 10:54:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0+ANwBPbPdmJEaZtK8K8wwl1gVfXqJ+n4VmkXvSmFxs=; b=IgsQLnzHgPU8Un
	CCcWOyLfmRJyHwbULoWPZ05g1v4l1xTTBT+KjOG/EPt0f67Qf96vXzKf5dJTao0fnK9HK9dqLC2CB
	tCWhCNMO8ylxew5qPZWEKib0d+oR/TLkQ1jWC12R5DLuxPnxVdAh9SagsFWHH8S/JPPm6VLudW29Z
	ZQAPMy3Z6KSr12IwiK7GAeaHqRv1HC64VYw5W5SGSGso3WypHEPBq5m1nBv/DWMwxataPL83AiIiC
	jTRgrRm1Zy1wQyc/0pg1De4j/p5N64P2A57zDkUyantfvl7E5pi22l8Kxmjn7jq/Z4t56tCZZkclq
	vl3GWEgAqAq2w0xzUacg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwL6h-00DXbS-3F; Thu, 24 Jun 2021 08:53:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwL63-00DXFP-8g
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 08:52:31 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL61-0000sM-9X; Thu, 24 Jun 2021 10:52:25 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lwL60-0000bS-A0; Thu, 24 Jun 2021 10:52:24 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 24 Jun 2021 10:52:13 +0200
Message-Id: <20210624085223.14616-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624085223.14616-1-s.hauer@pengutronix.de>
References: <20210624085223.14616-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_015227_535902_2EEE2C61 
X-CRM114-Status: GOOD (  18.84  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 08/18] firmware: Fix device_node matching
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

firmwaremgr_find_by_node() matches against the device node of the parent
of the device associated to the handler. This is correct for the socfpga
and zyncmp driver, but not for the altera_serial driver. Add a
device_node argument to the handler which is set by the drivers to the
correct device node and match against that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/firmware.c                | 2 +-
 drivers/firmware/altera_serial.c | 1 +
 drivers/firmware/socfpga.c       | 2 ++
 drivers/firmware/zynqmp-fpga.c   | 2 ++
 include/firmware.h               | 1 +
 5 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/common/firmware.c b/common/firmware.c
index 477dc1f13a..bb76a16050 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -70,7 +70,7 @@ struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
 	struct firmware_mgr *mgr;
 
 	list_for_each_entry(mgr, &firmwaremgr_list, list)
-		if (mgr->handler->dev->parent->device_node == np)
+		if (mgr->handler->device_node == np)
 			return mgr;
 
 	return NULL;
diff --git a/drivers/firmware/altera_serial.c b/drivers/firmware/altera_serial.c
index 3a0175dd07..49460c6a70 100644
--- a/drivers/firmware/altera_serial.c
+++ b/drivers/firmware/altera_serial.c
@@ -371,6 +371,7 @@ static int altera_spi_probe(struct device_d *dev)
 	if (model)
 		fh->model = xstrdup(model);
 	fh->dev = dev;
+	fh->device_node = dev->device_node;
 
 	this->spi = (struct spi_device *)dev->type_data;
 	this->data = data;
diff --git a/drivers/firmware/socfpga.c b/drivers/firmware/socfpga.c
index 04fdfdb3af..b17dacf683 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -435,6 +435,8 @@ static int socfpga_fpgamgr_probe(struct device_d *dev)
 	}
 
 	fh->dev = &mgr->dev;
+	fh->device_node = dev->device_node;
+
 	ret = firmwaremgr_register(fh);
 	if (ret != 0) {
 		free(mgr);
diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index ab70d99933..0fc229bfd3 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -383,6 +383,8 @@ static int zynqmp_fpga_probe(struct device_d *dev)
 	}
 
 	fh->dev = &mgr->dev;
+	fh->device_node = dev->device_node;
+
 	ret = firmwaremgr_register(fh);
 	if (ret != 0) {
 		free(mgr);
diff --git a/include/firmware.h b/include/firmware.h
index 515bdcaf40..0ffea52840 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -14,6 +14,7 @@ struct firmware_handler {
 	char *model; /* description for this device */
 	struct device_d *dev;
 	void *priv;
+	struct device_node *device_node;
 	/* called once to prepare the firmware's programming cycle */
 	int (*open)(struct firmware_handler*);
 	/* called multiple times to program the firmware with the given data */
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

