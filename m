Delivery-date: Tue, 04 Jul 2023 11:00:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGbtD-00EZrv-RH
	for lore@lore.pengutronix.de; Tue, 04 Jul 2023 11:00:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGbtB-0001IA-FC
	for lore@pengutronix.de; Tue, 04 Jul 2023 11:00:01 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TrmYMQtkqPR/uRpxvE2WCYbFx/tFk2Pg9bxO9WqwzMU=; b=vFr7IQjYObCpPM2h2eM3lsiQbe
	f4TX9XZO8DtNgjLCRgE5NLe6BIFlJ5NOfjrNZSGZisdtM4xH4r1D4H185mF6of/K4A7jA6kahgm5r
	c0X2jmoymZf0POwuyWNCGlWv4L5Bdm/AYPPe2krgulJWKlesNXVek3zAgvQvgwIvQGld/DznMHCfx
	X/iFQBscqdI8AUcsCsT5a2hwGHO2laVBSh1dsfIzBjtjnZmFHOONbQJBANSKOGGrk77oVboJajGtA
	ww1vKA2TEi8vrxS7Acg810kziBp0ghSg0s+MyNZueAV80KVufnh7GfEWYZou4ietLntgPmogt1iag
	Qa00A/yQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGbs1-00Cdob-1F;
	Tue, 04 Jul 2023 08:58:49 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGbry-00Cdlk-0k
	for barebox@lists.infradead.org;
	Tue, 04 Jul 2023 08:58:47 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGbrw-00017r-FF; Tue, 04 Jul 2023 10:58:44 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qGbrw-0006Qi-7f; Tue, 04 Jul 2023 10:58:44 +0200
Date: Tue, 4 Jul 2023 10:58:44 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230704085844.GY18491@pengutronix.de>
References: <20230703172054.536931-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230703172054.536931-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230704_015846_275585_F517BF8C 
X-CRM114-Status: GOOD (  21.32  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] soc: imx: featctrl: add help text for
 CONFIG_IMX8M_FEATCTRL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Jul 03, 2023 at 07:20:53PM +0200, Ahmad Fatoum wrote:
> There's no equivalent Linux driver, so a short help text is certainly in
> order. While at it, replace spaces with tabs for the prompt line.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/soc/imx/Kconfig | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
> index 06513c02da2f..b11db718c2bc 100644
> --- a/drivers/soc/imx/Kconfig
> +++ b/drivers/soc/imx/Kconfig
> @@ -8,9 +8,12 @@ config IMX_GPCV2_PM_DOMAINS
>  	default y if ARCH_IMX7 || ARCH_IMX8M
>  
>  config IMX8M_FEATCTRL
> -        bool "i.MX8M feature controller"
> +	bool "i.MX8M feature controller"
>  	depends on ARCH_IMX8M
>  	select FEATURE_CONTROLLER
>  	default y
> +	help
> +	  This driver disables device tree nodes that are not applicable
> +	  to Lite variants of i.MX8M SoCs.
>  
>  endmenu
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


