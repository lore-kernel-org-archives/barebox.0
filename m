Delivery-date: Mon, 29 Jul 2024 16:43:29 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYRaz-004A3G-2H
	for lore@lore.pengutronix.de;
	Mon, 29 Jul 2024 16:43:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYRaz-0001zN-1o
	for lore@pengutronix.de; Mon, 29 Jul 2024 16:43:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=y1nYNlZKN6TKsJqG9xGeLCLGfAk0Z5o6uw92sIBEQxo=; b=Q2NBc4jXpCoj7GQbEA9G5VZVuy
	Y8tqBOkZpGcbOrDpQzYJlXBrMYPQqz4/8ZPtZ4XdQyC5n/uzpThjSNI4Rh9x/sk9DcLe8bXxlKxGm
	aDz55aychh85kOZg5KoREGH5TaLODXBQPOUE1BkyDLHkXaP+4B8p1CTEH/OIOnyK+bD57QjlbSY8V
	evqoiS/FsonBLJDzI7dDy84WvrCiFuWgSXk86Ac8ipYFaegYnkqcjlwXz3kwIvGW7yDw7fnp8/2Ao
	VrTl56tAzXfTf5FT/wbyKrfTGk1Hk/Y7w6aQzRiooaTm7LpgOWRqhAwIHKeZ4kxJg/sKo3wjhyFmH
	44WVGBMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYRaY-0000000BhSh-18Ki;
	Mon, 29 Jul 2024 14:43:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYRRf-0000000BdJG-0X9v
	for barebox@lists.infradead.org;
	Mon, 29 Jul 2024 14:33:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYRRd-0000g9-Hr; Mon, 29 Jul 2024 16:33:49 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYRRd-00349u-51; Mon, 29 Jul 2024 16:33:49 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYRRd-006ZZ2-0D;
	Mon, 29 Jul 2024 16:33:49 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: has@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 29 Jul 2024 16:33:47 +0200
Message-Id: <20240729143347.1566660-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240729143347.1566660-1-a.fatoum@pengutronix.de>
References: <20240729143347.1566660-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240729_073351_196008_3F4EDDEE 
X-CRM114-Status: GOOD (  11.64  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: i.MX8MP: tqma8mpxl: match board code against SoM compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The board code has nothing baseboard-specific: It just registers the
barebox update handler and activates the environment on the bootsource,
both of which are applicable to any boards using the same SoM.

Therefore, let's replace the board matches with a match on the SoM.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/tqma8mpxl/board.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boards/tqma8mpxl/board.c b/arch/arm/boards/tqma8mpxl/board.c
index 16ba1eb1c61c..8b67acb91c55 100644
--- a/arch/arm/boards/tqma8mpxl/board.c
+++ b/arch/arm/boards/tqma8mpxl/board.c
@@ -35,8 +35,7 @@ static int tqma8mpxl_probe(struct device *dev)
 }
 
 static const struct of_device_id tqma8mpxl_of_match[] = {
-	{ .compatible = "tq,imx8mp-tqma8mpdl-mba8mpxl"},
-	{ .compatible = "tq,imx8mp-tqma8mpql-mba8mpxl"},
+	{ .compatible = "tq,imx8mp-tqma8mpql" },
 	{ /* sentinel */ },
 };
 BAREBOX_DEEP_PROBE_ENABLE(tqma8mpxl_of_match);
-- 
2.39.2



