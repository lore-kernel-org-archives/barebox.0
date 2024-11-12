Delivery-date: Tue, 12 Nov 2024 20:03:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAwB4-0017IQ-11
	for lore@lore.pengutronix.de;
	Tue, 12 Nov 2024 20:03:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tAwB3-0003ZO-LL
	for lore@pengutronix.de; Tue, 12 Nov 2024 20:03:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Slv1wGFB3sRXOQHmDtx+9/CM0a+dIY++KEE9eKx+49A=; b=goziPfY2FGAYl24rXh+deUM5t9
	Rajdn4BehmjAYKUispzF2YSIsKRnPjjtKiscOFPD1iPygkhu9HPmtBOgBTEx3yOc31unsK4a3dRdg
	jZjD3dzOr0cM0dcw6TUkA8147QMpZ2Dta0hzfgamdoXlCYyFn7oo2cqgDHsqun1ZaFmejG2rKTN4X
	JHpI2rcmoE3n9/7mMM2TODDKd5WApjCjVN3gEmnf5lLe15+rt+bGgQ2wUIdKX29L4eUpHi13XqZgV
	JfEa0flYjfotsEBiXYkgrE73lc9/moJe0KCnKWOiGj75oSaUzC1BIy4Ip7/DeV3v0r87E1UVkpi1P
	5+D4y1eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAwAT-00000004eIB-0SFl;
	Tue, 12 Nov 2024 19:03:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAwAO-00000004eGi-48v4
	for barebox@lists.infradead.org;
	Tue, 12 Nov 2024 19:03:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPV6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tAwAM-0003E2-Sp; Tue, 12 Nov 2024 20:03:07 +0100
Message-ID: <aa0834df-f4ed-406e-b7ba-6e69bd9c2563@pengutronix.de>
Date: Tue, 12 Nov 2024 20:03:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>,
 s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20241112162008.370231-1-abdelrahmanyossef12@gmail.com>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20241112162008.370231-1-abdelrahmanyossef12@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241112_110309_064811_156472DE 
X-CRM114-Status: GOOD (  21.82  )
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
Subject: Re: [PATCH 2/2] of: fdt: fix possible overflow during parsing of fdt
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello Abdelrahman,

Thanks for your patch.

On 12.11.24 17:20, Abdelrahman Youssef wrote:
> While fuzzing, the name marked by FDT_BEGIN_NODE sometimes extends beyond
> the struct block area, Causing a heap-overflow.
> 
> Since `maxlen` is an unsigned integer representing the length of name,
> It can be negative, So it overflows to large numbers, Causing strnlen()
> to overflow.
> 
> So we can just change the type of maxlen to signed and check if it's negative.
> 
> Signed-off-by: Abdelrahman Youssef <abdelrahmanyossef12@gmail.com>
> ---

Changelog would be nice for future patches.
Also use -v2 instead of -2 as argument to git format-patch / git send-email
(or let b4 handle revision increment).

>  drivers/of/fdt.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
> index 2c3ea31394..13d0b8be54 100644
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
> @@ -210,6 +210,12 @@ static struct device_node *__of_unflatten_dtb(const void *infdt, int size,
>  			maxlen = (unsigned long)fdt + f.off_dt_struct +
>  				f.size_dt_struct - (unsigned long)name;
>  
> +			if(maxlen < 0)
> +			{

Kernel coding style is space betewen if and (. Also move brace to same line as
the if statement. See the other if conditions in the file.

Cheers,
Ahmad

> +				ret = -ESPIPE;
> +				goto err;
> +			}
> +
>  			len = strnlen(name, maxlen + 1);
>  			if (len > maxlen) {
>  				ret = -ESPIPE;


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


