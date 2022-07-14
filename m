Delivery-date: Thu, 14 Jul 2022 10:09:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtuz-007Lac-Qf
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 10:09:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtux-0000u1-Ln
	for lore@pengutronix.de; Thu, 14 Jul 2022 10:09:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mrBxa7BJbu9SN4mBD+57VaRFv66LEesW0hjivRCNFEA=; b=4841TDqET1Bn7X3Uf2JL1HQpRX
	tK1SJpZaBBOxIiAe5Y00ib7ReRbk6zCbMDEVHKFj+k5Csg0wY2rpMf6Sw9MOXY0W20CPd3qjIgujy
	K118GEk54PZvzX8o3mEYr62xsAWmnxoBi5yGKgEu1Y4Z7yHPvmb0bTlgAeSdZHQ5XJyc4LURvFasZ
	7gvI292T4NZkU/VJGOR8WY2aIQJCsIKb62P/MzipW4U48ajcvqv4yVRvG0V7h37aKNTCjrN5WW9O3
	vBApENWuufWFUlI8oHdjYnmZSXpUIBDGxJNZXMX21kT/p0rzMFehgE9y5coNANZb9owIg6sqbkWq7
	Lpjidj1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBttm-00CBtl-9m; Thu, 14 Jul 2022 08:08:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBttg-00CBrh-Rt
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 08:08:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBttf-0000lX-Ls; Thu, 14 Jul 2022 10:08:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBttf-0003fS-D9; Thu, 14 Jul 2022 10:08:31 +0200
Date: Thu, 14 Jul 2022 10:08:31 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220714080831.GI23482@pengutronix.de>
References: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220713095730.1878941-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_010832_919874_C3FBF61C 
X-CRM114-Status: GOOD (  22.84  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH v2 1/6] common: don't allow compressing in-barebox
 binaries again
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 13, 2022 at 11:57:25AM +0200, Ahmad Fatoum wrote:
> For barebox with a prebootloader, we can compress barebox proper as a
> whole and it makes no sense to compress the environment on its own
> again. The choice already defaulted to this, but the user could still
> override it. Ensure that this double compression can't happen.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
> v1 -> v2:
>   - no change
> ---
>  common/Kconfig | 17 +++++++++--------
>  1 file changed, 9 insertions(+), 8 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 2292e7bcea46..6278866006b1 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -860,29 +860,30 @@ choice
>  	default DEFAULT_COMPRESSION_LZ4 if LZ4_DECOMPRESS
>  	default DEFAULT_COMPRESSION_BZIP2 if BZLIB
>  	help
> -	  Select the default compression for in-barebox binary files. Files
> -	  compiled into barebox like for example the default environment will
> -	  be compressed with this compression type.
> +	  For barebox builds without a prebootloader, select here the default
> +	  compression for in-barebox binary files. barebox itself can't be
> +	  compressed without a prebootloader, but for example the default
> +	  environment will be compressed with this compression type.
>  
>  config DEFAULT_COMPRESSION_GZIP
>  	bool "gzip"
> -	depends on ZLIB
> +	depends on !PBL_IMAGE && ZLIB
>  
>  config DEFAULT_COMPRESSION_BZIP2
>  	bool "bzip2"
> -	depends on BZLIB
> +	depends on !PBL_IMAGE && BZLIB
>  
>  config DEFAULT_COMPRESSION_LZO
>  	bool "lzo"
> -	depends on LZO_DECOMPRESS
> +	depends on !PBL_IMAGE && LZO_DECOMPRESS
>  
>  config DEFAULT_COMPRESSION_LZ4
>  	bool "lz4"
> -	depends on LZ4_DECOMPRESS
> +	depends on !PBL_IMAGE && LZ4_DECOMPRESS
>  
>  config DEFAULT_COMPRESSION_XZ
>  	bool "xz"
> -	depends on XZ_DECOMPRESS
> +	depends on !PBL_IMAGE && XZ_DECOMPRESS
>  
>  config DEFAULT_COMPRESSION_NONE
>  	bool "no compression"
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


