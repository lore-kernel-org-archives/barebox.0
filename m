Delivery-date: Thu, 09 Jun 2022 11:02:40 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzE3s-008ac8-Mp
	for lore@lore.pengutronix.de; Thu, 09 Jun 2022 11:02:40 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzE3r-0006QZ-AZ
	for lore@pengutronix.de; Thu, 09 Jun 2022 11:02:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=t15cQLMR9gr+YUeqr5A9o9NNuwnTOie+MI0txuSO+rY=; b=2hHMnaPooHbfxZ8tsJ1KY3W7b2
	/DkMx3EzbI5MZtw8GTMwMy71S2KmHeY0eyCdkrjjjwr4PBI/rZtZpJ9Kfkfk1WkdoUhueU23i4pg3
	zoxjFXEZWz4khx9D9OEcHXo5QfwcFi/bDJ75XG1C6glh21HET4z/N81ruT57rZLzZ5I2aPAUeOLJ0
	caQuFIFonWvpEa6hxLiMMLKCuBXF4z4Rf9LlZIJyzX5Ulpy09kdi/7VxpOuDMnZg95nv2FKwrr5qg
	r3qKFoaMv297OHYRSFPGumsAkoNQbWqGgjQG/lgMmZct50RiK4Jz3fkhGG0hAcn05w0BnX/oIOWEA
	tcoLLIgg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzE2P-000US3-7A; Thu, 09 Jun 2022 09:01:10 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzDrp-000Oaz-6M
	for barebox@lists.infradead.org; Thu, 09 Jun 2022 08:50:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzDrn-0003s7-2O; Thu, 09 Jun 2022 10:50:11 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1nzDrm-0001ph-Mw; Thu, 09 Jun 2022 10:50:10 +0200
Date: Thu, 9 Jun 2022 10:50:10 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220609085010.GJ1615@pengutronix.de>
References: <20220609060923.670163-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220609060923.670163-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_015013_266371_BA8286C9 
X-CRM114-Status: GOOD (  22.10  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2] common: add help text for CONFIG_STATE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 09, 2022 at 08:09:23AM +0200, Ahmad Fatoum wrote:
> While we have extensive documentation for state, some sentences in the
> kconfig are a good thing.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - remove reference to barebox TLV until that support is upstreamed.
> ---
>  common/Kconfig | 5 +++++
>  1 file changed, 5 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index f7a6a96e877c..3ff45d6c9d0d 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1004,6 +1004,11 @@ config STATE
>  	select ENVIRONMENT_VARIABLES
>  	select OFTREE
>  	select PARAMETER
> +	help
> +	  barebox state is a generic framework for atomic power fail-safe
> +	  variable storage and retrieval. It can be used to safely maintain
> +	  data over reboots and to exchange information with Linux, e.g.
> +	  for redundant boot with bootchooser.
>  
>  config STATE_CRYPTO
>  	bool "HMAC based authentication support"
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

