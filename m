Delivery-date: Wed, 15 May 2024 13:21:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7Cgw-00FjLt-2T
	for lore@lore.pengutronix.de;
	Wed, 15 May 2024 13:21:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1s7Cgw-0003x6-6u
	for lore@pengutronix.de; Wed, 15 May 2024 13:21:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=0bjd1yT7zq5gnYCIQDHvKw3EIJoKeCWIFttukmTM7dA=; b=fLDb7MUtGo0g5bxki4M4X4dVIV
	aUQjJoTHa5XLjBULSEuyHO2JfFz8CpYfv/7wcqYcCjfFRi8OiYXqzl93aaKPgTPUypbn6/EbehiIZ
	LrQ8iOCXCQ7cMKsgB3e6hdAs/LxvbI5Wc93/neWNAYOeUmoJi8ZgsmjWD3gx7tDzZ7ap5CMeQAhnX
	zvuk5lF4Ck0V9nYweWnrWxkr5I9IPMi94jRxBCeXFBkqU8eI2xob4nUFW3ZvCbsludde1/PjPJhXX
	0DU1HI/9VS5KwcA8FdN0jxUb19gFqoB/yxULYueFOv0a6kV5vxhCnLn/oz6G9YTUmGwCvuzWjrYbh
	78KrMtIg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7CgY-00000001LJP-1O4Z;
	Wed, 15 May 2024 11:20:38 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s7CgV-00000001LIb-28Vp
	for barebox@lists.infradead.org;
	Wed, 15 May 2024 11:20:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7CgU-0003l5-6h; Wed, 15 May 2024 13:20:34 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7CgT-001WX7-OC; Wed, 15 May 2024 13:20:33 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1s7CgT-001CPm-28;
	Wed, 15 May 2024 13:20:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: san@skov.com,
	Oleksij Rempel <o.rempel@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 15 May 2024 13:20:32 +0200
Message-Id: <20240515112033.286037-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240515_042035_577244_291DC2AF 
X-CRM114-Status: GOOD (  11.76  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX8MP: skov: fix variant detection on boards without state
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Soren Andersen <san@skov.com>

If barebox booted a board without state partition on the eMMC it did not set a
refined compatible at all resulting in a failure to boot into Linux userspace.

Instead just default to the LVDS flavor of the board variant which at least
leads to a working Linux userspace.

Signed-off-by: Soren Andersen <san@skov.com>
Signed-off-by: Ulrich Ölmann <u.oelmann@pengutronix.de>
Reviewed-by: Oleksij Rempel <o.rempel@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/skov-imx8mp/board.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/boards/skov-imx8mp/board.c b/arch/arm/boards/skov-imx8mp/board.c
index 3cb7a8752a27..ce8d154a7355 100644
--- a/arch/arm/boards/skov-imx8mp/board.c
+++ b/arch/arm/boards/skov-imx8mp/board.c
@@ -186,10 +186,7 @@ static int skov_imx8mp_init_variant(struct skov_imx8mp_priv *priv)
 
 	if (variant->flags & SKOV_IMX8MP_HAS_HDMI) {
 		ret = skov_imx8mp_get_hdmi(dev);
-		if (ret < 0)
-			return ret;
-
-		if (ret)
+		if (ret == 1)
 			compatible = variant->dts_compatible_hdmi;
 		else
 			compatible = variant->dts_compatible;
-- 
2.39.2



