Delivery-date: Tue, 13 Sep 2022 10:21:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY1AF-003Pvm-Gw
	for lore@lore.pengutronix.de; Tue, 13 Sep 2022 10:21:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oY1AE-0001wF-6k
	for lore@pengutronix.de; Tue, 13 Sep 2022 10:21:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aY5FlwnmeXXphpbscOlfbYsPjfM6aZBRWmITExmcxSc=; b=1QyzLMk6jrC0Fta/O2I/snU03J
	yAxrthF3vKdeOvUysq9hto8QQjVa952tO3txLk/dJTJtbiZMNe9Oz+O2qWpztwfr2xaJMLObLVP05
	yl1yKjNq3CMQHLzP8FZcz/7lxKvcDckOdVNBXpoOUZoIxY2njnn8d+TogA7JwvVlyKzc/Zo5E6hyH
	gg7hJaHQcr1PJyMmW12pX3s9aMx+QpZl6XJHZFiIc4DsPKHjyA287XPbPu0tbbQ7VcQOAyREFFs5b
	9Xx+aKpCys6gCNQjki8vQSzzLD7JXOBhP2MbPWDgc3a0dVqdf+MMbK6RCSUCaXBhw4yuarZ2dm3hq
	YGmIZQ5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY18p-004E5L-Jo; Tue, 13 Sep 2022 08:19:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oY18c-004E0W-Pf
	for barebox@lists.infradead.org; Tue, 13 Sep 2022 08:19:31 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY18b-0001cJ-2L; Tue, 13 Sep 2022 10:19:21 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oY18a-0003q9-PY; Tue, 13 Sep 2022 10:19:20 +0200
Date: Tue, 13 Sep 2022 10:19:20 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220913081920.GK6477@pengutronix.de>
References: <20220905070406.539244-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220905070406.539244-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220913_011929_338360_101B9F39 
X-CRM114-Status: GOOD (  20.06  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] soc: imx: gpcv2: make available to all i.MX8M
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Sep 05, 2022 at 09:04:06AM +0200, Ahmad Fatoum wrote:
> Now that the driver supports i.MX8M Mini, Nano and Plus, we should no
> longer restrict it to just i.MX7 and i.MX8MQ.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/soc/imx/Kconfig | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
> index eabe4a06d22c..624aff2ecae3 100644
> --- a/drivers/soc/imx/Kconfig
> +++ b/drivers/soc/imx/Kconfig
> @@ -3,9 +3,9 @@ menu "i.MX SoC drivers"
>  
>  config IMX_GPCV2_PM_DOMAINS
>          bool "i.MX GPCv2 PM domains"
> -	depends on ARCH_IMX7 || ARCH_IMX8MQ
> +	depends on ARCH_IMX7 || ARCH_IMX8M
>  	select PM_GENERIC_DOMAINS
> -	default y if ARCH_IMX7 || ARCH_IMX8MQ
> +	default y if ARCH_IMX7 || ARCH_IMX8M
>  
>  config IMX8M_FEATCTRL
>          bool "i.MX8M feature controller"
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


