Delivery-date: Thu, 09 Mar 2023 13:03:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paEzd-00Eoih-O1
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 13:03:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paEzc-0000zA-Cy
	for lore@pengutronix.de; Thu, 09 Mar 2023 13:03:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pglAhf1mE+dK5P5bp/3iyMrfPz/EjSusjwQVceckNxM=; b=VwVUK9GrEuUMNX++3hdxSnT9DO
	enJEd+g+3SE7jrhFC4Q+iPCblnfI8woXzwYywXpFcpt7jxIHOrSOJH7I+QpNAn6Xc0Ag67eSWxhq6
	+F2cpAiQExHN3Obhr58/1TTb+BawunwsyEuR2hkuWpogKIHpcGIRb136Tl50iqXI1SFFnqYQ3178E
	UsgTydDuIcBrizopJi2Skm3ZtfUV5PjZJF4/0nLh71HjalIaD964kAei5wM/9rDPetn3C0vBEi7Ak
	Kdp7XbYlvzhAJZz/74wc0VrPKM4+0tl3oqLnWG/2r6PW4P4peBs1+O4jkv4Z1bGcHm0n/gPRtQUf9
	utpxgOww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paEyG-009kaw-Tb; Thu, 09 Mar 2023 12:02:09 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paEof-009gJQ-20
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:52:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paEod-0007BL-O8; Thu, 09 Mar 2023 12:52:11 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paEod-002w6y-31; Thu, 09 Mar 2023 12:52:11 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paEob-004Nd0-O1; Thu, 09 Mar 2023 12:52:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  9 Mar 2023 12:52:06 +0100
Message-Id: <20230309115208.973893-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230309115208.973893-1-s.hauer@pengutronix.de>
References: <20230309115208.973893-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_035213_151174_24FE3D5F 
X-CRM114-Status: GOOD (  13.90  )
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
Subject: [PATCH v2 5/7] spi: reduce scope of 'chip'
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



