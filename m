Delivery-date: Thu, 17 Oct 2024 11:11:05 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1MXB-005Pum-26
	for lore@lore.pengutronix.de;
	Thu, 17 Oct 2024 11:11:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t1MX7-0004Sm-Bx
	for lore@pengutronix.de; Thu, 17 Oct 2024 11:11:05 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=iVgK6O3RiKxhB4YtU0wlsOnLWtTU07Q860/ZpXs8Q9Y=; b=ohOG9neAHtogeKfo9EmZ3ThXxo
	XbrH/2zzwRO6B2+Z3kCvd3YeX0fhbMGUrRIFAan5WgkIoheDnuDNckJvDBOL+b70k+XTgxrGLWYIG
	xK1v3x09Old+MSVJKHiymo9i7oKsAGXFXlYNapkPkpVJiJV6ltQOf8g7gECOgnywLcMZ0qfNtdDo2
	+qFtZsmyeSS2JLvWFuUQzrNkuKYVRIri7Ld3gpfTG4wPHHB9uvhfrwTaMMCmgf7SBVW2tEEOTwWPm
	B4l4mXBCLFmt7F7rMI3XZu5/xfoK6Fwo9dl/2zpm6lodxKkj5U8hBeljnb3SJZla0U+hxkeluZPm9
	jeZMgF5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t1MW8-0000000EHW5-3f0w;
	Thu, 17 Oct 2024 09:10:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t1MW5-0000000EHVO-12JQ
	for barebox@lists.infradead.org;
	Thu, 17 Oct 2024 09:09:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t1MW1-0004OP-FM; Thu, 17 Oct 2024 11:09:53 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t1MVz-002VXe-Bc; Thu, 17 Oct 2024 11:09:51 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1t1MVz-000X4h-0s;
	Thu, 17 Oct 2024 11:09:51 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 17 Oct 2024 11:09:47 +0200
Message-Id: <20241017090947.127049-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241017_020957_308505_72467F40 
X-CRM114-Status: GOOD (  10.91  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] i2c: lpi2c: fix potential read of uninitialized variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If the continue statement in the do {} while () loop is
reached on the first iteration, the loop condition is evaluated without
having first being set.

Fix this by initializing it to the maximum length of the I2C message.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/busses/i2c-imx-lpi2c.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/busses/i2c-imx-lpi2c.c b/drivers/i2c/busses/i2c-imx-lpi2c.c
index e32bc4fd1805..763074ae63c7 100644
--- a/drivers/i2c/busses/i2c-imx-lpi2c.c
+++ b/drivers/i2c/busses/i2c-imx-lpi2c.c
@@ -330,7 +330,7 @@ static void lpi2c_imx_set_rx_watermark(struct lpi2c_imx_struct *lpi2c_imx)
 
 static int lpi2c_imx_write_txfifo(struct lpi2c_imx_struct *lpi2c_imx)
 {
-	unsigned int data, remaining;
+	unsigned int data, remaining = lpi2c_imx->msglen;
 	unsigned int timeout = 100000;;
 
 	do {
@@ -353,7 +353,7 @@ static int lpi2c_imx_write_txfifo(struct lpi2c_imx_struct *lpi2c_imx)
 
 static int lpi2c_imx_read_rxfifo(struct lpi2c_imx_struct *lpi2c_imx)
 {
-	unsigned int remaining;
+	unsigned int remaining = lpi2c_imx->msglen;
 	unsigned int data;
 	unsigned int timeout = 100000;;
 
-- 
2.39.5



