Delivery-date: Thu, 28 Oct 2021 08:47:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfzBz-0007tJ-F2
	for lore@lore.pengutronix.de; Thu, 28 Oct 2021 08:47:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mfzBy-0000LM-Hp
	for lore@pengutronix.de; Thu, 28 Oct 2021 08:47:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:Subject:From:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=KPSOkwpmh2xGbjoPjCX/3/77b1jkHiQeJ+Ure+xhlzI=; b=n8ZvO4ekniRpzmPo0rRnz7/scv
	4uVWgrPndb9Gbbxf3GL02X7JssDSH4oY/bmmXMDTYygshQ0tdanWjIvoBQdU5wc1+Z/DUc790E6rK
	9/C44jr7cri6hu1tJRlQbWf8sShsYdeMpjqWHZ5e1Yit2hjE8yBYRWkWvaTbj+UiSb0BXTUAqb9oR
	ZHZT7jIzKMQowUyTHO7T/FSeOixmNYrsIojNEEDODZ4jBxD5KhkTc1g7MWJM3Z8IQIQ/6kaumRZ1D
	BoC0GjgQfFHI8jFYqSsRiw7pu+4sVbSxPwokHDvKJ3NMd7+/tXtBmrp7+8Oe81vynQDfWvb+S8MAA
	LfQR2U4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mfzAH-0070lc-08; Thu, 28 Oct 2021 06:45:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mfzAA-0070kA-VR
 for barebox@lists.infradead.org; Thu, 28 Oct 2021 06:45:24 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>)
 id 1mfzA7-0008MW-Hp; Thu, 28 Oct 2021 08:45:19 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: Antony Pavlov <antonynpavlov@gmail.com>, barebox@lists.infradead.org
References: <20211028012816.929611-1-antonynpavlov@gmail.com>
 <20211028012816.929611-5-antonynpavlov@gmail.com>
Message-ID: <b5e0ee1b-3bee-af9b-b1de-20ed44acc35b@pengutronix.de>
Date: Thu, 28 Oct 2021 08:45:19 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20211028012816.929611-5-antonynpavlov@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211027_234523_046567_61407400 
X-CRM114-Status: GOOD (  23.30  )
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
X-Spam-Status: No, score=-6.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,NICE_REPLY_A,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/4] bareboximd: make the '-c' option work again
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello Antony,

On 28.10.21 03:28, Antony Pavlov wrote:
> bareboximd with the '-c' option craches while
> trying to alter an image file, e.g.:
> 
>     barebox$ git describe
>     v2021.10.0-125-gd136ec5ac6
>     barebox$ make ARCH=arm CROSS_COMPILE=aarch64-linux-gnu- imx_v8_defconfig
>     ...
>     barebox$ make ARCH=arm CROSS_COMPILE=aarch64-linux-gnu-
>     ...
>     images built:
>     barebox-nxp-imx8mm-evk.img
>     barebox-prt-prt8mm.img
>     barebox-nxp-imx8mn-evk.img
>     barebox-nxp-imx8mp-evk.img
>     barebox-nxp-imx8mq-evk.img
>     barebox-zii-imx8mq-dev.img
>     barebox-phytec-phycore-imx8mq.img
>     barebox$ ./scripts/bareboximd images/barebox-phytec-phycore-imx8mq.img
>     build: #1 Thu Oct 28 01:11:07 UTC 2021
>     buildsystem version:
>     crc32: 0x00000000
>     release: 2021.10.0-00125-gd136ec5ac6
>     barebox$ ./scripts/bareboximd -c images/barebox-phytec-phycore-imx8mq.img
>     Segmentation fault (core dumped)
> 
> The problem is that the bareboximd uses mmap() on an image file
> in read-only mode.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  scripts/bareboximd.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/bareboximd.c b/scripts/bareboximd.c
> index c3dcb4dcf0..fe0d274380 100644
> --- a/scripts/bareboximd.c
> +++ b/scripts/bareboximd.c
> @@ -97,7 +97,7 @@ static int read_file_2(const char *filename, size_t *size, void **outbuf, size_t
>  		goto close;
>  	}
>  
> -	buf = mmap(NULL, max_size, PROT_READ, MAP_SHARED, fd, 0);
> +	buf = mmap(NULL, max_size, PROT_READ | PROT_WRITE, MAP_SHARED, fd, 0);

I think this here only works incidentally, by failing and then doing a malloc. See mmap(2):

Errors: EACCES    MAP_SHARED was requested and PROT_WRITE is set, but fd is  not  open 
                  in  read/write  (O_RDWR)  mode.

Correct would be MAP_PRIVATE. I sent a patch to that effect yesterday:
https://lore.barebox.org/barebox/20211027060150.28184-1-a.fatoum@pengutronix.de/T/#u

>  	if (buf == MAP_FAILED ) {
>  		buf = malloc(max_size);
>  		if (!buf) {
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

