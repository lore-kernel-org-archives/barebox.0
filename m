Delivery-date: Mon, 11 Aug 2025 08:44:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGh-009FfW-13
	for lore@lore.pengutronix.de;
	Mon, 11 Aug 2025 08:44:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ulMGg-0002Ul-NG
	for lore@pengutronix.de; Mon, 11 Aug 2025 08:44:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-ID:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=jZibYeHV4QLUAgZUDUTnup+PtqG++AW7vRnoepQTpB0=; b=mMVuBv40ec1Q4K
	GFAg2GugC4Yaq4vkhPlqye+H/9XYWSSx/FWP0EFxGZofB2JuFjAWuaXNIuHmzwRlK1hbdp472BTyz
	aNISI62lLDNL+RNDEF2NlYxJZbgzL446fbWCXQ3zjZMzZCRGoos0H+4VwZkDynaUMi6x3m3GIqc5w
	n7rPIfE87FHZ8Ni/EHgBJnaZYwURguYTsvVk2VNyILrgsZVUPyZ3RdYWBP4lWdlivRE32yPbtIN7A
	f532IM7oYiPG2b7U/PWU43uJUQIBV0cnjQG1+NVDPUV5hwcnBVBgVu080MDF+B2/CJ+0pALvyfrqA
	HDIlM1brMDRa9SuOcmGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMFz-00000006chi-0EEd;
	Mon, 11 Aug 2025 06:43:43 +0000
Received: from smtp16.bhosted.nl ([2a02:9e0:8000::27])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ulMD8-00000006cT0-0ARI
	for barebox@lists.infradead.org;
	Mon, 11 Aug 2025 06:40:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=protonic.nl; s=202111;
	h=content-transfer-encoding:mime-version:message-id:date:subject:cc:to:from:
	 from;
	bh=jZibYeHV4QLUAgZUDUTnup+PtqG++AW7vRnoepQTpB0=;
	b=Q8K6AdJPxZu9U1dwEDZ60hJlWimAQ2tarnBpOusZkqv9jSo057Z9dXEEm5UFOgGuFjruo5/4Tf4+3
	 YV245WkveTYk0xjsZ8xYEkyWYRihkJWlET3GUjYoSybfcpQqIm807JrA45orLhpl6MIAp3fCjD5oW0
	 XQxqP1BjSjiZ5FDuwvg+WdkcGdptvvutcLNIDUaqDKaIiIBAl+imwojOUxvhuqi/D0O/Te8rIU00t8
	 dCmiV6rvy6N7RETm9HaVWjd53l3kmU0N98w0lYH8/UvDC19iaMygD1Ok6lF3+A3ecLDcQcvj6ceiU/
	 twq0L/ieL7eqmAocnNGArJEv4Yo79zw==
X-MSG-ID: 1929978e-767e-11f0-855f-005056817704
From: David Jander <david@protonic.nl>
To: barebox@lists.infradead.org
Date: Mon, 11 Aug 2025 08:40:18 +0200
Message-ID: <20250811064026.753776-1-david@protonic.nl>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250810_234046_489869_4EB02E7E 
X-CRM114-Status: UNSURE (   8.97  )
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
Cc: David Jander <david@protonic.nl>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/8] Add Rockchip RK3576 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This set of patches adds basic support for Rockchip RK3576 SoCs.
Peripheral support is added for aiodev (SARADC) and GPIO.

David Jander (8):
  clk: rockchip: clk-pll.c: Fix macro name confusion
  clk: rockchip: Introduce rockchip_grf_type enum from kernel driver
  ARM: Initial support for Rockchip RK3576
  arm: dts: Add barebox specific RK3576.dtsi
  aiodev: rockchip_saradc.c: Add support for RK3576
  gpio: gpio-rockchip.c: Add support for GPIO_TYPE_V2_2
  arm: dts: rk3576.dtsi: Add gpio aliases
  phy: phy-rockchip-inno-usb2.c: Fix crash if phyclk isn't found

 arch/arm/dts/rk3576.dtsi                      |   21 +
 arch/arm/mach-rockchip/Kconfig                |    4 +
 arch/arm/mach-rockchip/Makefile               |    1 +
 arch/arm/mach-rockchip/atf.c                  |   38 +
 arch/arm/mach-rockchip/dmc.c                  |   89 +-
 arch/arm/mach-rockchip/rk3576.c               |   20 +
 arch/arm/mach-rockchip/rockchip.c             |    4 +
 common/Kconfig.debug_ll                       |    9 +
 drivers/aiodev/Kconfig                        |    2 +-
 drivers/aiodev/rockchip_saradc.c              |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-pll.c                |    3 +-
 drivers/clk/rockchip/clk-rk3288.c             |    2 +-
 drivers/clk/rockchip/clk-rk3568.c             |    2 +-
 drivers/clk/rockchip/clk-rk3576.c             | 1859 +++++++++++++++++
 drivers/clk/rockchip/clk.c                    |   13 +-
 drivers/clk/rockchip/clk.h                    |   84 +-
 drivers/clk/rockchip/rst-rk3576.c             |  650 ++++++
 drivers/gpio/gpio-rockchip.c                  |    3 +-
 drivers/nvmem/rockchip-otp.c                  |   11 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c |    2 +
 drivers/pinctrl/pinctrl-rockchip.c            |  202 ++
 drivers/pinctrl/pinctrl-rockchip.h            |    1 +
 firmware/Makefile                             |    2 +
 include/mach/rockchip/atf.h                   |    6 +
 include/mach/rockchip/debug_ll.h              |    6 +
 include/mach/rockchip/dmc.h                   |    1 +
 include/mach/rockchip/rk3576-regs.h           |   23 +
 include/mach/rockchip/rockchip.h              |   10 +
 29 files changed, 3048 insertions(+), 28 deletions(-)
 create mode 100644 arch/arm/dts/rk3576.dtsi
 create mode 100644 arch/arm/mach-rockchip/rk3576.c
 create mode 100644 drivers/clk/rockchip/clk-rk3576.c
 create mode 100644 drivers/clk/rockchip/rst-rk3576.c
 create mode 100644 include/mach/rockchip/rk3576-regs.h

-- 
2.47.2



