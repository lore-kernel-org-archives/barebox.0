Delivery-date: Mon, 17 Jan 2022 13:06:58 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9Qmo-004Y3e-Rn
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 13:06:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9Qmj-0003y4-BJ
	for lore@pengutronix.de; Mon, 17 Jan 2022 13:06:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CtJHyVFDehdPRmP7g2PJWvIpjBvbx7igbOXDC4CN0bo=; b=gFHf/h8wmTY90p
	naQSWPUOpVRJwRku09H+n78gSVqpbIzjpoVTlpyqnNFJAqqAYPybGJ7fmQHBnAAgzzCm0/x0/cK8x
	xpdI3UEYno//o5mSHGLU3H6Owq4xg9spq7IQQu8FndCkKPqEXN9+ELxlUdqJ1vX1RkrK2/0GtuvlP
	Yb0Xts0+1wrunfGx5SUnGtaoEGLAEAwoJgYjj177q0HLxaR8v8dUbYyui8C6UWVzGAwwG91+72+oB
	/O9AM/ZAuUqvYG0I6npvuDzSev/jwAzUb+4pfzXqvNWwDBTPn+srXdVP0Pv46BdXTbeJY+4LcGUDA
	1FVX9qg7rcodtiMYQRJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9QlE-00ElQW-DM; Mon, 17 Jan 2022 12:05:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9Ql0-00ElKj-II
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 12:05:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1n9Qkw-0003X4-Hp; Mon, 17 Jan 2022 13:05:02 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1n9Qkw-00EvH9-2F; Mon, 17 Jan 2022 13:05:02 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 17 Jan 2022 13:04:57 +0100
Message-Id: <20220117120500.3556703-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_040506_660201_D73685A6 
X-CRM114-Status: GOOD (  12.48  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/4] ARM: rpi: convert board code to a driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Convert board code to a driver model. This will prevent executing this
part of code on any other BCM2xxx based boards.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 40 +++++++++++++++++++++--
 1 file changed, 38 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 2684bd5ed7..43e7e66e0f 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -511,7 +511,7 @@ static void rpi_vc_fdt(void)
 	}
 }
 
-static int rpi_devices_init(void)
+static int rpi_devices_probe(struct device_d *dev)
 {
 	struct regulator *reg;
 
@@ -529,4 +529,40 @@ static int rpi_devices_init(void)
 
 	return 0;
 }
-late_initcall(rpi_devices_init);
+
+static const struct of_device_id rpi_of_match[] = {
+	/* BCM2711 based Boards */
+	{ .compatible = "raspberrypi,400" },
+	{ .compatible = "raspberrypi,4-compute-module" },
+	{ .compatible = "raspberrypi,4-model-b" },
+
+	/* BCM2835 based Boards */
+	{ .compatible = "raspberrypi,model-a" },
+	{ .compatible = "raspberrypi,model-a-plus" },
+	{ .compatible = "raspberrypi,model-b" },
+	/* Raspberry Pi Model B (no P5) */
+	{ .compatible = "raspberrypi,model-b-i2c0" },
+	{ .compatible = "raspberrypi,model-b-rev2" },
+	{ .compatible = "raspberrypi,model-b-plus" },
+	{ .compatible = "raspberrypi,compute-module" },
+	{ .compatible = "raspberrypi,model-zero" },
+	{ .compatible = "raspberrypi,model-zero-w" },
+
+	/* BCM2836 based Boards */
+	{ .compatible = "raspberrypi,2-model-b" },
+
+	/* BCM2837 based Boards */
+	{ .compatible = "raspberrypi,3-model-a-plus" },
+	{ .compatible = "raspberrypi,3-model-b" },
+	{ .compatible = "raspberrypi,3-model-b-plus" },
+	{ .compatible = "raspberrypi,3-compute-module" },
+	{ .compatible = "raspberrypi,3-compute-module-lite" },
+	{ /* sentinel */ },
+};
+
+static struct driver_d rpi_board_driver = {
+	.name = "board-rpi",
+	.probe = rpi_devices_probe,
+	.of_compatible = DRV_OF_COMPAT(rpi_of_match),
+};
+late_platform_driver(rpi_board_driver);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

