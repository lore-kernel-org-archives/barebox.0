Delivery-date: Fri, 15 Nov 2024 21:16:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2jt-002Nfq-2g
	for lore@lore.pengutronix.de;
	Fri, 15 Nov 2024 21:16:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tC2jt-0006Js-7I
	for lore@pengutronix.de; Fri, 15 Nov 2024 21:16:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f5GcNLiEVE9sNQh+B8+V0yBHoneED1rDzFnSL++//UY=; b=vOKmBjKvptvcRUXBIKFX6jOvcP
	9zIh/FsmJObIJHepUUsiHiGnfys8cFkMp621RN3X793yNcmVOybe3rXCN/RXIx6yX2c72gWZpfwxD
	+DawQh90IKHjINTJ0Vs/NuWq9fk5bJZtMN2DEd/tSGD38hIPc/Z3iEjDdgjD0NjRmqo/KB0EQyBBQ
	wxJ3pQHo6Svj2PG20WsKPvPveXxpC0cK4CH/wsHjK3rYdjdJrtfjYZ1hnP0PlSKe2CUsi8n6zl3HZ
	PgTAr7PDeYGkTuJYyaEZdQ0uJBzShZ4uB1kYndUm+yRshGB1bdFjEka1HE4eyiNpE1HSsKN+yFPkw
	oDeL9HSw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2jP-000000040Ds-34ee;
	Fri, 15 Nov 2024 20:15:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tC2jM-000000040DT-2KjV
	for barebox@lists.infradead.org;
	Fri, 15 Nov 2024 20:15:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tC2jL-0006Am-8j; Fri, 15 Nov 2024 21:15:47 +0100
Message-ID: <a4c698d8-3279-471d-9476-652e9580b8c2@pengutronix.de>
Date: Fri, 15 Nov 2024 21:15:45 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>,
 s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20241114155115.594121-1-abdelrahmanyossef12@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241114155115.594121-1-abdelrahmanyossef12@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241115_121548_601880_4D3FB441 
X-CRM114-Status: GOOD (  22.72  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v4] of: fdt: fix possible overflow during parsing of fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 14.11.24 16:51, Abdelrahman Youssef wrote:
> While fuzzing, the name marked by FDT_BEGIN_NODE sometimes extends beyond
> the struct block area, causing a heap-overflow.
> 
> Since `maxlen` is an unsigned integer representing the length of name,
> It can be negative, so it overflows to large numbers, Causing strnlen()
> to overflow.
> 
> So we can just change the type of maxlen to signed and check if it's a
> non-positive value, because name has a minimum length of 1 byte ('\0').
> 
> Also in strnlen() we shouldn't check for bytes exceeding maxlen, so we can remove
> + 1 in strnlen(). We also change if (len > maxlen) to >= to count for the null
> terminator.
> 
> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> 
> ---
> v3 -> v4:
>   - replace maxlen < 0 to maxlen <= 0 (Sascha)
>   - remove + 1 in strnlen() (Sascha)
> v2 -> v3
>   - changed formatting
> v1 -> v2
>   - the overflow was due to integer overflow not out-of-bounds (Ahmad)
> ---
>  drivers/of/fdt.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 2c3ea31394..75af1844f3 100644
> --- a/drivers/of/fdt.c
> +++ b/drivers/of/fdt.c
> @@ -176,7 +176,7 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>  	void *dt_strings;
>  	struct fdt_header f;
>  	int ret;
> -	unsigned int maxlen;
> +	int maxlen;
>  	const struct fdt_header *fdt = infdt;
>  
>  	ret = fdt_parse_header(infdt, size, &f);
> @@ -210,8 +210,13 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>  			maxlen = (unsigned long)fdt + f.off_dt_struct +
>  				f.size_dt_struct - (unsigned long)name;
>  
> -			len = strnlen(name, maxlen + 1);
> -			if (len > maxlen) {
> +			if (maxlen <= 0) {
> +				ret = -ESPIPE;
> +				goto err;
> +			}
> +
> +			len = strnlen(name, maxlen);
> +			if (len >= maxlen) {
>  				ret = -ESPIPE;
>  				goto err;
>  			}


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


