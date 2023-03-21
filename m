Delivery-date: Tue, 21 Mar 2023 16:00:35 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pedTW-009JSU-5B
	for lore@lore.pengutronix.de; Tue, 21 Mar 2023 16:00:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pedTV-0004Hf-Qt
	for lore@pengutronix.de; Tue, 21 Mar 2023 16:00:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Rf3pevd2PK4KM5hvYNnPrrJvz/HGKC+Z47jhVAMW0JI=; b=tn3FVVYXesQhprn4aj1bEFPs7g
	jNp4FJixwstjPIL07sNHVrAAygw9CXFDC2R6/ZBjObw91W1lxplBZgS6Aqkqw0QdwFlWdUellRUYP
	vPhSgcRwAh74ewkMMrsPQBA2VAtg71wAws3K7mrlvgvRVpbyHZwN3wSICXHmV6HzVCHf+i5+nEcGK
	ZYmGINUEmyE31zIbBlY6UYcHHRqQ4+aZOX02lqzi5Ix9Epu5I3XT8Rw6ChMmuKyi6nfHc8wEbCQ7Z
	8ffuWmoQIhq1c6e6/8cC7X0VBD6VihDfNkjxi6y6yMFr9+E7+6zVvzarB3eycRh7KqgNp3lobM/xF
	qQsEoZjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pedS6-00Cp8J-0X;
	Tue, 21 Mar 2023 14:59:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pedS2-00Cp7Q-0Q
	for barebox@lists.infradead.org;
	Tue, 21 Mar 2023 14:59:03 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pedRw-0003th-73; Tue, 21 Mar 2023 15:58:56 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pedRv-005iG7-JK; Tue, 21 Mar 2023 15:58:55 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pedRv-00CnqQ-0h; Tue, 21 Mar 2023 15:58:55 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 21 Mar 2023 15:58:53 +0100
Message-Id: <20230321145853.3051494-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230321_075902_171885_F16E3B86 
X-CRM114-Status: GOOD (  11.57  )
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
Subject: [PATCH] net: macb: Adjust zynq compatibles to upstream device trees
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Linux v6.3-rc1 renamed the zynq macb compatibles from cdns,zynq-gem to
xlnx,zynq-gem and cdns,zynqmp-gem to xlnx,zynqmp-gem. Adjust the
compatibles in the driver accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/net/macb.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/macb.c b/drivers/net/macb.c
index 3d7627fed8..9dd273a504 100644
--- a/drivers/net/macb.c
+++ b/drivers/net/macb.c
@@ -936,8 +936,8 @@ static const struct of_device_id macb_dt_ids[] = {
 	{ .compatible = "atmel,sama5d2-gem",},
 	{ .compatible = "atmel,sama5d3-gem",},
 	{ .compatible = "atmel,sama5d4-gem",},
-	{ .compatible = "cdns,zynq-gem",},
-	{ .compatible = "cdns,zynqmp-gem",},
+	{ .compatible = "xlnx,zynq-gem",},
+	{ .compatible = "xlnx,zynqmp-gem",},
 	{ .compatible = "sifive,fu540-c000-gem", .data = &fu540_c000_config },
 	{ /* sentinel */ }
 };
-- 
2.30.2



