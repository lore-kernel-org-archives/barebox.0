Delivery-date: Mon, 10 Jul 2023 12:04:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qInkw-005aGy-Sx
	for lore@lore.pengutronix.de; Mon, 10 Jul 2023 12:04:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qInku-0000gS-CB
	for lore@pengutronix.de; Mon, 10 Jul 2023 12:04:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XCw0GuxAjw8QxZtHsG9XODgs9lKEb/nOInOxjfs7IFo=; b=MPX5Cc9c+v/Kul0kjKnnGhtnPh
	mpeoei377yhoMjiZSqcTY8KGjpnEWZWUcOg4FYxhMSHTdYvwyPIuXzMupZVNqZP0U6oajf1G5FQKd
	gjKMKWLoTA7YYjK6huQz+D2TO5rx5nF1qkx3t0sUMctLqRCRvcYZHJWPu+sypGdf/wWHLVbhOjG2Q
	p+7a+1v7RRbcxTHtTOc72yI/T0uNXhpmmLyLncYkSjNzZ1vjSVaQtJCmIYO0dgcb3OlvCGXVisZwd
	WK1cn5ZN1soQdz91Ik5zzILXH4+jwqhDDT6YmGrhvyMTzs/Tfh17VEc8Dw7Gkuy0ADwMSZ2q9mfA/
	0zCMZt8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qInjv-00BA2C-0W;
	Mon, 10 Jul 2023 10:03:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qInjs-00BA1h-1G
	for barebox@lists.infradead.org;
	Mon, 10 Jul 2023 10:03:29 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qInjr-0000P6-2s; Mon, 10 Jul 2023 12:03:27 +0200
Message-ID: <29a3cf23-7087-aa8f-ec7c-7f0414c46de3@pengutronix.de>
Date: Mon, 10 Jul 2023 12:03:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Marco Felsch <m.felsch@pengutronix.de>, barebox@lists.infradead.org
References: <20230710063653.660040-1-m.felsch@pengutronix.de>
 <20230710063653.660040-7-m.felsch@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230710063653.660040-7-m.felsch@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230710_030328_435721_8CF7120D 
X-CRM114-Status: GOOD (  26.70  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 7/7] net: phy: at803x: disable extended next page bit
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 10.07.23 08:36, Marco Felsch wrote:
> This commit ports Linux commit:
> 
> | commit 3c51fa5d2afe7a4909b53af5019635326389dd29
> | Author: Russell King <rmk+kernel@armlinux.org.uk>
> | Date:   Tue Jan 12 22:59:43 2021 +0000
> |
> |     net: phy: ar803x: disable extended next page bit
> |
> |     This bit is enabled by default and advertises support for extended
> |     next page support.  XNP is only needed for 10GBase-T and MultiGig
> |     support which is not supported. Additionally, Cisco MultiGig switches
> |     will read this bit and attempt 10Gb negotiation even though Next Page
> |     support is disabled. This will cause timeouts when the interface is
> |     forced to 100Mbps and auto-negotiation will fail. The interfaces are
> |     only 1000Base-T and supporting auto-negotiation for this only requires
> |     the Next Page bit to be set.
> |
> |     Taken from:
> |     https://github.com/SolidRun/linux-stable/commit/7406c5244b7ea6bc17a2afe8568277a8c4b126a9
> |     and adapted to mainline kernels by rmk.
> |
> |     Signed-off-by: Russell King <rmk+kernel@armlinux.org.uk>
> |     Reviewed-by: Andrew Lunn <andrew@lunn.ch>
> |     Link: https://lore.kernel.org/r/E1kzSdb-000417-FJ@rmk-PC.armlinux.org.uk
> |     Signed-off-by: Jakub Kicinski <kuba@kernel.org>
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/net/phy/at803x.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
> index d8a9c3588f..577bdf1244 100644
> --- a/drivers/net/phy/at803x.c
> +++ b/drivers/net/phy/at803x.c
> @@ -365,7 +365,13 @@ static int at803x_config_init(struct phy_device *phydev)
>  	if (ret < 0)
>  		return ret;
>  
> -	return 0;
> +	/* Ar803x extended next page bit is enabled by default. Cisco
> +	 * multigig switches read this bit and attempt to negotiate 10Gbps
> +	 * rates even if the next page bit is disabled. This is incorrect
> +	 * behaviour but we still need to accommodate it. XNP is only needed
> +	 * for 10Gbps support, so disable XNP.
> +	 */
> +	return phy_modify(phydev, MII_ADVERTISE, MDIO_AN_CTRL1_XNP, 0);
>  }
>  
>  static struct phy_driver at803x_driver[] = {

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



