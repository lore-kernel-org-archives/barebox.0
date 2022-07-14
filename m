Delivery-date: Thu, 14 Jul 2022 10:09:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtuz-007LaY-Nt
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 10:09:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtux-0000tz-Fw
	for lore@pengutronix.de; Thu, 14 Jul 2022 10:09:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4FD5vh8nO30B2twt67OGh51YqCeDPZLPRd11hUClHEI=; b=ebLgsqN9J/DLkxGXkEtBwRxhQE
	K61dSEkUgOZN9HNp6Qd+QZt5SIHAVowrYg35bjxlF10qwrShYv9IkQcn6KsqOKjDCej9Q3DbnX09u
	R44IH6WcByY7BHG8V4/jgteAwK8MnzOnhRS+ECAlYdmirGtn3UEIbPQUZ+IAxuFtQn0rgkUp7y2oC
	QbU8fe9LiodiVcqbeCVNLnhFPiiYzv3HJ4V5QypwJ2EhghiaClliLZfNkh7c+Dip9k7kop29scPdb
	Vw6UF1+pGt9YoylgSBkF6+ngljY8GeQdjc3OekoauZ4GRCaWG4N2wEBQTr7D0QINjvAmzuSp3yYdx
	kQK4Wc4w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBttd-00CBoj-Rq; Thu, 14 Jul 2022 08:08:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBttZ-00CBln-AB
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 08:08:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBttU-0000lB-CZ; Thu, 14 Jul 2022 10:08:20 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBttU-0003fG-45; Thu, 14 Jul 2022 10:08:20 +0200
Date: Thu, 14 Jul 2022 10:08:20 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220714080820.GH23482@pengutronix.de>
References: <20220713092047.1588210-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220713092047.1588210-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_010825_368865_1917EF63 
X-CRM114-Status: GOOD (  22.57  )
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
Subject: Re: [PATCH master] ubifs: fix crash building without decompressors
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Jul 13, 2022 at 11:20:47AM +0200, Ahmad Fatoum wrote:
> When building barebox with ubifs support, but without decompressors
> enabled, we run into a NULL pointer dereference:
> 
>   BUG: failure at lib/string.c:249/strncmp()!
>   BUG!
>   [<4fd8ea59>] (unwind_backtrace+0x1/0x78) from [<4fd014e5>] (panic+0x1d/0x34)
>   [<4fd014e5>] (panic+0x1d/0x34) from [<4fd65ed1>] (strncmp+0x2d/0x50)
>   [<4fd65ed1>] (strncmp+0x2d/0x50) from [<4fd784bb>] (compr_init+0x4b/0x70)
>   [<4fd784bb>] (compr_init+0x4b/0x70) from [<4fd78915>] (ubifs_compressors_init+0x15/0x40)
>   [<4fd78915>] (ubifs_compressors_init+0x15/0x40) from [<4fd78e89>] (ubifs_init+0x2d/0x48)
>   [<4fd78e89>] (ubifs_init+0x2d/0x48) from [<4fd01159>] (start_barebox+0x35/0x6c)
>   [<4fd01159>] (start_barebox+0x35/0x6c) from [<4fd8c9f3>] (barebox_non_pbl_start+0x127/0x170)
>   [<4fd8c9f3>] (barebox_non_pbl_start+0x127/0x170) from [<4fd00005>] (__bare_init_start+0x1/0xc)
> 
> This is because the loop in crypto_alloc_comp iterates over all possible
> decompressors and then accesses comp->capi_name, which will be NULL for
> unusable decompressors. Add a NULL check to handle this gracefully.
> A check for alg_name isn't needed because it's already checked in
> compr_init.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  fs/ubifs/ubifs.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
> index e7b434c1960e..0b4f3de773e7 100644
> --- a/fs/ubifs/ubifs.c
> +++ b/fs/ubifs/ubifs.c
> @@ -125,7 +125,8 @@ static inline struct crypto_comp
>  			i++;
>  			continue;
>  		}
> -		if (strncmp(alg_name, comp->capi_name, strlen(alg_name)) == 0) {
> +		if (comp->capi_name &&
> +		    strncmp(alg_name, comp->capi_name, strlen(alg_name)) == 0) {
>  			ptr->compressor = i;
>  			return ptr;
>  		}
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


