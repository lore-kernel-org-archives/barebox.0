Delivery-date: Tue, 30 May 2023 16:17:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q40Ac-002sCO-S1
	for lore@lore.pengutronix.de; Tue, 30 May 2023 16:17:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q40Aa-0006Yy-J9
	for lore@pengutronix.de; Tue, 30 May 2023 16:17:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zCIbxwNQmW/6Qpr/6+0dk0JI51trmBxQrsuS3mYk6Pc=; b=JR4Uhh1kn3iHRvlshXo0Wm0v42
	5Jcjw/e9FCuIIMRCyTK1HYHztOb0bCzdPsBr2AMgI4ty89YP/DlSqqSLu2Mvdo+FV3tW59EzpkNG4
	nE7zlV8mLz9mGqJdu+QDL8xv4UZVpl7HGUZ63Gh/iTvvQOXkd2bChlTZqKAW5i4s7Mz6ILdfin8lh
	qmPK3/B3LPmb5VyviXdU6fk7i+0VCApX/zWoxMR6N9FMU8HsHLlbaqjrtQrSDgwhVRDPDi/9cuCbO
	Dk4kKHPAGKRF69c0QpoG+GJB0PnK4s2XyVSktUgJHTRYmaMWAYYHl0YVPsAzMufMmV07427lie2Q8
	BNEYJLQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q409F-00ECXc-26;
	Tue, 30 May 2023 14:16:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q409C-00ECWs-26
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 14:16:28 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1q409B-0006DZ-5N; Tue, 30 May 2023 16:16:25 +0200
Message-ID: <bb716d4e-f838-7188-1fa3-478a80b4be12@pengutronix.de>
Date: Tue, 30 May 2023 16:16:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Content-Language: en-US
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20230530111832.1916542-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230530111832.1916542-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_071626_685795_284D48D4 
X-CRM114-Status: GOOD (  15.91  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 00/10] ARM: Rockchip rk3588: eMMC/SD support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 30.05.23 13:18, Sascha Hauer wrote:
> This series brings up eMMC/SD on Rockchip rk3588 SoCs. There were
> multiple bugs that prevented them from working.
> 
> Additionally the CPU clock is now configured to 816MHz. This is not
> particularly fast, but considerably faster than the original 24MHz.

Which DRAM setup blob have you been using? Which BL31? What version
of these? Can this be added to the documentation?

> 
> Sascha Hauer (10):
>   mci: rockchip-dwcmshc-sdhci: Add rk3588
>   firmware: arm_scmi: fix async check
>   clk: rockchip: add missing pll_rk3588_core handling
>   clk: clk-divider: fix CLK_DIVIDER_HIWORD_MASK flag
>   pinctrl: rockchip: fix bias settings
>   ARM: dts: rk3588s: Set CPU clock to 816MHz
>   mci: rockchip-dwcmshc-sdhci: enable DLL only for clock >= 52MHz
>   ARM: rockchip_v8_defconfig: Enable SCMI support
>   ARM: multi_v8_defconfig: Enable SCMI support
>   ARM: rockchip rock 5b: drop no longer valid comments
> 
>  arch/arm/configs/multi_v8_defconfig    |  3 ++
>  arch/arm/configs/rockchip_v8_defconfig |  3 ++
>  arch/arm/dts/rk3588-rock-5b.dts        |  2 -
>  arch/arm/dts/rk3588s.dtsi              |  5 ++-
>  drivers/clk/clk-divider.c              |  2 +-
>  drivers/clk/rockchip/clk-pll.c         |  3 +-
>  drivers/firmware/arm_scmi/clock.c      |  2 +-
>  drivers/mci/rockchip-dwcmshc-sdhci.c   | 54 ++++++++++++++++++++------
>  drivers/pinctrl/pinctrl-rockchip.c     | 31 +++++++++++++--
>  9 files changed, 83 insertions(+), 22 deletions(-)
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



