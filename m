Delivery-date: Fri, 28 Jul 2023 08:21:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPGqn-00D8RR-Ra
	for lore@lore.pengutronix.de; Fri, 28 Jul 2023 08:21:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qPGql-00046N-HH
	for lore@pengutronix.de; Fri, 28 Jul 2023 08:21:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=X/tBTRQQcJMy32E9ID3OijTrOS5ACsUEJf+muSq9dSw=; b=BtVW+jiCs/W8Z7Z3cL/Z7Hljxl
	YNnR2ZJ6VDUFSrqhfSdh8Bw4i4LDOVF1mVPbGS4qUhXHpxzAEc/wAlXvjL36SeaVYtAtv7hbUZxPW
	kKboEMh+s03tVWFBnMDP1T0+xrrzDLAKNYa1J/sCvsJfISG/IQNzC1guzfPu0okpivgkllMFydfMN
	Dya7Ry47aLFKG8XLGESLPB3dGcjvXavicTL6W41APBJV0AEfF/+acM619KGCGJ7Q0XNdAYEMQvVXZ
	oiXgk0n6wj0Nmmmi4ujmT8giRUyMGCYFcu7qruaDzKzfRIyoOlyP9bgSbdDAtz5lZ5P7gYg6GFYRF
	YS5alTLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGpi-001sYX-18;
	Fri, 28 Jul 2023 06:20:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qPGpe-001sY3-2u
	for barebox@lists.infradead.org;
	Fri, 28 Jul 2023 06:20:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPGpd-0003q8-HI; Fri, 28 Jul 2023 08:20:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qPGpd-0004Jo-Bo; Fri, 28 Jul 2023 08:20:09 +0200
Date: Fri, 28 Jul 2023 08:20:09 +0200
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230728062009.GF18491@pengutronix.de>
References: <20230706081126.784759-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230706081126.784759-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230727_232010_963504_2A53AC03 
X-CRM114-Status: GOOD (  17.88  )
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
Subject: Re: [PATCH v2 1/3] ARM: at91: enable ddramc for sama5d3 and sama5d4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jul 06, 2023 at 10:11:24AM +0200, Oleksij Rempel wrote:
> ddramc has already support for sama5d3 and sama5d4, so enable it
> officially.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/mach-at91/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)

Applied, thanks

Sascha

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


