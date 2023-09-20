Delivery-date: Wed, 20 Sep 2023 13:45:37 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiveE-004afV-7B
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 13:45:37 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiveB-00007Q-PL
	for lore@pengutronix.de; Wed, 20 Sep 2023 13:45:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Pn23QnHAxT3DiKZNLC+eZKQ2aWlEQUmhTq8q9Az/kpU=; b=rf4k4yoGpxi6cveaqGEdNftZkr
	Eg5ZJzKfKqH0fi4I8HvFQL8wyDeP7XFIn3DK5UPYz4vpQ3tcnTDNHAUjQtSeJAvunSwEiWKHONCDn
	4Fhiy5HfPFZ/8BKFz/HHaKMWbAjf9WEhLpxb+zdlVkDzU2pWTzbRx5JqZPYPZzQC9XuOrXzUjB+Td
	ENwXhnUyJP7U5PbBbU7qLyQdJEVhcoM0M+q/sm7iFHbBEioORRJ6HeNiK7DZmXCAveoJRbNazt1Hd
	EHGONQf59WdynluCBqNyLG5VSdfUXU3SEFLpJEuLBm+RPPbEwgb0q8UYRU+3AACoIculfcPLkgLAQ
	8AtGsznw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qivd8-002uAv-1v;
	Wed, 20 Sep 2023 11:44:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qivd5-002u9o-1y
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 11:44:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qivd4-0008JY-5z; Wed, 20 Sep 2023 13:44:26 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qivd3-007fyb-Pj; Wed, 20 Sep 2023 13:44:25 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qivd3-00AAtN-NQ; Wed, 20 Sep 2023 13:44:25 +0200
Date: Wed, 20 Sep 2023 13:44:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230920114425.GT637806@pengutronix.de>
References: <20230920112932.2790725-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920112932.2790725-1-s.hauer@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_044427_650767_3E2C6B3C 
X-CRM114-Status: GOOD (  22.84  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: phycore-stm32mp15: Use upstream dts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 20, 2023 at 01:29:32PM +0200, Sascha Hauer wrote:
> The phycore-stm32mp15 board has long been mainlined. Switch the
> board to use the upstream dts files.
> 
> This at least has the effect that now the PMIC is probed as our
> downstream dts hasn't enabled the i2c4 node.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../dts/stm32mp157c-phycore-stm32mp1-3.dts    |  16 +-
>  ...stm32mp157c-phycore-stm32mp15-pinctrl.dtsi |  92 ------
>  .../stm32mp157c-phycore-stm32mp15-som.dtsi    | 271 ------------------
>  3 files changed, 2 insertions(+), 377 deletions(-)
>  delete mode 100644 arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
>  delete mode 100644 arch/arm/dts/stm32mp157c-phycore-stm32mp15-som.dtsi
> 
> diff --git a/arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi b/arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
> deleted file mode 100644
> index aa41006c23..0000000000
> --- a/arch/arm/dts/stm32mp157c-phycore-stm32mp15-pinctrl.dtsi
> +++ /dev/null
> @@ -1,92 +0,0 @@
> -// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-3-Clause)
> -/*
> - * Copyright (C) Phytec GmbH 2019-2020 - All Rights Reserved
> - * Author: Dom VOVARD <dom.vovard@linrt.com>.
> - */
> -#include <arm/st/stm32mp15-pinctrl.dtsi>
> -
> -&ethernet0_rgmii_pins_a {
> -	pins1 {
> -		pinmux = <STM32_PINMUX('G', 4, AF11)>,	/* ETH_RGMII_GTX_CLK */
> -			 <STM32_PINMUX('G', 13, AF11)>, /* ETH_RGMII_TXD0 */
> -			 <STM32_PINMUX('G', 14, AF11)>, /* ETH_RGMII_TXD1 */
> -			 <STM32_PINMUX('C', 2, AF11)>,	/* ETH_RGMII_TXD2 */
> -			 <STM32_PINMUX('E', 2, AF11)>,	/* ETH_RGMII_TXD3 */
> -			 <STM32_PINMUX('B', 11, AF11)>, /* ETH_RGMII_TX_CTL */
> -			 <STM32_PINMUX('A', 2, AF11)>,	/* ETH_MDIO */
> -			 <STM32_PINMUX('C', 1, AF11)>;	/* ETH_MDC */
> -		bias-disable;
> -		drive-push-pull;
> -		slew-rate = <2>;
> -	};

This is correct, but upstream dts currently uses:

	<STM32_PINMUX('G', 5, AF11)>, /* ETH_RGMII_CLK125 */

instead of:

	<STM32_PINMUX('G', 4, AF11)>,  /* ETH_RGMII_GTX_CLK */

I'll fix that up here and send a patch for the Kernel to get this fixed
upstream.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


