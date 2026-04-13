Delivery-date: Mon, 13 Apr 2026 16:03:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCHtN-00BjoL-2z
	for lore@lore.pengutronix.de;
	Mon, 13 Apr 2026 16:03:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wCHtN-0004md-BD
	for lore@pengutronix.de; Mon, 13 Apr 2026 16:03:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CaCi0WfBOaopZqS9hhkOuH54K779XvDT9LKzBrPEPIA=; b=o7omLi6Rh5zRf1r+/PRVUvniuh
	/c6obwJ3NMqSQaM51K+UvoslLEchYXA6kyy376YOWP5FTQNgeozniy8lC36S6Pc0lrg9RvvUxcdm8
	+UKjcbgxUprEgnh4t0M5aQfr/7Op9i+3MpruxasFILzMy73RtH3Fpklwz63vpxPpqhGAQNvcgrVGC
	FcjwIMmMFI6OevhpH1KWCO/iXhyA21+I7khVM+W0O3ku3V+lo3YZ8WF4PQmQQUXfnQX9gazEZ6F/M
	Lh9rweBAzunJn6M6pDnryoQliUm2RnT5Q7X2IAibknDtCGDYP2KqMrHi3KrhIJI4ls018MtRC9XvV
	Ba5CgN3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCHsp-0000000FpRM-3Kat;
	Mon, 13 Apr 2026 14:03:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wCHsn-0000000FpQO-1F6F
	for barebox@lists.infradead.org;
	Mon, 13 Apr 2026 14:03:22 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wCHsl-0004fw-My; Mon, 13 Apr 2026 16:03:19 +0200
Message-ID: <6f52b23d-2c68-4694-bca3-de9e05bb1253@pengutronix.de>
Date: Mon, 13 Apr 2026 16:03:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260320135744.3624480-1-s.hauer@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260320135744.3624480-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260413_070321_339978_C4E42F5D 
X-CRM114-Status: GOOD (  17.15  )
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
	autolearn=ham autolearn_force=no version=3.4.2
Subject: Re: [PATCH] tee: drivers: rksecure: improve logging
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 3/20/26 2:57 PM, Sascha Hauer wrote:
> Add a pr_fmt string to give error messages more context. Also we have
> "invoke func failed with" message three times in the code, make them
> unique.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  drivers/tee/optee/rksecure.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/tee/optee/rksecure.c b/drivers/tee/optee/rksecure.c
> index e16f5c0882..06179d7841 100644
> --- a/drivers/tee/optee/rksecure.c
> +++ b/drivers/tee/optee/rksecure.c
> @@ -3,6 +3,8 @@
>   * Copyright (C) Pengutronix, Michael Tretter <m.tretter@pengutronix.de>
>   */
>  
> +#define pr_fmt(fmt) "rk-secure: " fmt
> +
>  #include <linux/tee_drv.h>
>  #include <linux/uuid.h>
>  #include <linux/array_size.h>
> @@ -86,7 +88,8 @@ int rk_secure_boot_get_info(struct rk_secure_boot_info *out)
>  	if (res)
>  		goto out;
>  	if (inv_arg.ret) {
> -		pr_err("invoke func failed with 0x%08x\n", inv_arg.ret);
> +		pr_err("invoke func PTA_RK_SECURE_BOOT_GET_INFO failed with 0x%08x\n",
> +		        inv_arg.ret);
>  		res = -EIO;
>  	}
>  
> @@ -147,7 +150,8 @@ int rk_secure_boot_burn_hash(const u8 *hash, u32 key_size_bits)
>  	if (res)
>  		goto out;
>  	if (inv_arg.ret) {
> -		pr_err("invoke func failed with 0x%08x\n", inv_arg.ret);
> +		pr_err("invoke func PTA_RK_SECURE_BOOT_BURN_HASH failed with 0x%08x\n",
> +		        inv_arg.ret);
>  		res = -EIO;
>  	}
>  
> @@ -184,7 +188,8 @@ int rk_secure_boot_lockdown_device(void)
>  	if (res)
>  		goto close_session;
>  	if (inv_arg.ret) {
> -		pr_err("invoke func failed with 0x%08x\n", inv_arg.ret);
> +		pr_err("invoke func PTA_RK_SECURE_BOOT_LOCKDOWN_DEVICE failed with 0x%08x\n",
> +		        inv_arg.ret);
>  		res = -EIO;
>  	}
>  

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



