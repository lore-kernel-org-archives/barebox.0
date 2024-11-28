Delivery-date: Thu, 28 Nov 2024 10:45:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGb5y-001P0o-0H
	for lore@lore.pengutronix.de;
	Thu, 28 Nov 2024 10:45:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tGb5y-0000fA-0J
	for lore@pengutronix.de; Thu, 28 Nov 2024 10:45:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jG58xZ/rmQgtOkj4RDZjmKduLDUhiP83ElmVfo1gzpk=; b=Y5p6dZMNamL9/2Xqf61ha1+F8a
	OJY+N4P+MzTgwUgXedbG58tWI6Hcb6pDMyDCDWchI8RTtapHFnz6D9I9brcphS4ew8NOZZbJ2bUDX
	q+Aa0urbFuFkdjAuL53RDgT2oFkopd/4dgth61TGX6H6xguNIpWSGp2Bd5E/aTjkGl5dUHUFmBQlc
	Sh67M/QRwfg05dJM8ZrP9Zm8S47TJiucxIs/7F/J45kjcrMLQQTgUd6TRON+f7ky16ILP1SyNoomX
	SO7n8847hH+nSxFllAM8eo1l+bs1TKTGZKVq8FwrrL0ar7q77rzx5uWzT1dLnNqigGW3MPVPLp2bz
	2JLwrcxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tGb5M-0000000FAc1-20Ql;
	Thu, 28 Nov 2024 09:45:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tGb5J-0000000FAbG-3g12
	for barebox@lists.infradead.org;
	Thu, 28 Nov 2024 09:45:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tGb5I-0000U0-CR; Thu, 28 Nov 2024 10:45:16 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tGb5H-000afz-1M;
	Thu, 28 Nov 2024 10:45:16 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tGb5I-002rPA-0L;
	Thu, 28 Nov 2024 10:45:16 +0100
Date: Thu, 28 Nov 2024 10:45:16 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <Z0g7rBciygTZ03TI@pengutronix.de>
References: <20241125151228.341441-1-a.fatoum@pengutronix.de>
 <20241125151228.341441-6-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241125151228.341441-6-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241128_014517_913296_6ADDDBDD 
X-CRM114-Status: GOOD (  26.38  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 05/16] lib: random: add stubs for PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 25, 2024 at 04:12:17PM +0100, Ahmad Fatoum wrote:
> To optimize out calls to undefined functions in PBL at compile-time
> instead of link time, let's define stubs for the functions that
> are referenced in obj-pbl-y files, but inside function sections
> that are ultimately unreferenced.
> 
> We don't use IS_PROPER here as we want to fail the build in barebox
> proper as before, when HWRNG support is missing.

IS_PROPER is renamed to IN_PROPER in this series and you are actually
using it in this patch.

Just drop this sentence?

Sascha

> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/stdlib.h | 19 ++++++++++++++++++-
>  1 file changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/include/stdlib.h b/include/stdlib.h
> index c427cbc87f6e..20bdc0491e3c 100644
> --- a/include/stdlib.h
> +++ b/include/stdlib.h
> @@ -2,6 +2,7 @@
>  #ifndef __STDLIB_H
>  #define __STDLIB_H
>  
> +#include <linux/bug.h>
>  #include <types.h>
>  #include <malloc.h>
>  
> @@ -13,11 +14,27 @@ unsigned int rand(void);
>  /* set the seed for rand () */
>  void srand(unsigned int seed);
>  
> +struct hwrng;
> +
>  /* fill a buffer with pseudo-random data */
> +#if IN_PROPER
>  void get_random_bytes(void *buf, int len);
>  int get_crypto_bytes(void *buf, int len);
> -struct hwrng;
>  int hwrng_get_crypto_bytes(struct hwrng *rng, void *buf, int len);
> +#else
> +static inline void get_random_bytes(void *buf, int len)
> +{
> +	BUG();
> +}
> +static inline int get_crypto_bytes(void *buf, int len)
> +{
> +	return -ENOSYS;
> +}
> +static inline int hwrng_get_crypto_bytes(struct hwrng *rng, void *buf, int len)
> +{
> +	return -ENOSYS;
> +}
> +#endif
>  
>  static inline u32 random32(void)
>  {
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


