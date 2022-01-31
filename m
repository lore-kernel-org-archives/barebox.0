Delivery-date: Mon, 31 Jan 2022 09:05:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERgN-001U4t-Fx
	for lore@lore.pengutronix.de; Mon, 31 Jan 2022 09:05:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nERgM-0007Bw-3v
	for lore@pengutronix.de; Mon, 31 Jan 2022 09:05:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9iNERmWyjD4ucDeJy/mBu0aDmdtgSvS0NWXA+hyg28c=; b=jI6QpbNYO9RcK0
	e9ixiSNefG5AK59SEzESj518o1GLuSjNBFh8SRFRS6iaM0Jyvqfng9APfyBquWGDbJ7fnf78hDfHc
	k5XlDINJ+GK4OUcN88DDVlnzNPKB8Aan4f0XGV3KTGjGr8KTiFjHae/Db7soXH1VGfvDUJWPbpMPT
	L4RO+OXlIdch4S1TaE1Ihiqfny5pZ0gsf7XJ011SIbt0Bhw/7Bg1mhVW6CuGZnVkvHskM2DG1hdYI
	mfxowFXd9bPP//RMnsFk2T2nKcQbvre6G4VRWGmXExrHqPPPbsNl8ZG1fuqAIxM9eslfAwx2iex5Q
	Pg/sqZWtInX+RXWbG/Ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nERec-008OML-BE; Mon, 31 Jan 2022 08:03:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nEReV-008OKI-9J
 for barebox@lists.infradead.org; Mon, 31 Jan 2022 08:03:08 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nEReU-0006ln-0v; Mon, 31 Jan 2022 09:03:06 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nEReT-007riG-FW; Mon, 31 Jan 2022 09:03:05 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 31 Jan 2022 09:02:58 +0100
Message-Id: <20220131080302.1873443-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220131_000307_359541_C64A7EED 
X-CRM114-Status: GOOD (  10.94  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/4] video: add STM32F429-DISCO video pipeline support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The STM32F429-DISCO has the LCD-TFT display controller connected to a
parallel panel with MIPI-DBI over SPI for panel control.

The LTDC driver was originally written for the STM32MP1, but had some
issues last time I tested it a few years ago. I debugged it into
submission on the STM32F429 now though, so it might just work on the MP1
as well.

Ahmad Fatoum (4):
  gpiolib: implement gpiod_set_value
  video: add driver for STM32 LCD-TFT Display Controller
  video: add MIPI DBI Type C Option 3 support
  video: add Ilitek ILI9341 panel support

 commands/Kconfig                     |  19 +
 commands/Makefile                    |   1 +
 commands/mipi_dbi.c                  | 104 +++++
 drivers/video/Kconfig                |  22 ++
 drivers/video/Makefile               |   3 +
 drivers/video/mipi_dbi.c             | 467 +++++++++++++++++++++++
 drivers/video/panel-ilitek-ili9341.c | 541 +++++++++++++++++++++++++++
 drivers/video/stm32_ltdc.c           | 336 +++++++++++++++++
 drivers/video/stm32_ltdc.h           | 130 +++++++
 include/gpiod.h                      |   8 +-
 include/spi/spi.h                    |  20 +
 include/video/mipi_dbi.h             | 105 ++++++
 include/video/mipi_display.h         | 150 ++++++++
 13 files changed, 1905 insertions(+), 1 deletion(-)
 create mode 100644 commands/mipi_dbi.c
 create mode 100644 drivers/video/mipi_dbi.c
 create mode 100644 drivers/video/panel-ilitek-ili9341.c
 create mode 100644 drivers/video/stm32_ltdc.c
 create mode 100644 drivers/video/stm32_ltdc.h
 create mode 100644 include/video/mipi_dbi.h
 create mode 100644 include/video/mipi_display.h

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

