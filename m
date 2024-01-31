Delivery-date: Wed, 31 Jan 2024 18:16:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVECG-00E59q-1f
	for lore@lore.pengutronix.de;
	Wed, 31 Jan 2024 18:16:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rVECH-0008SF-3N
	for lore@pengutronix.de; Wed, 31 Jan 2024 18:16:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ELd0ZKHojUUY8lgyWq53XOpJQNRI0/yMPGVEE+NbOEo=; b=bdG1mT9RwZfgHwWIrfDEc/W44z
	ZTDyE93+MPKKIlADC/EzXbWvRtcZCabgqHAt66fU+vX5zZQifzGbq6gJJNsT8l7jHQz9DChSnyUrX
	8bwT6DMKxbQMmADMnc5lwQuDuxKfqbHlTdjskgWtYXwyn9GrKl/lcUdgqmHMGNhzVft1BQucSBUZm
	koHXmBU2AmK+echkUeMyVR0gO5sqP/ZVL9FcyWrp4QaHy7VYwkhdqyXVYTZXKewTCcd29HvPcA9Zi
	FpH18vDAgYpm9KBYGTx3gGilJizdTVCRE8nyLFp5T16jqTgRvuK0CxdTa7dNCo7RGXcMDVcVZdluK
	j4HnpgLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVEBo-00000004mrf-4ACJ;
	Wed, 31 Jan 2024 17:15:56 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rVEBm-00000004mq9-2Tv7
	for barebox@lists.infradead.org;
	Wed, 31 Jan 2024 17:15:55 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rVEBj-0008NI-Uu; Wed, 31 Jan 2024 18:15:52 +0100
Message-ID: <7ff7301e-1594-40c0-8c39-bbd51ee53b54@pengutronix.de>
Date: Wed, 31 Jan 2024 18:15:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Stefan Kerkmann <s.kerkmann@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240131-fix-fdt-memory-safety-v1-0-3d3a2c797eec@pengutronix.de>
 <20240131-fix-fdt-memory-safety-v1-1-3d3a2c797eec@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240131-fix-fdt-memory-safety-v1-1-3d3a2c797eec@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240131_091554_664143_E7C3988D 
X-CRM114-Status: GOOD (  20.68  )
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
X-Spam-Status: No, score=-5.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] of: fdt: fix memory leak in fdt_ensure_space
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Stefan,

On 31.01.24 17:56, Stefan Kerkmann wrote:
> If the reallocation failed the old memory remains allocated and is never
> freed, this is fixed by freeing the old memory on error.
> 
> Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
> ---
>  drivers/of/fdt.c | 27 ++++++++++++++++++++-------
>  1 file changed, 20 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 5c21bab5de..4f79a6120f 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -375,24 +375,37 @@ static void *memalign_realloc(void *orig, size_t oldsize, size_t newsize)
>  
>  static int fdt_ensure_space(struct fdt *fdt, int dtsize)
>  {
> +	size_t new_size;
> +	void *previous;
> +
>  	/*
>  	 * We assume strings and names have a maximum length of 1024
>  	 * whereas properties can be longer. We allocate new memory
>  	 * if we have less than 1024 bytes (+ the property size left.
>  	 */
>  	if (fdt->str_size - fdt->str_nextofs < 1024) {
> -		fdt->strings = realloc(fdt->strings, fdt->str_size * 2);
> -		if (!fdt->strings)
> +		previous = fdt->strings;
> +		new_size = fdt->str_size * 2;
> +
> +		if ((fdt->strings = realloc(previous, new_size)) == NULL) {

IMO, it's less readable this way. I'd prefer we leave the realloc line and
then !fdt->strings check on separate lines as before.

> +			free(previous);

This could happen later in the callers (look for out_free) if one wouldn't
set fdt->strings to NULL on error. I don't feel strongly either way, so doing
it this way is fine too.

Change looks good otherwise, so with first comment addressed:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Cheers,
Ahmad

>  			return -ENOMEM;
> -		fdt->str_size *= 2;
> +		}
> +
> +		fdt->str_size = new_size;
>  	}
>  
>  	if (fdt->dt_size - fdt->dt_nextofs < 1024 + dtsize) {
> -		fdt->dt = memalign_realloc(fdt->dt, fdt->dt_size,
> -				fdt->dt_size * 2);
> -		if (!fdt->dt)
> +		previous = fdt->dt;
> +		new_size = fdt->dt_size * 2;
> +
> +		if ((fdt->dt = memalign_realloc(previous, fdt->dt_size,
> +						new_size)) == NULL) {
> +			free(previous);
>  			return -ENOMEM;
> -		fdt->dt_size *= 2;
> +		}
> +
> +		fdt->dt_size = new_size;
>  	}
>  
>  	return 0;
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



