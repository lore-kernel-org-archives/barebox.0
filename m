Delivery-date: Wed, 02 Feb 2022 23:36:26 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFOEk-0049Kl-Jd
	for lore@lore.pengutronix.de; Wed, 02 Feb 2022 23:36:26 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFOEj-0005Dp-D9
	for lore@pengutronix.de; Wed, 02 Feb 2022 23:36:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8J1yRuPbCHtmjszHhprqx9rgJY1oUvEbfnCrECWCS+w=; b=ETcgT4O/Mh7bE0
	DxdEdzQ/J3n+HO9TQnUJAGsSCd/SQMzH06+7idI4cSp09kCYUJv8SQzt5Jl4vjLG1G2/3bqQ6YffD
	PIRo+yC7dedT5ZY68hF/NaIfIK8c3GGqPqhZyMl0ElGL/M1p2Ks28yRrw9uVF0CCIIhtc3CsKbyz0
	XpFgB27nTTorWgTxqQ9i7nuahaSc+TlOVCgxyXJ9yX/PODjXI/zXD3UZPSspPDSRaIgvGlWqrKN9W
	Jzc1Dx/ApGkA3Bt5Y2Ytgg5HKEL4hot457oubBSSnE8+5ydCZhN8Cj5Ph4Bp+kqXAsdjf1C80deWT
	LTIUOVn+mRX5IyppyzWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFOBE-00H0rF-6m; Wed, 02 Feb 2022 22:32:48 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFOB6-00H0pb-SC
 for barebox@lists.infradead.org; Wed, 02 Feb 2022 22:32:42 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1nFO8y-0004Vs-Je
 for barebox@lists.infradead.org; Wed, 02 Feb 2022 23:30:28 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>) id 1nFO8y-001QyF-4I
 for barebox@lists.infradead.org; Wed, 02 Feb 2022 23:30:28 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed,  2 Feb 2022 23:30:19 +0100
Message-Id: <20220202223023.341817-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_143240_942468_5ECA79B1 
X-CRM114-Status: GOOD (  10.93  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 0/4] video: add STM32F429-DISCO video pipeline support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The STM32F429-DISCO has the LCD-TFT display controller connected to a
parallel panel with MIPI-DBI over SPI for panel control.

The LTDC driver was originally written for the STM32MP1, but had some
issues last time I tested it a few years ago. I debugged it into
submission on the STM32F429 now though, so it might just work on the MP1
as well.

v2 -> v3:
  - fix copy-paste left-over

v1 -> v2:
  - removed stray Kconfig hunk for panel support to appropriate patch
  (Sascha)
  - fixed Kconfig help text for mipi_dbi helper

Ahmad Fatoum (4):
  gpiolib: implement gpiod_set_value
  video: add driver for STM32 LCD-TFT Display Controller
  video: add MIPI DBI Type C Option 3 support
  video: add Ilitek ILI9341 panel support

 commands/Kconfig                     |  15 +
 commands/Makefile                    |   1 +
 drivers/video/Kconfig                |  22 ++
 drivers/video/Makefile               |   3 +
 drivers/video/mipi_dbi.c             | 467 +++++++++++++++++++++++
 drivers/video/panel-ilitek-ili9341.c | 541 +++++++++++++++++++++++++++
 drivers/video/stm32_ltdc.c           | 336 +++++++++++++++++
 drivers/video/stm32_ltdc.h           | 130 +++++++
 include/gpiod.h                      |   8 +-
 include/spi/spi.h                    |  20 +
 10 files changed, 1542 insertions(+), 1 deletion(-)
 create mode 100644 drivers/video/mipi_dbi.c
 create mode 100644 drivers/video/panel-ilitek-ili9341.c
 create mode 100644 drivers/video/stm32_ltdc.c
 create mode 100644 drivers/video/stm32_ltdc.h

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

