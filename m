Delivery-date: Wed, 08 Mar 2023 15:26:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZuki-00DfXp-SR
	for lore@lore.pengutronix.de; Wed, 08 Mar 2023 15:26:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pZuki-0003a8-G3
	for lore@pengutronix.de; Wed, 08 Mar 2023 15:26:49 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pglAhf1mE+dK5P5bp/3iyMrfPz/EjSusjwQVceckNxM=; b=gwPhjfTIURxbr/cmgXB5VbuNr0
	O0JuLH50Elbtfx9v3wVWj8swCcwhPExbVxagHSbY/UmKvMmHZyoxyJQoAZ3J4/yOUb57iQhmH+XxN
	2pWhA0fMC5Ch3JytYuYGeaChEz9IOj9V/IodsUxo9/16SJ+MHbtOw/oipW/oMIFKcCuUXO0BSwDZ0
	7kIVJ/VD7Q9AltJUXAZdYbVEBcVdMnnoBqL3j0SN/zR2t3pEv3nIoifw8awNhxfmCv5QVNzWtDUE9
	nZCObpk9r8xAAA7goKxon9OvNhCEA0U///rtd1fYFokvC17ELAXkaFuGqgW5FI8l4SQVvcoLsSluu
	8Ld5maaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZujK-005Qo4-20; Wed, 08 Mar 2023 14:25:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pZujF-005Ql2-2h
	for barebox@lists.infradead.org; Wed, 08 Mar 2023 14:25:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuj6-0002wq-EF; Wed, 08 Mar 2023 15:25:08 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuQO-002jGB-3t; Wed, 08 Mar 2023 15:05:48 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pZuQM-00E7mI-HX; Wed, 08 Mar 2023 15:05:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  8 Mar 2023 15:05:43 +0100
Message-Id: <20230308140545.3366052-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230308140545.3366052-1-s.hauer@pengutronix.de>
References: <20230308140545.3366052-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230308_062517_305173_4E37BA79 
X-CRM114-Status: GOOD (  13.30  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 5/7] spi: reduce scope of 'chip'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Reducde scope of struct spi_board_info chip to the loop where it is
actually only used. While at it drop the memset and let the compiler
do the work of initialising it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/spi/spi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 1444fe3741..3684647f6e 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -108,7 +108,6 @@ EXPORT_SYMBOL(spi_new_device);
 static void spi_of_register_slaves(struct spi_controller *ctrl)
 {
 	struct device_node *n;
-	struct spi_board_info chip;
 	struct property *reg;
 	struct device_node *node = ctrl->dev->of_node;
 
@@ -119,7 +118,8 @@ static void spi_of_register_slaves(struct spi_controller *ctrl)
 		return;
 
 	for_each_available_child_of_node(node, n) {
-		memset(&chip, 0, sizeof(chip));
+		struct spi_board_info chip = {};
+
 		chip.name = xstrdup(n->name);
 		chip.bus_num = ctrl->bus_num;
 		/* Mode (clock phase/polarity/etc.) */
-- 
2.30.2



