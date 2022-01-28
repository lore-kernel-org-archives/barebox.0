Delivery-date: Fri, 28 Jan 2022 09:24:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDMYr-00FmWS-NW
	for lore@lore.pengutronix.de; Fri, 28 Jan 2022 09:24:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nDMYp-0002Kf-VJ
	for lore@pengutronix.de; Fri, 28 Jan 2022 09:24:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9OFwB+nx6zngBPX7EmF0hL7A/xhGw9FurYAoqSMsHDs=; b=kO0idDqNkne1eH
	A8iCPWRbNteKH4FTEKUTYI/MUerNbfZpN3nFHLJmihzBNoXCka7UNYYOzoouDOq96jGX9h5Bj9C6U
	Itcqsz8qJOvMr5aHHhK5PAX0BZHdjyJPW7LcLWVDfWd6R7B4q2SXSsj+Uh2DKv6QRGj7D3yUx+rIQ
	yOgjxIZKPku5aHcqsVq24b+XFNuZ6Ascu7TIAPTpDUxQ7eRhm3jA2kTQufgcbRY+F9qrvMo8KCZV1
	RXX04uBYr1vFvCTBS9beWTa9bWuPOGJIGbchyG1mrxhbGdDY2cZuqny5AtQbrdIwHW68xlXlBVV1+
	tF+/Rm48nkInZ4WIm6aQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nDMXb-000zXm-4d; Fri, 28 Jan 2022 08:23:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nDMXT-000zUd-6k
 for barebox@lists.infradead.org; Fri, 28 Jan 2022 08:23:24 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nDMXQ-00026b-AV; Fri, 28 Jan 2022 09:23:20 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nDMXP-00A74p-Or; Fri, 28 Jan 2022 09:23:19 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 28 Jan 2022 09:23:14 +0100
Message-Id: <20220128082317.2410427-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220128082317.2410427-1-o.rempel@pengutronix.de>
References: <20220128082317.2410427-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220128_002323_274471_73C978C3 
X-CRM114-Status: GOOD (  12.92  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 1/4] ARM: rpi: convert board code to a driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Convert board code to a driver model. This will prevent executing this
part of code on any other BCM2xxx based boards.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 33 +++++++++++++++++++++--
 1 file changed, 31 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 2684bd5ed7..247d12467a 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -511,7 +511,7 @@ static void rpi_vc_fdt(void)
 	}
 }
 
-static int rpi_devices_init(void)
+static int rpi_devices_probe(struct device_d *dev)
 {
 	struct regulator *reg;
 
@@ -529,4 +529,33 @@ static int rpi_devices_init(void)
 
 	return 0;
 }
-late_initcall(rpi_devices_init);
+
+static const struct of_device_id rpi_of_match[] = {
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

