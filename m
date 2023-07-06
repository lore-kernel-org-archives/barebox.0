Delivery-date: Thu, 06 Jul 2023 10:28:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHKM0-00HPyD-1e
	for lore@lore.pengutronix.de; Thu, 06 Jul 2023 10:28:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qHKLx-00056R-PW
	for lore@pengutronix.de; Thu, 06 Jul 2023 10:28:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R7JOcMQHUWackNlzQY/564LWk802AV0zPQu+7ob0NqI=; b=LKNoPVBuR+vPhfDFbBNnG0WKi5
	hoAMVHufHrBwTSHCnSFcKb62Ls4S7OIDkqafDREGOKMQZ+r+B7Y0ZIj3HkYqsoEoqYKip9wZ2TY/d
	C0lUExZwYbf03hQvjKF2foau2hhhhqjxqb12vE/POs876QrYJkwuGsvDOks+6c4wIBVxWiK2j+8n4
	f0CFh3InrIMSBgiMwSKJmP0uhJNhYC3yrGpc34GZYZRJT+7YaTMKdABad63kDflYYW8QM3whiBXTI
	cn2jcUKbIl+C5AldlpCknMaydjGqvtmAUbTBMFThoPfKKqDEdGGUyBSbLwtesgRyyd1DpWXnFZONj
	KJoQ+7tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qHKKl-000wyT-0v;
	Thu, 06 Jul 2023 08:27:27 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qHKKi-000wxf-1W
	for barebox@lists.infradead.org;
	Thu, 06 Jul 2023 08:27:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1qHKKd-00052T-M6; Thu, 06 Jul 2023 10:27:19 +0200
Message-ID: <4b593248-e249-1309-179a-636340f436c0@pengutronix.de>
Date: Thu, 6 Jul 2023 10:27:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Content-Language: en-US
To: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org
References: <20230706081126.784759-1-o.rempel@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20230706081126.784759-1-o.rempel@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230706_012724_513959_5C90321B 
X-CRM114-Status: GOOD (  15.59  )
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
Subject: Re: [PATCH v2 1/3] ARM: at91: enable ddramc for sama5d3 and sama5d4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 06.07.23 10:11, Oleksij Rempel wrote:
> ddramc has already support for sama5d3 and sama5d4, so enable it
> officially.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  arch/arm/mach-at91/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm/mach-at91/Kconfig b/arch/arm/mach-at91/Kconfig
> index b803a1185d..349586b683 100644
> --- a/arch/arm/mach-at91/Kconfig
> +++ b/arch/arm/mach-at91/Kconfig
> @@ -104,6 +104,7 @@ config SOC_SAMA5D3
>  	select HAVE_AT91_UTMI
>  	select PINCTRL_AT91
>  	select HAS_MACB
> +	select HAVE_AT91_DDRAMC
>  
>  config SOC_SAMA5D4
>  	bool
> @@ -116,6 +117,7 @@ config SOC_SAMA5D4
>  	select HAVE_AT91_UTMI
>  	select PINCTRL_AT91
>  	select HAS_MACB
> +	select HAVE_AT91_DDRAMC
>  
>  config SOC_SAM9X60
>  	bool

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



