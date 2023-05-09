Delivery-date: Tue, 09 May 2023 09:25:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwHiw-00BHUL-AQ
	for lore@lore.pengutronix.de; Tue, 09 May 2023 09:25:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwHit-0005Yp-HU
	for lore@pengutronix.de; Tue, 09 May 2023 09:25:24 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qF2TJ1TvuAsAHiOTxKe9t6QQqnfTCFmUxsWF31b/phw=; b=HdNrbm+CiyWgsnt1rFqDwTdmp8
	0HIQE+eZublS0LB+fW+tuT2oTQQmpfUZqb0noNucslTVe48gZutnmKtVbvFZA2OV8Ab3mywan/y8G
	E4qtATdzPfcgShE9nfEi/bqHhTbDAl991jRQdiAm4CBWPxLbeIzhjxxx88Qj7Jl4XV3UnxwTVp+f4
	x4gtYmBRO7XPugqXA+qFClk9l9AR7phKWMrlLF+maRhvxsWB/2lXDjNOtgoIZjy0xaySI80PUnvU/
	g1UCMmpu+lQ/C3BjwBz4ttaDvPLaEBE4fMN3SFLuItIqUMP7a0thYXWmRRr3SnD3TX3FtjNCD/NLe
	IhSOQRGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwHhq-002VJf-1a;
	Tue, 09 May 2023 07:24:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwHhn-002VIp-2L
	for barebox@lists.infradead.org;
	Tue, 09 May 2023 07:24:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwHhm-00057i-En; Tue, 09 May 2023 09:24:14 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pwHhl-0005cx-HP; Tue, 09 May 2023 09:24:13 +0200
Date: Tue, 9 May 2023 09:24:13 +0200
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <20230509072413.GD29365@pengutronix.de>
References: <20230505061245.463528-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230505061245.463528-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230509_002415_760241_E7EDBF1B 
X-CRM114-Status: GOOD (  21.53  )
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
Subject: Re: [PATCH] mfd: syscon: Remove unused helper
 syscon_base_lookup_by_pdevname
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, May 05, 2023 at 09:12:44AM +0300, Alexander Shiyan wrote:
> Nobody uses the exported helper syscon_base_lookup_by_pdevname,
> to lookup a syscon by device name. Let us remove it.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/mfd/syscon.c | 15 ---------------
>  include/mfd/syscon.h |  6 ------
>  2 files changed, 21 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
> index 5d1fed4aee..16d78de2af 100644
> --- a/drivers/mfd/syscon.c
> +++ b/drivers/mfd/syscon.c
> @@ -142,21 +142,6 @@ static void __iomem *syscon_node_to_base(struct device_node *np)
>  	return syscon->base;
>  }
>  
> -void __iomem *syscon_base_lookup_by_pdevname(const char *s)
> -{
> -	struct syscon *syscon;
> -	struct device *dev;
> -
> -	for_each_device(dev) {
> -		if (!strcmp(dev_name(dev), s)) {
> -			syscon = dev->priv;
> -			return syscon->base;
> -		}
> -	}
> -
> -	return ERR_PTR(-ENODEV);
> -}
> -
>  void __iomem *syscon_base_lookup_by_phandle(struct device_node *np,
>  					    const char *property)
>  {
> diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
> index b47aa1e160..3ccfd7fb5b 100644
> --- a/include/mfd/syscon.h
> +++ b/include/mfd/syscon.h
> @@ -17,7 +17,6 @@
>  #include <regmap.h>
>  
>  #ifdef CONFIG_MFD_SYSCON
> -void __iomem *syscon_base_lookup_by_pdevname(const char *s);
>  void __iomem *syscon_base_lookup_by_phandle
>  	(struct device_node *np, const char *property);
>  struct regmap *syscon_node_to_regmap(struct device_node *np);
> @@ -27,11 +26,6 @@ extern struct regmap *syscon_regmap_lookup_by_phandle(
>  					struct device_node *np,
>  					const char *property);
>  #else
> -static inline void __iomem *syscon_base_lookup_by_pdevname(const char *s)
> -{
> -	return ERR_PTR(-ENOSYS);
> -}
> -
>  static inline void __iomem *syscon_base_lookup_by_phandle
>  	(struct device_node *np, const char *property)
>  {
> -- 
> 2.39.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


