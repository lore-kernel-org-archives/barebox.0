Delivery-date: Thu, 09 Mar 2023 13:04:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paF0f-00EonL-22
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 13:04:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paF0d-0001K0-EQ
	for lore@pengutronix.de; Thu, 09 Mar 2023 13:04:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=G6N+hEBssTpxgMJhL8b7DYNuEn6tJp0BHModmmm5RwY=; b=25H53zb5DDHeIMRZezUeBqH6Tx
	JENSoO1q1GQMaoS+USr6Hno8tsFMmBxAOTwVd1AzuZGx43+9HdXhDFHvNnyRE9alddocc0YsYrFjJ
	J08lw6SMlY2GGdYkVbvUssr9oKwHwbH7QodVPT1Wq5/MohjFJevgKZeNfOC8CvAxAC52KNj1pkP//
	IbdQOZeieGmy1uC8XfMdmLjBuZLfX1QMyUE5rKjpPElxxrwZWv24y++b1VRC83Dq1puWp61t7nP5/
	8OC4QsQLcwAzdQeiCIf0apyBHQME0Y+eDJrfhqVTgaTT55OpbWMZDBmEyFA0JnSctJzm3uairlXl1
	HYmrvL3A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paEzH-009l4z-5e; Thu, 09 Mar 2023 12:03:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paEon-009gOM-1u
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:52:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paEod-0007BH-ON; Thu, 09 Mar 2023 12:52:11 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paEod-002w6x-2e; Thu, 09 Mar 2023 12:52:11 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paEob-004NdK-Q6; Thu, 09 Mar 2023 12:52:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  9 Mar 2023 12:52:07 +0100
Message-Id: <20230309115208.973893-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230309115208.973893-1-s.hauer@pengutronix.de>
References: <20230309115208.973893-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_035221_143286_8CB925C6 
X-CRM114-Status: GOOD (  16.04  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 6/7] spi: implement rescan
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Implement rescan to register and probe newly added devices via device
tree overlays.

While this is easy to do at SPI core level this is not the whole truth.
Many SPI controllers do not use their native chipselects for the SPI
devices, but GPIOs instead. These currently won't be rescanned when new
devices are added, so the chipselects for the new devices must be be
present in the base device tree already. You have been warned.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/spi.c | 23 +++++++++++++++++++++--
 1 file changed, 21 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 3684647f6e..ee467d055b 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -29,6 +29,7 @@ struct boardinfo {
 };
 
 static LIST_HEAD(board_list);
+static LIST_HEAD(spi_controller_list);
 
 /**
  * spi_new_device - instantiate one new SPI device
@@ -120,6 +121,12 @@ static void spi_of_register_slaves(struct spi_controller *ctrl)
 	for_each_available_child_of_node(node, n) {
 		struct spi_board_info chip = {};
 
+		if (n->dev) {
+			dev_dbg(ctrl->dev, "of_i2c: skipping already registered %s\n",
+				dev_name(n->dev));
+			continue;
+		}
+
 		chip.name = xstrdup(n->name);
 		chip.bus_num = ctrl->bus_num;
 		/* Mode (clock phase/polarity/etc.) */
@@ -142,6 +149,17 @@ static void spi_of_register_slaves(struct spi_controller *ctrl)
 	}
 }
 
+static void spi_controller_rescan(struct device *dev)
+{
+	struct spi_controller *ctrl;
+
+	list_for_each_entry(ctrl, &spi_controller_list, list) {
+		if (ctrl->dev != dev)
+			continue;
+		spi_of_register_slaves(ctrl);
+	}
+}
+
 /**
  * spi_register_board_info - register SPI devices for a given board
  * @info: array of chip descriptors
@@ -196,8 +214,6 @@ static void scan_boardinfo(struct spi_controller *ctrl)
 	}
 }
 
-static LIST_HEAD(spi_controller_list);
-
 static int spi_controller_check_ops(struct spi_controller *ctlr)
 {
 	/*
@@ -274,6 +290,9 @@ int spi_register_controller(struct spi_controller *ctrl)
 	scan_boardinfo(ctrl);
 	status = 0;
 
+	if (!ctrl->dev->rescan)
+		ctrl->dev->rescan = spi_controller_rescan;
+
 	return status;
 }
 EXPORT_SYMBOL(spi_register_controller);
-- 
2.30.2



