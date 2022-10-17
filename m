Delivery-date: Mon, 17 Oct 2022 09:11:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHa-00BNhI-CF
	for lore@lore.pengutronix.de; Mon, 17 Oct 2022 09:11:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okKHY-0005pL-Bk
	for lore@pengutronix.de; Mon, 17 Oct 2022 09:11:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=U7Tfl88eiemxq/9j8mCAJF642LMWASXPqgywSbwwgns=; b=CQfA37LqE7KDrV4hPmftomiAwS
	zFvCuvcXzyKj5RXKeWCj3dUDjwTBxfVIwRff38ZlgRb2hnYRIODGrb5UnBMibaJqZb+suGhiO8dGU
	M0VV95jk/avAkvgAPmM0IeSxLiT8pDG3wmRrjJnSWW4yLEMIl9lRA2LZHleDQukDVfNOnueWJpBba
	lnwy+SUMROYlmCY+5A7MqLPHsLMDjnSrIZ7y0yOm3MrY7KLvrWlHXKqyYHLIy2GzdM0sa43VVi3rR
	D8H4yFprqdaJNwZLN5T0HInTjnNt2pe6N/YOnNPcLa9TOUdiOEYk6EceGz4oLjE550AjKeTu33uly
	1w+38f9A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGH-008McW-VP; Mon, 17 Oct 2022 07:10:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okKGD-008MZi-1T
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 07:10:06 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGB-0004xp-88
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 09:10:03 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKGA-0021UM-G7
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 09:10:02 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1okKG8-0067OY-OD
	for barebox@lists.infradead.org; Mon, 17 Oct 2022 09:10:00 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Mon, 17 Oct 2022 09:09:52 +0200
Message-Id: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221017_001005_167573_7E85587F 
X-CRM114-Status: GOOD (  10.35  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/8] ARM: i.MX7: add serial download reboot mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

BootROM can be forced into USB recovery on i.MX7 just like on the
i.MX8M, with the difference that reset is a bit more involved,
because warm resets via watchdogs are broken on this SoC.

We do a bit of cleanup and then tackle that via a syscon-reboot
device describing the Cortex-A7 CPU0 reset.

Ahmad Fatoum (8):
  restart: make restart.h header self-contained
  restart: do restart-priority OF parsing in restart_handler_register
  restart: add reset -w for warm bootrom reset
  watchdog: imxwd: don't register broken imxwd-warm for i.MX7
  watchdog: imxwd: set imxwd-warm as reboot mode default handler
  Documentations: devicetree: bindings: document watchdog-priority
  ARM: i.MX7: describe USB serial download boot mode
  ARM: stm32mp: mark iwdg2 with barebox,restart-warm-bootrom

 Documentation/boards/imx.rst                  |  2 +-
 Documentation/boards/stm32mp.rst              |  6 ++-
 .../devicetree/bindings/power/restart.rst     | 15 ++++++++
 .../devicetree/bindings/watchdog/watchdog.rst | 10 +++++
 Documentation/user/reboot-mode.rst            |  7 +++-
 arch/arm/configs/imx_v7_defconfig             |  2 +
 arch/arm/dts/imx7.dtsi                        | 37 +++++++++++++++++++
 arch/arm/dts/stm32mp131.dtsi                  |  4 ++
 arch/arm/dts/stm32mp151.dtsi                  |  4 ++
 commands/reset.c                              | 16 +++++---
 common/restart.c                              | 37 +++++++++----------
 drivers/clk/clk-stm32mp1.c                    |  2 +-
 drivers/mfd/da9053.c                          |  2 +-
 drivers/mfd/da9063.c                          |  2 +-
 drivers/mfd/rn5t568.c                         |  2 +-
 drivers/power/reset/stm32-reboot.c            |  6 ++-
 drivers/power/reset/syscon-reboot.c           |  1 +
 drivers/watchdog/imxwd.c                      | 31 ++++++++++++----
 include/restart.h                             | 15 ++++++--
 include/soc/stm32/reboot.h                    |  6 ++-
 20 files changed, 161 insertions(+), 46 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/power/restart.rst
 create mode 100644 Documentation/devicetree/bindings/watchdog/watchdog.rst
 create mode 100644 arch/arm/dts/imx7.dtsi

-- 
2.30.2



