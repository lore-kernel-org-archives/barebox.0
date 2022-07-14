Delivery-date: Thu, 14 Jul 2022 09:29:08 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHZ-007JXt-32
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:29:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHW-0002Hp-RN
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:29:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=2iTEEoSK0BevZNPDAxhjHWf+DNAyqxMxyNp3c4GykBI=; b=O0oSh0sD3rv3HWyjrZuSz9uTdI
	D9Cb3A7rePpV+24hOHfqt0VQILfjlFrqDuizLUSimox4wgtnPBJ2EJWwfuo89O5+hwUax5K17dvgE
	I5e45rF46qQvlWM4ygFMEvRtv3CVUIYVuLbwlldGqOwHGcCn4ZyU+VNMu6cxBZJ2wBusSw4ue88J9
	jfWVJZItKM+z4D19zEqtWBixi8qKzbIETG2ZES2YzXpDvem+b6wGDIpQHCYYQhMrULBZD8x0HX5uS
	DnCGoKaLXbXbmad7hG5wbMW1iezitg4khUNcVta3ed2mT/rF1ozJL/vITdANUNFfdci394LGggeoI
	jUuhgxOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtGD-00Bofe-5E; Thu, 14 Jul 2022 07:27:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtFy-00BoVD-2h
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:27:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-0001gF-Si; Thu, 14 Jul 2022 09:27:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-000rqS-3L; Thu, 14 Jul 2022 09:27:25 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFr-00C1Vb-8p; Thu, 14 Jul 2022 09:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 09:27:10 +0200
Message-Id: <20220714072722.2863571-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_002730_301310_9F13E016 
X-CRM114-Status: GOOD (  12.59  )
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
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 00/12] imx-usb-loader support for i.MX8MP
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The motivation for this series is to add imx-usb-loader support for
i.MX8MP, but there are some by-catches as well.

We recently introduced imx8mm_load_and_start_image_via_tfa() to simplify
the board code. This series adds the same for i.MX8MP and integrates
USB support in that function, so that all new boards using it get USB
support for free.

Also there are several cleanups and fixes for imx-usb-loader.

Sascha

Sascha Hauer (11):
  ARM: i.MX8M: Add romapi support
  ARM: i.MX8MP: Add common code to load image and jump to it via TF-A
  ARM: i.MX8MP-EVK: Use imx8mp_load_and_start_image_via_tfa()
  imx-usb-loader: Factor out common code to function
  imx-usb-loader: rename mxs functions
  imx-usb-loader: Add i.MX8MP support
  imx-usb-loader: drop some casting
  imx-usb-loader: Fix first stage length
  imx-usb-loader: simplify read_memory()
  imx-usb-loader: verify correct image length
  imx-usb-loader: drop some unnecessary casting

Uwe Kleine-König (1):
  ARM: i.MX8MM: Prepare loading only piggydata in imx-usb-loader

 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c |  34 +----
 arch/arm/mach-imx/Makefile                |   2 +-
 arch/arm/mach-imx/atf.c                   |  68 ++++++++-
 arch/arm/mach-imx/include/mach/romapi.h   |  37 +++++
 arch/arm/mach-imx/romapi.c                |  44 ++++++
 include/asm-generic/sections.h            |   1 +
 include/soc/imx8m.h                       |   1 +
 scripts/imx/imx-usb-loader.c              | 167 +++++++++++-----------
 8 files changed, 233 insertions(+), 121 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/romapi.h
 create mode 100644 arch/arm/mach-imx/romapi.c

-- 
2.30.2



