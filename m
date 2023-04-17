Delivery-date: Mon, 17 Apr 2023 09:00:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIqI-00617S-4d
	for lore@lore.pengutronix.de; Mon, 17 Apr 2023 09:00:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1poIqH-0002Yu-Ip
	for lore@pengutronix.de; Mon, 17 Apr 2023 09:00:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yEW2CUDsu+h3rVxhY5F2Uf9hA505J1ujJatd93seOeA=; b=DHM7fcu8G81LGHFkDz9azJI1Vf
	GxQnpYmxkd2EeOv/2Rin+2na5WmElyn6zxtJSLTr/uuKpf0KHOqw9pBW1P5e1rnYZbJd12rwavMMK
	K52iCsHuWOGpVweC4F47bhjLbtQwHxy2PY0T3/C/aTYoWNRBRT6Rn0J8GTGaUTYyeCGIUVQbZcOG4
	ueTYJdCVggrS5LU0SH5MC98SL2fMw/aOFhTODiYu/Gr3MGjZ3vl3dV8ikwv6dB5ct2oj81v0FGqI2
	6BUH6JeXurxgzszdZz6VigmiRCJxiqlmY0fEwm4E+jjt5jVoAUyedmvTn3YSi8lQun28ANNbewJhG
	OanRfjrQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1poIpC-00F7RU-1Z;
	Mon, 17 Apr 2023 06:58:54 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1poIp9-00F7Qk-1s
	for barebox@lists.infradead.org;
	Mon, 17 Apr 2023 06:58:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIp8-0002Rk-BR; Mon, 17 Apr 2023 08:58:50 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1poIp8-0004SO-2a; Mon, 17 Apr 2023 08:58:50 +0200
Date: Mon, 17 Apr 2023 08:58:50 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230417065850.GH13543@pengutronix.de>
References: <20230414141703.3112251-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230414141703.3112251-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230416_235851_616923_FD197F33 
X-CRM114-Status: GOOD (  21.57  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] usb: misc: onboard_hub: sync compatibles with kernel
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Apr 14, 2023 at 04:17:03PM +0200, Ahmad Fatoum wrote:
> A couple more USB hub compatibles ave been added to the kernel in the
> meantime, so let's import them.
> 
> While at it, make onboard_hub_match static. It's not used anywhere else.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/usb/misc/onboard_usb_hub.h | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/usb/misc/onboard_usb_hub.h b/drivers/usb/misc/onboard_usb_hub.h
> index e90be47b6735..aca5f50eb0da 100644
> --- a/drivers/usb/misc/onboard_usb_hub.h
> +++ b/drivers/usb/misc/onboard_usb_hub.h
> @@ -22,14 +22,31 @@ static const struct onboard_hub_pdata ti_tusb8041_data = {
>  	.reset_us = 3000,
>  };
>  
> -const struct of_device_id onboard_hub_match[] = {
> +static const struct onboard_hub_pdata genesys_gl850g_data = {
> +	.reset_us = 3,
> +};
> +
> +static const struct onboard_hub_pdata genesys_gl852g_data = {
> +	.reset_us = 50,
> +};
> +
> +static const struct onboard_hub_pdata vialab_vl817_data = {
> +	.reset_us = 10,
> +};
> +
> +static const struct of_device_id onboard_hub_match[] = {
>  	{ .compatible = "usb424,2514", .data = &microchip_usb424_data, },
> +	{ .compatible = "usb424,2517", .data = &microchip_usb424_data, },
>  	{ .compatible = "usb451,8140", .data = &ti_tusb8041_data, },
>  	{ .compatible = "usb451,8142", .data = &ti_tusb8041_data, },
> +	{ .compatible = "usb5e3,608", .data = &genesys_gl850g_data, },
> +	{ .compatible = "usb5e3,610", .data = &genesys_gl852g_data, },
>  	{ .compatible = "usbbda,411", .data = &realtek_rts5411_data, },
>  	{ .compatible = "usbbda,5411", .data = &realtek_rts5411_data, },
>  	{ .compatible = "usbbda,414", .data = &realtek_rts5411_data, },
>  	{ .compatible = "usbbda,5414", .data = &realtek_rts5411_data, },
> +	{ .compatible = "usb2109,817", .data = &vialab_vl817_data, },
> +	{ .compatible = "usb2109,2817", .data = &vialab_vl817_data, },
>  	{}
>  };
>  
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


