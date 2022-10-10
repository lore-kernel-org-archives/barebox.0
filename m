Delivery-date: Mon, 10 Oct 2022 09:11:00 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmwH-0036FK-BD
	for lore@lore.pengutronix.de; Mon, 10 Oct 2022 09:11:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ohmwF-0000SZ-52
	for lore@pengutronix.de; Mon, 10 Oct 2022 09:10:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0g8YPaNVwmgiwSLOser/xP/8tZWdAg8Ki4q3iBJYyJA=; b=ACbSLP8evD8e2CAw1Cv0lNTnvR
	ocr5Fa6YyB1USuPXl/dZKAoHDk9zFP+ppupeF7fnRJuvqq6nFkKL3AtyDPNyAnDpy3PyXAT9a81hd
	GzQOFHhPRSEFZsffRrTRqDxn0oX1anRDSb6hDfx48tGeDw+J6Tg8wdJYj68eiFPoS6/x6wNYwIy2H
	V1/gPkFLFtpN8bu3tJGsIOEtYB3deaYiZwq7WVHLjqD8WvrHzD2xCSzCqFucYf22K2xASLduXzgO7
	6eDqTOzULptDT09G9OHim26b1QoSbosyEOqBMAXkzTrnOKXbDaYImtC0FwCyqCeqOOKLL9erS5ubU
	9pk07T6w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmug-00HKhc-6a; Mon, 10 Oct 2022 07:09:22 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ohmub-00HKgP-Iu
	for barebox@lists.infradead.org; Mon, 10 Oct 2022 07:09:19 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ohmuY-00004s-PE; Mon, 10 Oct 2022 09:09:14 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ohmuY-0005W4-Hp; Mon, 10 Oct 2022 09:09:14 +0200
Date: Mon, 10 Oct 2022 09:09:14 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221010070914.GD986@pengutronix.de>
References: <20221010060510.2082414-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221010060510.2082414-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221010_000917_642891_978291F6 
X-CRM114-Status: GOOD (  20.40  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH master] efi: payload: image: fix commandline-less boot
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Oct 10, 2022 at 08:05:10AM +0200, Ahmad Fatoum wrote:
> linux_bootargs_get() may return NULL, in that case we should avoid
> calling strlen on it.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/efi/payload/image.c | 14 +++++++++-----
>  1 file changed, 9 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/common/efi/payload/image.c b/common/efi/payload/image.c
> index e63da9ddf06f..8e39098ae81b 100644
> --- a/common/efi/payload/image.c
> +++ b/common/efi/payload/image.c
> @@ -133,9 +133,11 @@ static int efi_execute_image(const char *file)
>  		pr_debug("Linux kernel detected. Adding bootargs.");
>  		options = linux_bootargs_get();
>  		pr_err("add linux options '%s'\n", options);
> -		loaded_image->load_options = xstrdup_char_to_wchar(options);
> -		loaded_image->load_options_size =
> -			(strlen(options) + 1) * sizeof(wchar_t);
> +		if (options) {
> +			loaded_image->load_options = xstrdup_char_to_wchar(options);
> +			loaded_image->load_options_size =
> +				(strlen(options) + 1) * sizeof(wchar_t);
> +		}
>  		shutdown_barebox();
>  	}
>  
> @@ -227,8 +229,10 @@ static int do_bootm_efi(struct image_data *data)
>  	}
>  
>  	options = linux_bootargs_get();
> -	boot_header->cmd_line_ptr = (uint64_t)options;
> -	boot_header->cmdline_size = strlen(options);
> +	if (options) {
> +		boot_header->cmd_line_ptr = (uint64_t)options;
> +		boot_header->cmdline_size = strlen(options);
> +	}
>  
>  	boot_header->code32_start = (uint64_t)loaded_image->image_base +
>  			(image_header->setup_sects+1) * 512;
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


