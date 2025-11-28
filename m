Delivery-date: Fri, 28 Nov 2025 10:36:30 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOuty-005jve-2I
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 10:36:30 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOuty-00012O-3m
	for lore@pengutronix.de; Fri, 28 Nov 2025 10:36:30 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Vsm3E8UDnJLfwm1pQJfYB3h90ly+/M46a3l5xGwjfJ8=; b=c9teqr+en9GjlgXcvziiywwi0K
	XeYldA32ewokm7cRYHYphqpjulscSM2HkVNG9iDqm0vEpjUhheNax85+WkDEyTpNpfQ4Zs6nBNcPc
	jdFKp0PSZ0M1SM8kt7/Xb8rI4KfZjgf69OvTZcDztIurhZVutsZwVQ1ALOZkUmBou5Bl409bcn6Fb
	BZN1GODf+gNhY7ZaTfs37k+UzTqHyPuvzYIoz2+ffceA0XjFzrx3oIMJFgaYckxDLiWUTn2ASFBrC
	kcbrsPm3PUeWmCmtcinYOPkrYSACvcka2PdFLpsHe5GjfsFPSRJ/W4qtm8eQnbjpfnGzHH06C5GI3
	7fe7IGyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOutK-00000000Ec8-2vZR;
	Fri, 28 Nov 2025 09:35:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOutI-00000000Ebl-0mIn
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 09:35:49 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vOutF-0000vk-9u; Fri, 28 Nov 2025 10:35:45 +0100
Message-ID: <d9e0dfea-6f2b-44dc-9feb-b552f12a5c90@pengutronix.de>
Date: Fri, 28 Nov 2025 10:35:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sohaib Mohamed <sohaib.amhmd@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251128-avenger96-v1-0-009b13bd8df7@gmail.com>
 <20251128-avenger96-v1-1-009b13bd8df7@gmail.com>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251128-avenger96-v1-1-009b13bd8df7@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_013548_252780_E687A898 
X-CRM114-Status: GOOD (  17.65  )
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
X-Spam-Status: No, score=-1.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,SUBJECT_IN_BLACKLIST,
	SUBJECT_IN_BLOCKLIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] common: bbu: refactor flash operations into separate
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 11/28/25 1:51 AM, Sohaib Mohamed wrote:
> Extract flash logic (protect, erase, write) from bbu_std_file_handler()
> into a new flash() function that accepts an offset parameter, so it can
> be used from further barebox update handlers as well.
> 
> Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/bbu.c  | 17 +++++++++++------
>  include/bbu.h |  2 ++
>  2 files changed, 13 insertions(+), 6 deletions(-)
> 
> diff --git a/common/bbu.c b/common/bbu.c
> index 03261583fe..39db87e823 100644
> --- a/common/bbu.c
> +++ b/common/bbu.c
> @@ -431,8 +431,7 @@ int bbu_mmcboot_register_handler(const char *name,
>  	return ret;
>  }
>  
> -int bbu_std_file_handler(struct bbu_handler *handler,
> -			 struct bbu_data *data)
> +int bbu_flash(struct bbu_data *data, loff_t offset)
>  {
>  	int fd, ret;
>  	struct stat s;
> @@ -458,25 +457,25 @@ int bbu_std_file_handler(struct bbu_handler *handler,
>  	if (fd < 0)
>  		return fd;
>  
> -	ret = protect(fd, data->len, 0, 0);
> +	ret = protect(fd, data->len, offset, 0);
>  	if (ret && (ret != -ENOSYS) && (ret != -ENOTSUPP)) {
>  		printf("unprotecting %s failed with %pe\n", data->devicefile,
>  				ERR_PTR(ret));
>  		goto err_close;
>  	}
>  
> -	ret = erase(fd, data->len, 0, ERASE_TO_WRITE);
> +	ret = erase(fd, data->len, offset, ERASE_TO_WRITE);
>  	if (ret && ret != -ENOSYS) {
>  		printf("erasing %s failed with %pe\n", data->devicefile,
>  				ERR_PTR(ret));
>  		goto err_close;
>  	}
>  
> -	ret = write_full(fd, data->image, data->len);
> +	ret = pwrite_full(fd, data->image, data->len, offset);
>  	if (ret < 0)
>  		goto err_close;
>  
> -	protect(fd, data->len, 0, 1);
> +	protect(fd, data->len, offset, 1);
>  
>  	ret = 0;
>  
> @@ -486,6 +485,12 @@ int bbu_std_file_handler(struct bbu_handler *handler,
>  	return ret;
>  }
>  
> +int bbu_std_file_handler(struct bbu_handler *handler,
> +			 struct bbu_data *data)
> +{
> +	return bbu_flash(data, 0);
> +}
> +
>  static int bbu_std_file_handler_checked(struct bbu_handler *handler,
>  					struct bbu_data *data)
>  {
> diff --git a/include/bbu.h b/include/bbu.h
> index 94006563c9..f5b74b32ac 100644
> --- a/include/bbu.h
> +++ b/include/bbu.h
> @@ -56,6 +56,8 @@ int bbu_mmcboot_handler(struct bbu_handler *, struct bbu_data *,
>  int bbu_std_file_handler(struct bbu_handler *handler,
>  			 struct bbu_data *data);
>  
> +int bbu_flash(struct bbu_data *data, loff_t offset);
> +
>  #ifdef CONFIG_BAREBOX_UPDATE
>  
>  bool bbu_handlers_available(void);
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



