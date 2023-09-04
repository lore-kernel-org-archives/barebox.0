Delivery-date: Mon, 04 Sep 2023 12:41:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd71c-003biQ-I1
	for lore@lore.pengutronix.de; Mon, 04 Sep 2023 12:41:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qd71a-0002qQ-Ez
	for lore@pengutronix.de; Mon, 04 Sep 2023 12:41:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=rHn6S3AhNU/wPypKoIXK0WwvDOkrWdIdBS5mtqgaKNk=; b=dTlGkcYqLTQWpz1ZyxNiIKTaus
	zIASxA006JGoZ3ESjVqvOUE5CuNXUDO2RACN8zrIMWTg0lCZ9Crs7uHXQIKimJqKv1htwZVYhfP+a
	lt47BN2p76lJFvknZUGGKG3NhyKLqABwrPvgeNxyu+HunUFuUVkxsoK4u7jvqkIX1QBnN9jxhzG8q
	wtvG3roC9/S+Qm/dTbXmg+jpZav+tipjC6t43HoGccr0MWuCxZ+PehSoWH2DdOOPH7icMZHVjK5+X
	ehzly5gLMcL+dTm+EV+lx8fUd/62dAWImQiuqnyqa84YlZFKe9cuV0WdKpwZszZ/3l68gOQ70C836
	+o+tnZgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qd70E-003wMv-32;
	Mon, 04 Sep 2023 10:40:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qd70B-003wMA-2R
	for barebox@lists.infradead.org;
	Mon, 04 Sep 2023 10:40:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd709-0000Vs-Aq; Mon, 04 Sep 2023 12:40:13 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qd708-003r7C-OB; Mon, 04 Sep 2023 12:40:12 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qd708-000zmv-2f; Mon, 04 Sep 2023 12:40:12 +0200
Date: Mon, 4 Sep 2023 12:40:12 +0200
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, afa@pengutronix.de, kernel@pengutronix.de
Message-ID: <20230904104012.GA235829@pengutronix.de>
References: <20230809-phytec-som-imx8mm-v4-0-b9d4759582d8@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230809-phytec-som-imx8mm-v4-0-b9d4759582d8@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230904_034015_797256_0A25F9A7 
X-CRM114-Status: GOOD (  26.77  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4 0/3] ARM: i.MX8MM: add Phytec i.MX8 SoM support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Aug 09, 2023 at 09:26:03AM +0200, Marc Kleine-Budde wrote:
> This series adds support for the Phytec i.MX8 SoM. It comes with a
> minimal i2c EEPROM read helper for the PBL and imports + adopts the
> Phytec SOM detection from u-boot. The Phytec SOM detection reads and
> parses the EEPROM on the SOM to figure out the size of the populated
> RAM.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
> Changes in v4:
> - rebased to current next
> - actually the same as v3, but send to barebox mailing list

Applied, thanks

Sascha

> 
> Changes in v3:
> - phyboard_polis_rdk_ddr_init():
>   - introduce PHYTEC_IMX8M_DDR_* for different RAM sizes
>   - get rid of CONFIG_PHYCORE_IMX8MM_RAM_SIZE_* and build always all
>     images
>   - clean up printing of error messages
> - lpddr4-timing: adopt to coding style
> - Link to v2: https://lore.pengutronix.de/20230606-phytec-som-imx8mm-v2-0-8c9368c8b4f9@pengutronix.de
> 
> Changes in v2:
> - make several pointers to "struct phytec_eeprom" const
> - phytec_print_som_info(): use printf() instead of pr_cont()
> - let phytec_imx8m_detect() return int instead of u8
> - fix typo in phytec_get_imx8m_spi()'s comment
> - rename struct phytec_api0_data::pad -> __pad
> - move include/phytec-som-* to include/boards/phytec
> - Link to v1: https://lore.barebox.org/20230606-phytec-som-imx8mm-v1-0-b9c2bf70b766@pengutronix.de
> 
> ---
> Marc Kleine-Budde (3):
>       i2c: add <pbl/eeprom.h> for PBL use
>       common: board: phytec: import SoM detection for imx8m based SoM from u-boot
>       ARM: i.MX8MM: add Phytec i.MX8MM SoM support
> 
>  arch/arm/boards/Makefile                           |    1 +
>  arch/arm/boards/phytec-som-imx8mm/Makefile         |    4 +
>  arch/arm/boards/phytec-som-imx8mm/board.c          |   40 +
>  .../flash-header-imx8mm-phyboard-polis-rdk.imxcfg  |    7 +
>  arch/arm/boards/phytec-som-imx8mm/lowlevel.c       |  138 ++
>  arch/arm/boards/phytec-som-imx8mm/lowlevel.h       |    8 +
>  arch/arm/boards/phytec-som-imx8mm/lpddr4-timing.c  | 1850 ++++++++++++++++++++
>  arch/arm/dts/Makefile                              |    1 +
>  arch/arm/dts/imx8mm-phyboard-polis-rdk.dts         |  131 ++
>  arch/arm/mach-imx/Kconfig                          |   13 +
>  common/boards/Kconfig                              |    7 +
>  common/boards/Makefile                             |    1 +
>  common/boards/phytec/Makefile                      |    5 +
>  common/boards/phytec/phytec-som-detection.c        |  209 +++
>  common/boards/phytec/phytec-som-imx8m-detection.c  |  151 ++
>  images/Makefile.imx                                |   20 +
>  include/boards/phytec/phytec-som-detection.h       |   69 +
>  include/boards/phytec/phytec-som-imx8m-detection.h |   26 +
>  include/pbl/eeprom.h                               |   34 +
>  19 files changed, 2715 insertions(+)
> ---
> base-commit: 824533a0027a626b43b5a7dacab4cf875cc019f4
> change-id: 20230606-phytec-som-imx8mm-2c90276fb58c
> 
> Best regards,
> -- 
> Marc Kleine-Budde <mkl@pengutronix.de>
> 
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


