Delivery-date: Thu, 29 Jul 2021 11:59:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m92pR-0007XA-Kh
	for lore@lore.pengutronix.de; Thu, 29 Jul 2021 11:59:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m92pQ-0001GU-Lw
	for lore@pengutronix.de; Thu, 29 Jul 2021 11:59:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5flF+5ZAHj9Ib5aztvmU79d3cUQK0UuD1CQ11vfGzwc=; b=BsIYC87mazIvp+/eV5Mj0xlcUr
	O9EDZvBtybLklpqAPtQBmoVtb1Bv5Obh/SjDAjnmAT2chtp5el+Vo68f8/gzir+2jXhZins+fUolg
	Ov7fZ9aYU5zq52v51dTXjpLEJ6mpWpwP1ptLqSDzII8W/+R1C7GsrWt5NCG1JA/IAwXaK3/Rc3JvD
	qAIpHSX5J90tqX1eRyEO10j4cXPeWxyfyRA+cxRx6T3xToCduH7IMXXz2LISm2UgyW4RbYbw3hjMI
	LCtM6PVNx/A6vKsV+hzUb4vOOdygwt3eXhTuJqIROzUtgvpAv/DDKQtgRxq3bj1QRXQwZqoeORjUf
	KBHR027g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m92o6-003kEN-DI; Thu, 29 Jul 2021 09:58:26 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m92o0-003kCa-In
 for barebox@lists.infradead.org; Thu, 29 Jul 2021 09:58:22 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1m92nz-00016U-9v; Thu, 29 Jul 2021 11:58:19 +0200
To: Renaud Barbier <renaud.barbier@abaco.com>, barebox@lists.infradead.org
References: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
 <1627476428-16318-2-git-send-email-renaud.barbier@abaco.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <138a77fb-5f88-3a94-1385-4adb743f91a7@pengutronix.de>
Date: Thu, 29 Jul 2021 11:58:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <1627476428-16318-2-git-send-email-renaud.barbier@abaco.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210729_025820_687230_35EAE775 
X-CRM114-Status: GOOD (  21.78  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE,URIBL_BLOCKED autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/4] ARM: atomic.h: add 64-bit counter support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 28.07.21 14:47, Renaud Barbier wrote:
> In preparation for the introduction of the FSL IFC nand driver
> for the layerscape CPU, add 64-bit counter support.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
> ---
>  include/asm-generic/atomic-long.h |  3 +-
>  include/asm-generic/atomic.h      | 49 +++++++++++++++++++++++++++++++
>  2 files changed, 51 insertions(+), 1 deletion(-)
> 
> diff --git a/include/asm-generic/atomic-long.h b/include/asm-generic/atomic-long.h
> index 322d510f38..dbb503e758 100644
> --- a/include/asm-generic/atomic-long.h
> +++ b/include/asm-generic/atomic-long.h
> @@ -65,7 +65,7 @@ static inline void atomic_long_sub(long i, atomic_long_t *l)
>  
>  	atomic64_sub(i, v);
>  }
> -
> +#if 0
>  static inline int atomic_long_sub_and_test(long i, atomic_long_t *l)
>  {
>  	atomic64_t *v = (atomic64_t *)l;
> @@ -128,6 +128,7 @@ static inline long atomic_long_add_unless(atomic_long_t *l, long a, long u)
>  
>  	return (long)atomic64_add_unless(v, a, u);
>  }
> +#endif

Why comment these out?

>  
>  #define atomic_long_inc_not_zero(l) atomic64_inc_not_zero((atomic64_t *)(l))
>  
> diff --git a/include/asm-generic/atomic.h b/include/asm-generic/atomic.h
> index 449cecaabc..6e63b8e8e7 100644
> --- a/include/asm-generic/atomic.h
> +++ b/include/asm-generic/atomic.h
> @@ -11,7 +11,55 @@
>  #ifdef CONFIG_SMP
>  #error SMP not supported
>  #endif
> +#define ATOMIC_INIT(i)	{ (i) }
> +
> +#ifdef CONFIG_64BIT
> +typedef struct { s64 counter; } atomic64_t;
> +
> +#define atomic64_read(v)	((v)->counter)
> +#define atomic64_set(v, i)	(((v)->counter) = (i))
> +
> +static inline void atomic64_add(s64 i, volatile atomic64_t *v)
> +{
> +	v->counter += i;
> +}
> +
> +static inline void atomic64_sub(s64 i, volatile atomic64_t *v)
> +{
> +	v->counter -= i;
> +}
> +
> +static inline void atomic64_inc(volatile atomic64_t *v)
> +{
> +	v->counter += 1;
> +}
> +
> +static inline void atomic64_dec(volatile atomic64_t *v)
> +{
> +	v->counter -= 1;
> +}
> +
> +static inline int atomic64_dec_and_test(volatile atomic64_t *v)
> +{
> +	s64 val;
> +
> +	val = v->counter;
> +	v->counter = val -= 1;
> +
> +	return val == 0;
> +}
>  
> +static inline int atomic64_add_negative(s64 i, volatile atomic64_t *v)
> +{
> +	s64 val;
> +
> +	val = v->counter;
> +	v->counter = val += i;
> +
> +	return val < 0;
> +}
> +
> +#else
>  typedef struct { volatile int counter; } atomic_t;
>  
>  #define ATOMIC_INIT(i)	{ (i) }
> @@ -63,6 +111,7 @@ static inline void atomic_clear_mask(unsigned long mask, unsigned long *addr)
>  {
>  	*addr &= ~mask;
>  }
> +#endif
>  
>  /* Atomic operations are already serializing on ARM */
>  #define smp_mb__before_atomic_dec()	barrier()
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

