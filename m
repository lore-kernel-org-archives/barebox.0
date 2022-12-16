Delivery-date: Fri, 16 Dec 2022 07:38:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p64Ml-005PP2-UU
	for lore@lore.pengutronix.de; Fri, 16 Dec 2022 07:38:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p64Ml-0004Y9-0o
	for lore@pengutronix.de; Fri, 16 Dec 2022 07:38:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LWx5/4T4pAWg7G3UgTAiLPBPQf6rPEyqZfwHpv37D/Q=; b=gp5FPHDCHvMkkgBKqxJAztPalb
	EqRTlK8bnAQNTY51Wll+auB0t8yKA5XdqeJtKoDje7BvgVrLE/oh4StYkCqz/XYG+ZttwwTsTDBhL
	zFnZSdPVSxSaRWkuVLK7AFJUJVTOUNLJYPbWqirmQW1SdYs49VgLex6P2hFxe4hdqFtQjthF5pi1t
	93s6RNHu+s4SUIjuabQ90Hyes0kbYEUzcyEVox6aS3ETkFNWhfTyx6gFmbzIi99fioyl6oKlOj0TH
	whApNjeWo9YjOYnf6rMlASpLBAWGVF3q846A8B6HJptSKFI0obQAAJPTSyE53f6Wk/xxqA7Yzhz3G
	XzOjq37Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p64LA-00DBX7-TX; Fri, 16 Dec 2022 06:37:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p64L5-00DBSq-R0
	for barebox@lists.infradead.org; Fri, 16 Dec 2022 06:37:01 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p64Ky-0004T9-TQ; Fri, 16 Dec 2022 07:36:52 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p64Ky-0003gp-M0; Fri, 16 Dec 2022 07:36:52 +0100
Date: Fri, 16 Dec 2022 07:36:52 +0100
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: afa@pengutronix.de, ejo@pengutronix.de, barebox@lists.infradead.org
Message-ID: <20221216063652.GD11668@pengutronix.de>
References: <20221206112614.2612071-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221206112614.2612071-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_223659_918783_D2939ECB 
X-CRM114-Status: GOOD (  18.85  )
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
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] pbl: set IMAGE_COMPRESSION per default to lz4
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Dec 06, 2022 at 12:26:14PM +0100, Marco Felsch wrote:
> The LZO compression hasn't been updated since 2017 and embedded build
> tools like Yocto dropping the support for it [1]. So switch to LZ4 as
> default since this seems to be the most comparable compression standard
> according Ahmads measurements [2] and the kernel suggestion [3].
> 
> [1] https://lore.kernel.org/all/20220524152401.1663317-9-ross.burton@arm.com/
> [2] https://lore.barebox.org/barebox/20220713100922.1880282-1-a.fatoum@pengutronix.de/
> [3] https://lkml.org/lkml/2020/7/1/848
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  pbl/Kconfig | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/pbl/Kconfig b/pbl/Kconfig
> index ba809af2d5..91970c19bc 100644
> --- a/pbl/Kconfig
> +++ b/pbl/Kconfig
> @@ -63,7 +63,7 @@ if IMAGE_COMPRESSION
>  
>  choice
>  	prompt "Compression"
> -	default IMAGE_COMPRESSION_LZO
> +	default IMAGE_COMPRESSION_LZ4
>  
>  config IMAGE_COMPRESSION_LZ4
>  	bool "lz4"
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


