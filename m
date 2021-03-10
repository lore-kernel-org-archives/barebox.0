Delivery-date: Wed, 10 Mar 2021 14:30:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuZ-0001SU-OG
	for lore@lore.pengutronix.de; Wed, 10 Mar 2021 14:30:03 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lJyuX-0004Fg-Kp
	for lore@pengutronix.de; Wed, 10 Mar 2021 14:30:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9XQNTyWbFad69AQitjA9o1K7mqCJkx7UbrjuvJtZiYQ=; b=oVmT0ZZ2beb/Viy/b9BKnXCxJ
	hqKj3tPpGuu32sk2t9N6mhxH7oEV/6jcEUTm1uKZoGfJIt7FpjpxwCjkQCFIoAX17K+jqj0WZH9a7
	IEIfTkUOYiUnK03/ml+X9Fl1b43pjVYsB+d/A8CbHzr8DjBFAKQF3uf6jheUcvH7nvSqp+IooZzbR
	pRQCUdqUfHw4a8ns18U2Oo8Pui6L2M0w+YUsud6aht4iCB2xMbQ49Eov7Bd2veXvHIM+9jK+Kr8Ky
	ocHjjWtEOp0SBTo9vFkClZS6Je4LH3yRkOv+PINNbV+ET15WbpHxDHe6EHnJhpOaKCg66oDS4d72+
	KuGFoe4cw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lJytX-006uxd-DM; Wed, 10 Mar 2021 13:28:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lJyt9-006unU-Nn
 for barebox@lists.infradead.org; Wed, 10 Mar 2021 13:28:40 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt7-0003fn-SD; Wed, 10 Mar 2021 14:28:33 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1lJyt6-0006c2-Jx; Wed, 10 Mar 2021 14:28:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 10 Mar 2021 14:28:18 +0100
Message-Id: <20210310132829.7662-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210310132829.7662-1-s.hauer@pengutronix.de>
References: <20210310132829.7662-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210310_132835_964961_BC1B282F 
X-CRM114-Status: GOOD (  19.42  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 06/17] firmware: Fix device_node matching
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
index 008fb7720e..fce1f4b596 100644
--- a/common/firmware.c
+++ b/common/firmware.c
@@ -68,7 +68,7 @@ struct firmware_mgr *firmwaremgr_find_by_node(struct device_node *np)
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
index 234fb2d094..4bcf079ab0 100644
--- a/drivers/firmware/socfpga.c
+++ b/drivers/firmware/socfpga.c
@@ -451,6 +451,8 @@ static int fpgamgr_probe(struct device_d *dev)
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
index 348fa4ee2d..a44208b634 100644
--- a/include/firmware.h
+++ b/include/firmware.h
@@ -13,6 +13,7 @@ struct firmware_handler {
 	char *id; /* unique identifier for this firmware device */
 	char *model; /* description for this device */
 	struct device_d *dev;
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

