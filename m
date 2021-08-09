Delivery-date: Mon, 09 Aug 2021 13:02:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD33G-0002tl-CH
	for lore@lore.pengutronix.de; Mon, 09 Aug 2021 13:02:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mD33F-0003ZO-C4
	for lore@pengutronix.de; Mon, 09 Aug 2021 13:02:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9N6qj8GFMxpELvXTZDkFymmMFJ78jpR2Pn/5PgF7OyA=; b=YpTWO7381VVUuDEstBfIduwHmt
	Bnt3rpGJnpRdnMXElJcAAodlEHDTYG9RlEDkvxdEUq4/Dy7BXE4+Ytr26vdP5AVJq/19plqVjtFGb
	6GGeZjuqr59AuJJx8K7KNXsQXLBvGhwT/ONr9B978QKtW8GcmJbjF72WxlaQm9PV+u73cWZS5MNTC
	zIE4Q+4rTa18E6jR4NNzJt07XiXX30GyJetYIUI/LMzMdAwy8hCEYsLjW/hUZK6ji48QDSvbNNMmr
	dPwZ7SqsNZG14jyN1NUhOk7zRAYpWBb9H9XmWTJpBCsrleInJFihunzRG+IkTGeGekwJLx8uQ4/jq
	K1hem2Bw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mD31u-000HAe-2P; Mon, 09 Aug 2021 11:01:14 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mD31o-000H9W-RN
 for barebox@lists.infradead.org; Mon, 09 Aug 2021 11:01:10 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mD31n-0003Lt-FM; Mon, 09 Aug 2021 13:01:07 +0200
To: Renaud Barbier <renaud.barbier@abaco.com>, barebox@lists.infradead.org
References: <1627900804-15814-1-git-send-email-renaud.barbier@abaco.com>
 <1627900804-15814-2-git-send-email-renaud.barbier@abaco.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5f511429-45c0-0a69-0690-24562bd93f69@pengutronix.de>
Date: Mon, 9 Aug 2021 13:01:07 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <1627900804-15814-2-git-send-email-renaud.barbier@abaco.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_040108_948588_AF0BDB44 
X-CRM114-Status: GOOD (  23.19  )
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
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/3] ARM: atomic.h: add 64-bit counter support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 02.08.21 12:40, Renaud Barbier wrote:
> In preparation for the introduction of the FSL IFC nand driver
> for the layerscape CPU, add 64-bit counter support.
> 
> Remove functions calling undefined functions.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
> ---
>  include/asm-generic/atomic-long.h | 63 -------------------------------
>  include/asm-generic/atomic.h      | 49 ++++++++++++++++++++++++
>  2 files changed, 49 insertions(+), 63 deletions(-)
> 
> diff --git a/include/asm-generic/atomic-long.h b/include/asm-generic/atomic-long.h
> index 322d510f38..fd1fdad20f 100644
> --- a/include/asm-generic/atomic-long.h
> +++ b/include/asm-generic/atomic-long.h
> @@ -66,69 +66,6 @@ static inline void atomic_long_sub(long i, atomic_long_t *l)
>  	atomic64_sub(i, v);
>  }
>  
> -static inline int atomic_long_sub_and_test(long i, atomic_long_t *l)
> -{
> -	atomic64_t *v = (atomic64_t *)l;
> -
> -	return atomic64_sub_and_test(i, v);
> -}
> -
> -static inline int atomic_long_dec_and_test(atomic_long_t *l)
> -{
> -	atomic64_t *v = (atomic64_t *)l;
> -
> -	return atomic64_dec_and_test(v);
> -}
> -
> -static inline int atomic_long_inc_and_test(atomic_long_t *l)
> -{
> -	atomic64_t *v = (atomic64_t *)l;
> -
> -	return atomic64_inc_and_test(v);
> -}
> -
> -static inline int atomic_long_add_negative(long i, atomic_long_t *l)
> -{
> -	atomic64_t *v = (atomic64_t *)l;
> -
> -	return atomic64_add_negative(i, v);
> -}
> -
> -static inline long atomic_long_add_return(long i, atomic_long_t *l)
> -{
> -	atomic64_t *v = (atomic64_t *)l;
> -
> -	return (long)atomic64_add_return(i, v);
> -}
> -
> -static inline long atomic_long_sub_return(long i, atomic_long_t *l)
> -{
> -	atomic64_t *v = (atomic64_t *)l;
> -
> -	return (long)atomic64_sub_return(i, v);
> -}
> -
> -static inline long atomic_long_inc_return(atomic_long_t *l)
> -{
> -	atomic64_t *v = (atomic64_t *)l;
> -
> -	return (long)atomic64_inc_return(v);
> -}
> -
> -static inline long atomic_long_dec_return(atomic_long_t *l)
> -{
> -	atomic64_t *v = (atomic64_t *)l;
> -
> -	return (long)atomic64_dec_return(v);
> -}
> -
> -static inline long atomic_long_add_unless(atomic_long_t *l, long a, long u)
> -{
> -	atomic64_t *v = (atomic64_t *)l;
> -
> -	return (long)atomic64_add_unless(v, a, u);
> -}
> -

No one is using the deleted atomic_long_ functions. So that's ok.

>  #define atomic_long_inc_not_zero(l) atomic64_inc_not_zero((atomic64_t *)(l))
>  
>  #define atomic_long_cmpxchg(l, old, new) \
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

That's a very awkward way to write

return --v->counter == 0;

But I see you just copied the 32 bit variants, so:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

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

