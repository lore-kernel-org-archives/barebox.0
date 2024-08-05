Delivery-date: Mon, 05 Aug 2024 12:24:47 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sautT-006SZ1-03
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 12:24:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sautS-0000Zj-EN
	for lore@pengutronix.de; Mon, 05 Aug 2024 12:24:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nPsr9FH6JzfAMJGXZ+IMpoGCTGUKEGI+EeyevekCh2s=; b=dym4vH9QRg38UC+Xf+Je3OHv8A
	6dwNBvf4y+A/N+N3sx32WtxHKAM5Q9gyzKxcbAoadhcNjfvR/NRI9Sv18owndK1LFUNpLekNvMVXS
	bCTKI6ezhDVSoA3zZnXtdHW5so5VtCrtBM03w3FMUO8P+vkZg3pA6yJpWbx172ea1vM6/ji+IMNXt
	ndD3HGfCyKdOhY/IUPS8w8X030Ma2Tnv5ooI2ocNrBGdXMzwmZR84c94HrhX4f8jLVJiMzx5prXDB
	HgToiq1hQilww2gK8ZdvoZy6kRBEawkGD/E6ABwPnzf4mFAAbg1MOTXSa8JNhvg8WNq7Qu04jee51
	esS4buCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saut0-0000000FUSk-0tuB;
	Mon, 05 Aug 2024 10:24:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauqo-0000000FTai-10EV
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 10:22:04 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sauqm-000058-Vu; Mon, 05 Aug 2024 12:22:01 +0200
Message-ID: <8ee416e7-3804-44e3-8047-d9c9a7bdfb0e@pengutronix.de>
Date: Mon, 5 Aug 2024 12:22:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-14-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-14-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_032202_356049_D25D1460 
X-CRM114-Status: GOOD (  15.36  )
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
Subject: Re: [PATCH v2 13/19] keytoc: Let openssl_error() take a format string
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> Make openssl_error() a bit more versatile.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/keytoc.c | 7 +++++--
>  1 file changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index 0883ca64f7..aa36ba02e1 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -25,11 +25,14 @@
>  
>  static int dts, standalone;
>  
> -static int openssl_error(const char *msg)
> +static int openssl_error(const char *fmt, ...)
>  {
> +	va_list va;
>  	unsigned long sslErr = ERR_get_error();
>  
> -	fprintf(stderr, "%s", msg);
> +	va_start(va, fmt);
> +	vfprintf(stderr, fmt, va);
> +	va_end(va);
>  	fprintf(stderr, ": %s\n",
>  		ERR_error_string(sslErr, 0));
>  

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



