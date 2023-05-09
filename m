Delivery-date: Tue, 09 May 2023 09:24:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwHht-00BHQF-7r
	for lore@lore.pengutronix.de; Tue, 09 May 2023 09:24:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwHhr-00058U-Dz
	for lore@pengutronix.de; Tue, 09 May 2023 09:24:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZYrEnxY4yEhxOyjyU8PUcVJ1r30gFGjR87eWOI/PMos=; b=Fdmxj4Ik2/CWrFa/Lrct43IzFm
	76QUqZTYxL8XOq/bBbalQ2SEW+jxsRGE1kL2UyoO+jINJ8vevqrCT6IgmDLGXaMIcxdHo5PXqW/kd
	c8yTxe9MyZP8ZvGDieNqPRznRc/Bsx/5aMdmAqahDroS+TwKpWclR5EE4nRldiQx6AuR+bGsxuJi1
	0trN4W1HXqQOUVTEG01I2qKbAOUhUgJbu6j6PpY2j8EjD40TrEEg+I7br994vcK8kqIKvBmpZd3WD
	wX0UIrYORczgVhZQaazwvDHPoOtd1is3KCtZropgwJLtiBK5vihtIopw44jS3ANy0p4/08HGk1x+T
	4VG9sNYw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwHgo-002V9F-0g;
	Tue, 09 May 2023 07:23:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwHgl-002V8U-0A
	for barebox@lists.infradead.org;
	Tue, 09 May 2023 07:23:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwHgj-0004z2-QM; Tue, 09 May 2023 09:23:09 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwHgj-0005cT-6B; Tue, 09 May 2023 09:23:09 +0200
Date: Tue, 9 May 2023 09:23:09 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230509072309.GC29365@pengutronix.de>
References: <20230503100609.1522959-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230503100609.1522959-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_002311_086523_E5AE9EF0 
X-CRM114-Status: GOOD (  19.37  )
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
Subject: Re: [PATCH] net: dsa: realtek: fix Kconfig selects
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, May 03, 2023 at 12:06:09PM +0200, Ahmad Fatoum wrote:
> Unlike Linux, barebox has no CONFIG_FIXED_PHY or CONFIG_IRQ_DOMAIN.
> The former is implied by CONFIG_PHYLIB and the latter is unneeded, so
> revise the Kconfig option accordingly.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/net/realtek-dsa/Kconfig | 3 +--
>  1 file changed, 1 insertion(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/net/realtek-dsa/Kconfig b/drivers/net/realtek-dsa/Kconfig
> index dd8599565f6e..0708f1ef96f4 100644
> --- a/drivers/net/realtek-dsa/Kconfig
> +++ b/drivers/net/realtek-dsa/Kconfig
> @@ -2,8 +2,7 @@
>  menuconfig DRIVER_NET_DSA_REALTEK
>  	tristate "Realtek Ethernet switch family support"
>  	depends on DSA
> -	select FIXED_PHY
> -	select IRQ_DOMAIN
> +	select PHYLIB
>  	select REALTEK_PHY
>  	select REGMAP
>  	help
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


