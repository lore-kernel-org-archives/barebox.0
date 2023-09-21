Delivery-date: Thu, 21 Sep 2023 14:12:59 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIYG-005rPt-7l
	for lore@lore.pengutronix.de; Thu, 21 Sep 2023 14:12:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qjIYD-0005CI-SM
	for lore@pengutronix.de; Thu, 21 Sep 2023 14:12:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=n9+4Kg7ifkln1b0hjPQiQ4AeSTFNq0QFZE4Gwe5K3eQ=; b=AGn+lpaGQDx3XFs+r9bJXw7jw6
	0JcJ097IYtSiFOiuwbB13JxZTF7F5YmuY/dPBpmy+yHFurAnCYjT4iPfnMaUq4DvTrEaD8oODTKT5
	5C1A0scNO6XEEWGYHXeX6fB2K5PZze3DA4RyjxHhZFsmPeQ2aQ1rQNw6WziI+IEbHnCxQuGMA10it
	+806FQ6vC58+1yuW9vjXgeh5t37uUeUuudKx5SkD9kN+4hd8Di7S25O+VEF5MWlO5yfoWcwjx/oie
	DvxCsxcOVvGWZbQ1CtEyDQWfsETO3EcErGxlpd0crS7Zgk5xIebYI6qt8zJhdd8f1+6zrCr7dIeyr
	K+8fRVJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIXE-005z1S-1w;
	Thu, 21 Sep 2023 12:11:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qjIXB-005z0H-0W
	for barebox@lists.infradead.org;
	Thu, 21 Sep 2023 12:11:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIX9-0004px-Rz; Thu, 21 Sep 2023 14:11:51 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIX9-007vFi-E7; Thu, 21 Sep 2023 14:11:51 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qjIX9-00AktF-9G; Thu, 21 Sep 2023 14:11:51 +0200
Date: Thu, 21 Sep 2023 14:11:51 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230921121151.GM637806@pengutronix.de>
References: <20230921094354.265824-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230921094354.265824-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230921_051153_199608_C1379560 
X-CRM114-Status: GOOD (  22.40  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] include: asm-generic/atomic.h: always define
 atomic/atomic_64
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Thu, Sep 21, 2023 at 11:43:53AM +0200, Ahmad Fatoum wrote:
> 64-bit accesses are always atomic in barebox, because we have nothing
> that would interrupt them. Thus define them unconditionally in the
> asm-generic header. This shows that an include for the s64 time is
> missing, so add that as well.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  include/asm-generic/atomic.h | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/include/asm-generic/atomic.h b/include/asm-generic/atomic.h
> index 45fc5da57594..27b0f73b487b 100644
> --- a/include/asm-generic/atomic.h
> +++ b/include/asm-generic/atomic.h
> @@ -8,12 +8,13 @@
>  #ifndef __ASM_GENERIC_ATOMIC_H
>  #define __ASM_GENERIC_ATOMIC_H
>  
> +#include <linux/types.h>
> +
>  #ifdef CONFIG_SMP
>  #error SMP not supported
>  #endif
>  #define ATOMIC_INIT(i)	{ (i) }
>  
> -#ifdef CONFIG_64BIT
>  typedef struct { s64 counter; } atomic64_t;
>  
>  #define atomic64_read(v)	((v)->counter)
> @@ -59,7 +60,7 @@ static inline int atomic64_add_negative(s64 i, volatile atomic64_t *v)
>  	return val < 0;
>  }
>  
> -#else
> +
>  typedef struct { volatile int counter; } atomic_t;
>  
>  #define ATOMIC_INIT(i)	{ (i) }
> @@ -114,7 +115,6 @@ static inline void atomic_clear_mask(unsigned long mask, unsigned long *addr)
>  {
>  	*addr &= ~mask;
>  }
> -#endif
>  
>  /* Atomic operations are already serializing on ARM */
>  #define smp_mb__before_atomic_dec()	barrier()
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


