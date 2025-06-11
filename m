Delivery-date: Wed, 11 Jun 2025 10:09:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPGWN-0065QG-1u
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 10:09:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPGWM-0003H5-TU
	for lore@pengutronix.de; Wed, 11 Jun 2025 10:09:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4kZfJ0bn/Ft/PZvPzEAG9jxK7DV8XBuDf29ISb+Qhwc=; b=rv6uEvaGC+77Pj5kM71KBHUK1+
	CL82NYb4XE/RI5lUVvk+Li4MmEfrwxsvV/9zn7a9NxHE+N4uP8tuFRCQ5QiXRag0hYkbTPadhwxEQ
	v+2UpIqdhTC/mcDajz1HLHC/VMdKyTPBeNj8/drKTOVA/0SjblJpiKO9bNgsRMyrVni6rFITEKUgR
	Om7SOLlQEBeqGE/A/caKnSOMEYGhpZjtzzjm9NB3Et/JZ4iXQfuMgqQ8yimZDQoVM5O/kYVqb9CaS
	BcppkUNPeWD9+Wlq89mdqy2faI1QeHmd5g5yrAN0bX0UYHDr1JJor1WJHgyvDllMis03yh8Yfd+VT
	N9WPgWfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPGW9-00000009Dgg-2xGt;
	Wed, 11 Jun 2025 08:09:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFTC-000000093wc-0wrp
	for barebox@bombadil.infradead.org;
	Wed, 11 Jun 2025 07:01:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=4kZfJ0bn/Ft/PZvPzEAG9jxK7DV8XBuDf29ISb+Qhwc=; b=j3BZD826vLu39coZdZXyRP/KOd
	d+/tBxzKcYVAcdA7IlXweIBUl3czaHwSPRba/WV98OQyR74YFejbTgU1gs1uXnQ2ldNkifb8hNSDu
	zINRTuIiiUT3SXyWcyzL0pKbB+MstfeoKmRJoJT10cfcx2ZUUl2HB02RodGqpjCtlTPJK9cOlQQGI
	XTm/yOIuPhyUDHNbW+OvgxxR71yho9uwZTkTqEPfFKMsLSl3rRouIRgeY7GHPEsuj+qQc9U7lPNrw
	BXpOrdcW8I0QFtrkt4CQ1ZKt0i+eueaL2WHTfyCjmQBq5bw6REl4JcIZxpg/i+QoxMdL8dcRYbHFZ
	cBoEUEAg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPFT9-000000029MU-2ylT
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 07:01:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uPFT8-0007vW-0s; Wed, 11 Jun 2025 09:01:54 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uPFT7-002u6j-2h;
	Wed, 11 Jun 2025 09:01:53 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uPFT7-006kdb-2Q;
	Wed, 11 Jun 2025 09:01:53 +0200
Date: Wed, 11 Jun 2025 09:01:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aEkp4dL0rDnzBj0F@pengutronix.de>
References: <20250611063910.754462-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250611063910.754462-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_080156_330227_C657621B 
X-CRM114-Status: GOOD (  24.88  )
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
Subject: Re: [PATCH master] of: fdt: fix overflowing in dt_struct_advance
 arguments
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Jun 11, 2025 at 08:39:10AM +0200, Ahmad Fatoum wrote:
> While dt_struct_advance was taking care to check its arguments don't
> overflow their type, the addition of len (that is read from the FDT)
> to a constant was already overflowing before the function was called.
> 
> Move all additions with untrusted input into the function to fix this.
> 
> This resolves crashes detected by libfuzzer when the digest functions
> were ultimately called with a length of -1 == 0xffffffff.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/fdt.c | 20 ++++++++++++--------
>  1 file changed, 12 insertions(+), 8 deletions(-)

This conflicts with https://lore.kernel.org/all/20250605112607.1970520-2-a.fatoum@pengutronix.de/
which is currently not in master. So it's all or nothing.

Sascha

> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 84a36c77bbf0..f2f4aa03de2d 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -33,11 +33,15 @@ static inline bool __dt_ptr_ok(const struct fdt_header *fdt, const void *p,
>  }
>  #define dt_ptr_ok(fdt, p) __dt_ptr_ok(fdt, p, sizeof(*(p)), __alignof__(*(p)))
>  
> -static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, uint32_t size)
> +static inline uint32_t dt_struct_advance(struct fdt_header *f, uint32_t dt, uint32_t size,
> +					 uint32_t increment)
>  {
>  	if (check_add_overflow(dt, size, &dt))
>  		return 0;
>  
> +	if (check_add_overflow(dt, increment, &dt))
> +		return 0;
> +
>  	dt = ALIGN(dt, 4);
>  	if (dt > f->off_dt_struct + f->size_dt_struct)
>  		return 0;
> @@ -229,7 +233,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>  			}
>  
>  			dt_struct = dt_struct_advance(&f, dt_struct,
> -					sizeof(struct fdt_node_header) + len + 1);
> +					sizeof(struct fdt_node_header) + 1, len);
>  			if (!dt_struct) {
>  				ret = -ESPIPE;
>  				goto err;
> @@ -262,7 +266,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>  
>  			node = node->parent;
>  
> -			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
> +			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE, 0);
>  			if (!dt_struct) {
>  				ret = -ESPIPE;
>  				goto err;
> @@ -287,7 +291,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>  			}
>  
>  			dt_struct = dt_struct_advance(&f, dt_struct,
> -					sizeof(struct fdt_property) + len);
> +					sizeof(struct fdt_property), len);
>  			if (!dt_struct) {
>  				ret = -ESPIPE;
>  				goto err;
> @@ -305,7 +309,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>  			break;
>  
>  		case FDT_NOP:
> -			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
> +			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE, 0);
>  			if (!dt_struct) {
>  				ret = -ESPIPE;
>  				goto err;
> @@ -776,7 +780,7 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
>  				return 0;
>  
>  			dt_struct = dt_struct_advance(&f, dt_struct,
> -					sizeof(struct fdt_node_header) + 1);
> +					sizeof(struct fdt_node_header), 1);
>  			if (!dt_struct)
>  				return 0;
>  
> @@ -803,7 +807,7 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
>  				return 0;
>  
>  			dt_struct = dt_struct_advance(&f, dt_struct,
> -						      sizeof(struct fdt_property) + len);
> +						      sizeof(struct fdt_property), len);
>  			if (!dt_struct)
>  				return 0;
>  
> @@ -813,7 +817,7 @@ int fdt_machine_is_compatible(const struct fdt_header *fdt, size_t fdt_size, con
>  			return fdt_string_is_compatible(fdt_prop->data, len, compat, compat_len);
>  
>  		case FDT_NOP:
> -			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE);
> +			dt_struct = dt_struct_advance(&f, dt_struct, FDT_TAGSIZE, 0);
>  			if (!dt_struct)
>  				return 0;
>  			break;
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


