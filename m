Delivery-date: Thu, 26 Sep 2024 13:24:04 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmbL-002yuM-1E
	for lore@lore.pengutronix.de;
	Thu, 26 Sep 2024 13:24:04 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1stmbK-00035K-Ae
	for lore@pengutronix.de; Thu, 26 Sep 2024 13:24:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TKNIbCbaCkKFi1b9g9D/jYEX6cAOAWyFSMbaoitF5/w=; b=jv2Iaz34uBtRUG
	ra603knF+uVLhax4C+oJJwYQ41N7BudU9p1qxQayyaYAL3z2GxbKkl97bDlYNRbY4yRdQoH8gOoMK
	wW/lhFbqUKBMb74GBpVX0Hc3tta5WcMYoT/XN129dfqB+a2FadvB0ohMA0yIG+JsjRBzNgoDN1fif
	jAwsu/GtUFfa3a3+cVzr66Jlkmk3jUgXnVrboMUUU3C6uHBFeAizNb0yngfDBUnPV5M4lOMEjh6M2
	CxMn8VXfR+P2hsfPXUzd8vfNmFd+OO27yQHmIqp0NdNlgE+2mw0A7Ccr87bby1o84BkdYuK4p8+YA
	8o3R34puIkEyS48ziLJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1stmal-00000008DpR-1Jl2;
	Thu, 26 Sep 2024 11:23:27 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1stmZ1-00000008DKF-1kY3
	for barebox@lists.infradead.org;
	Thu, 26 Sep 2024 11:21:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmZ0-00019F-0C; Thu, 26 Sep 2024 13:21:38 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmYz-001fkn-HX; Thu, 26 Sep 2024 13:21:37 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1stmYz-00Fi9J-2y;
	Thu, 26 Sep 2024 13:21:37 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 26 Sep 2024 13:21:36 +0200
Message-Id: <20240926-spi-gpio-v2-0-3bf7b511c8c0@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAMBD9WYC/23MQQ7CIBCF4as0sxYDCK115T1MF2IHOhsgUElNw
 93Frl3+Ly/fDhkTYYZbt0PCQpmCbyFPHbyWp3fIaG4NkkvFR6lZjsRcpMAU9tqgsIMZObR7TGh
 pO6jH1HqhvIb0OeQifusfpAjGmRpsL6/aXIwV94jevdcUPG3nGWGqtX4Bc8v0QaUAAAA=
To: "open list:BAREBOX" <barebox@lists.infradead.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1727349697; l=1304;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=3nVY/OZhPUe6O1sW/Z1B8ezV0JdzfptqY31ewPuSUkE=;
 b=l4ozLiYYrSifbYKhopKXO7K4IH17l6u2B4lrpmiTbSHPpzIhiYGD3wYbbmL9CBN0XJ/w4KBF7
 zTih6R7QAjSCIZWi5AH27P6zrVmGXIb2ydT487hBjaUgRXcsEzK09sN
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240926_042139_580296_E25066A9 
X-CRM114-Status: UNSURE (   9.97  )
X-CRM114-Notice: Please train this message.
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/5] spi-gpio updates
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Our spio-gpio driver currently only supports 8bit word width. This
series updates the driver to support arbitrary word widths up to 32bit.
Also we get rid of the deprecated GPIO binding that the driver uses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Changes in v2:
- use ndelay to implement spi_delay()
- extract initial CS setting to extra patch
- add patch to convert to gpiod API
- update sandbox-libftdi-example.dtsi to use new GPIO binding
- Link to v1: https://lore.barebox.org/20240925-spi-gpio-v1-0-47f6285b3bf1@pengutronix.de

---
Sascha Hauer (5):
      spi: spi-gpio: actually delay in spidelay()
      spi: spi-gpio: support different word widths
      spi: spi-gpio: switch to new gpio binding
      spi: spi-gpio: deassert CS during setup
      spi: spi-gpio: switch to gpiod api

 arch/arm/dts/stm32mp151-mect1s.dts            |   6 +-
 arch/sandbox/dts/sandbox-libftdi-example.dtsi |   6 +-
 drivers/spi/gpio_spi.c                        | 181 +++++++++++++-------------
 include/spi/spi_gpio.h                        |  27 ----
 4 files changed, 95 insertions(+), 125 deletions(-)
---
base-commit: 419ea9350aa083d4a2806a70132129a49a5ecf95
change-id: 20240925-spi-gpio-4e65be1f7b90

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



