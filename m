Delivery-date: Thu, 01 Jun 2023 10:18:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dVy-005X0w-Fe
	for lore@lore.pengutronix.de; Thu, 01 Jun 2023 10:18:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4dVv-0001kN-N9
	for lore@pengutronix.de; Thu, 01 Jun 2023 10:18:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=tqjvmIYENEQQCxbo+ktx4ECepfQCcfW3vZtHGbpq0iI=; b=cT4aCUu/PzTLBJxmM4IsYPHbC6
	CgAS5HkVDGcLSYnOEntTO9OpKxY6Pm6zl+1nUlPY7u+kijZ7oEZxWyxI7dhzJWXJ030MVgYqhB/hO
	eysBwWswolJt4MNMk3Xs9fOb2N44MIIaW1t93kuFawbeFZtZcJ3OFjHwVvpHhoXMSTUpYsq8KUV6s
	nTcgxIzm1Fi3nnsG3ti7Rx5nKB1zZtCHRuZKp/yftAiTrPPgLwFgiLUD/tb5HpCnx6WotzVnWTETm
	KDURCJBfcWVb/Av1ottrvfSN9c1saTxkLcdhT5v8Czoph6VJXR8Wk0b2WNpG9hCdLCivKQmgZrAo9
	fIoYNzYg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dUn-002W2a-1D;
	Thu, 01 Jun 2023 08:17:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4dUk-002W1t-0p
	for barebox@lists.infradead.org;
	Thu, 01 Jun 2023 08:17:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4dUi-0001e4-RO; Thu, 01 Jun 2023 10:17:16 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q4dUi-0004Oc-BK; Thu, 01 Jun 2023 10:17:16 +0200
Date: Thu, 1 Jun 2023 10:17:16 +0200
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org
Message-ID: <20230601081716.GK18491@pengutronix.de>
References: <20230531143500.165837-1-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531143500.165837-1-yegorslists@googlemail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230601_011718_310849_8AFEFFB0 
X-CRM114-Status: GOOD (  22.45  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] net: phy: add driver for MotorComm PHY
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Yegor,

On Wed, May 31, 2023 at 04:35:00PM +0200, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 

Could you add a word here on which kernel version this is based on? It
will help synchronizing with newer kernels later.

> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  drivers/net/phy/Kconfig     |   5 ++
>  drivers/net/phy/Makefile    |   1 +
>  drivers/net/phy/motorcomm.c | 128 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 134 insertions(+)
>  create mode 100644 drivers/net/phy/motorcomm.c
> 

[...]

> +static int yt8511_config_init(struct phy_device *phydev)
> +{
> +	int oldpage, ret = 0;
> +	unsigned int ge, fe;
> +
> +	oldpage = phy_select_page(phydev, YT8511_EXT_CLK_GATE);
> +	if (oldpage < 0)
> +		goto err_restore_page;
> +
> +	/* set rgmii delay mode */
> +	switch (phydev->interface) {
> +	case PHY_INTERFACE_MODE_RGMII:
> +		ge = YT8511_DELAY_GE_TX_DIS;
> +		fe = YT8511_DELAY_FE_TX_DIS;
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII_RXID:
> +		ge = YT8511_DELAY_RX | YT8511_DELAY_GE_TX_DIS;
> +		fe = YT8511_DELAY_FE_TX_DIS;
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII_TXID:
> +		ge = YT8511_DELAY_GE_TX_EN;
> +		fe = YT8511_DELAY_FE_TX_EN;
> +		break;
> +	case PHY_INTERFACE_MODE_RGMII_ID:
> +		ge = YT8511_DELAY_RX | YT8511_DELAY_GE_TX_EN;
> +		fe = YT8511_DELAY_FE_TX_EN;
> +		break;
> +	default: /* do not support other modes */
> +		ret = -EOPNOTSUPP;
> +		goto err_restore_page;
> +	}
> +
> +	ret = phy_modify(phydev, YT8511_PAGE, (YT8511_DELAY_RX | YT8511_DELAY_GE_TX_EN), ge);
> +	if (ret < 0)
> +		goto err_restore_page;
> +
> +	/* set clock mode to 125mhz */
> +	ret = phy_modify(phydev, YT8511_PAGE, 0, YT8511_CLK_125M);
> +	if (ret < 0)
> +		goto err_restore_page;
> +
> +	/* fast ethernet delay is in a separate page */
> +	ret = phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_DELAY_DRIVE);
> +	if (ret < 0)
> +		goto err_restore_page;
> +
> +	ret = phy_modify(phydev, YT8511_PAGE, YT8511_DELAY_FE_TX_EN, fe);
> +	if (ret < 0)
> +		goto err_restore_page;
> +
> +	/* leave pll enabled in sleep */
> +	ret = phy_write(phydev, YT8511_PAGE_SELECT, YT8511_EXT_SLEEP_CTRL);
> +	if (ret < 0)
> +		goto err_restore_page;
> +
> +	ret = phy_modify(phydev, YT8511_PAGE, 0, YT8511_PLLON_SLP);
> +	if (ret < 0)
> +		goto err_restore_page;
> +
> +err_restore_page:
> +	return phy_restore_page(phydev, oldpage, ret);

This should likely return 'ret' and not the return value of
phy_restore_page().

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


