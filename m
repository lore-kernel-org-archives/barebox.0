Delivery-date: Tue, 18 Oct 2022 11:15:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okigs-00CUAX-7O
	for lore@lore.pengutronix.de; Tue, 18 Oct 2022 11:15:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1okigq-0007BL-9A
	for lore@pengutronix.de; Tue, 18 Oct 2022 11:15:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xQUyKVyHiXb6ldXNv+q8UfPxGKWg3aTKkW4T7pFoZ58=; b=CWXRRokGtZsPDGo/qQSzi62kAJ
	IgdF8Spk0QuQ2JAJTkOBYbkk+TpHPw2zCNU1rHJjssV0MXPC3UH3SH0ngewp6wzGO2NY8+3XU73P1
	CeSl2QOkVhy+snDUcWi2KH2oublsINRxj6sGsISzDho+A7WCAL9PQUO8I0GO/YC0v26lqHWju0bIx
	VK+ksJGt6ql9wL1TCmNr/kQdlx21mNySc2bDdoOiLkZRLe9NPSBJtPsm4bBaxAcc93+upVUbV5UdK
	cjUkn1e2qfmCqluGZwq6J0Ed2CXAKo3mXuL834V961JhaHhD3+aoxEdJa8OQga1fUJfbcWj1/67U4
	7Oyseeow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okifd-004nbH-8G; Tue, 18 Oct 2022 09:13:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1okifY-004nZe-Q9
	for barebox@lists.infradead.org; Tue, 18 Oct 2022 09:13:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okifX-0006tY-4p; Tue, 18 Oct 2022 11:13:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1okifW-0008Lt-UJ; Tue, 18 Oct 2022 11:13:50 +0200
Date: Tue, 18 Oct 2022 11:13:50 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221018091350.GR6702@pengutronix.de>
References: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221017071000.1458292-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221018_021352_868139_8CB17844 
X-CRM114-Status: GOOD (  20.13  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/8] ARM: i.MX7: add serial download reboot mode
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 17, 2022 at 09:09:52AM +0200, Ahmad Fatoum wrote:
> BootROM can be forced into USB recovery on i.MX7 just like on the
> i.MX8M, with the difference that reset is a bit more involved,
> because warm resets via watchdogs are broken on this SoC.
> 
> We do a bit of cleanup and then tackle that via a syscon-reboot
> device describing the Cortex-A7 CPU0 reset.
> 
> Ahmad Fatoum (8):
>   restart: make restart.h header self-contained
>   restart: do restart-priority OF parsing in restart_handler_register
>   restart: add reset -w for warm bootrom reset
>   watchdog: imxwd: don't register broken imxwd-warm for i.MX7
>   watchdog: imxwd: set imxwd-warm as reboot mode default handler
>   Documentations: devicetree: bindings: document watchdog-priority
>   ARM: i.MX7: describe USB serial download boot mode
>   ARM: stm32mp: mark iwdg2 with barebox,restart-warm-bootrom

Applied, thanks

Sascha

> 
>  Documentation/boards/imx.rst                  |  2 +-
>  Documentation/boards/stm32mp.rst              |  6 ++-
>  .../devicetree/bindings/power/restart.rst     | 15 ++++++++
>  .../devicetree/bindings/watchdog/watchdog.rst | 10 +++++
>  Documentation/user/reboot-mode.rst            |  7 +++-
>  arch/arm/configs/imx_v7_defconfig             |  2 +
>  arch/arm/dts/imx7.dtsi                        | 37 +++++++++++++++++++
>  arch/arm/dts/stm32mp131.dtsi                  |  4 ++
>  arch/arm/dts/stm32mp151.dtsi                  |  4 ++
>  commands/reset.c                              | 16 +++++---
>  common/restart.c                              | 37 +++++++++----------
>  drivers/clk/clk-stm32mp1.c                    |  2 +-
>  drivers/mfd/da9053.c                          |  2 +-
>  drivers/mfd/da9063.c                          |  2 +-
>  drivers/mfd/rn5t568.c                         |  2 +-
>  drivers/power/reset/stm32-reboot.c            |  6 ++-
>  drivers/power/reset/syscon-reboot.c           |  1 +
>  drivers/watchdog/imxwd.c                      | 31 ++++++++++++----
>  include/restart.h                             | 15 ++++++--
>  include/soc/stm32/reboot.h                    |  6 ++-
>  20 files changed, 161 insertions(+), 46 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/power/restart.rst
>  create mode 100644 Documentation/devicetree/bindings/watchdog/watchdog.rst
>  create mode 100644 arch/arm/dts/imx7.dtsi
> 
> -- 
> 2.30.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


