Delivery-date: Mon, 22 May 2023 13:30:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q13kI-009adG-9o
	for lore@lore.pengutronix.de; Mon, 22 May 2023 13:30:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q13kF-0002nj-IY
	for lore@pengutronix.de; Mon, 22 May 2023 13:30:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YQ8RqqStQ2ABQQzh0DYDECh4yjhwPyKhO97bKuxWRsM=; b=eV7qrxuHpFJorExntun7/2ZCuR
	+XAwVJOM9k40/IO1Hu+cKHaXvMX3LN+u5XFOPLWN/v3FwqVYMObXULcFZLwPeqgnvwJQ2OohlaGNG
	aayWQAUjzUw0R6m/x4oUr/AFKyHomXWlwKnQ22b/E0yy6MmZwu8km9Ntt3hpgtSa8EhgiKDhjEnei
	iyRCkp/VNrS9uYEQHDEdwLPHTRvGaouG8YSinrwAxDTdfqgy2AvLFHb0Xa2qDks8gRS8aDJdOl4/F
	bzQHKpay4fYEhViSAcXOTgQSH/NzBi5cCK8sGoZGD5abvQZmtTxyfnHyG6dfp20u3pCKNA3E/YQXw
	yUpGAvXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q13j1-006GC6-2e;
	Mon, 22 May 2023 11:29:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q13iy-006GBL-0q
	for barebox@lists.infradead.org;
	Mon, 22 May 2023 11:29:14 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q13iw-0002Ot-78; Mon, 22 May 2023 13:29:10 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q13iv-0004Y4-9m; Mon, 22 May 2023 13:29:09 +0200
Date: Mon, 22 May 2023 13:29:09 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230522112909.GM29365@pengutronix.de>
References: <20230519084009.2355024-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230519084009.2355024-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230522_042912_319668_3F532155 
X-CRM114-Status: GOOD (  20.68  )
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
Subject: Re: [PATCH] fixup! net: dsa: realtek: fix Kconfig selects
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 19, 2023 at 10:40:09AM +0200, Ahmad Fatoum wrote:
> net: dsa: realtek: drop select of undefined REGMAP option
> 
> Regmap support is available unconditionally in barebox and is only
> removed by linker garbage collection, unlike the kernel.
> 
> Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/realtek-dsa/Kconfig | 1 -
>  1 file changed, 1 deletion(-)

Applied, thanks

I removed the fixup! as the commit to be fixed up is already in master.

Sascha

> 
> diff --git a/drivers/net/realtek-dsa/Kconfig b/drivers/net/realtek-dsa/Kconfig
> index 0708f1ef96f4..f9404e0265ee 100644
> --- a/drivers/net/realtek-dsa/Kconfig
> +++ b/drivers/net/realtek-dsa/Kconfig
> @@ -4,7 +4,6 @@ menuconfig DRIVER_NET_DSA_REALTEK
>  	depends on DSA
>  	select PHYLIB
>  	select REALTEK_PHY
> -	select REGMAP
>  	help
>  	  Select to enable support for Realtek Ethernet switch chips.
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


