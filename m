Delivery-date: Mon, 15 Dec 2025 12:27:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6jm-00Bj5J-2h
	for lore@lore.pengutronix.de;
	Mon, 15 Dec 2025 12:27:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vV6jm-0005rJ-8F
	for lore@pengutronix.de; Mon, 15 Dec 2025 12:27:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3odmue4cenaZsGAtAG2f5E4SpbYjeCflz3p0Xug/wD0=; b=EfkehGbR6qBVDD24pLGKqIFFg+
	of+eixii7zcPqWwUKe7fO0deVQml2HZMzudWccDt8fpxzYtmBkzMlzFhMbVMaV2gh+7PIq6BsGSFA
	glYG709HPWElBOcEoO7IBMNLuL3YnNtTsQv6CF8OaO55Q+ZvZZCnrpdGWoXTrDru2HolknMFzOITS
	Z5YQ331WHVZ2YeHUZfU0+czXyOEEWKhkxMQUh+6aMoRvLCmKquuMlHf4/7ZcvbP2lLPau/+1CefBU
	2+Mr4A2zusFvdmPUo968HAixRC68Vn0TVMfAE/q9p0qXedQ9qu9EEcmfB7KBREoiXlsLp8sKNOFT1
	yx9cFJPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6jL-00000003WQF-0gJ1;
	Mon, 15 Dec 2025 11:27:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vV6jI-00000003WPU-1sy9
	for barebox@lists.infradead.org;
	Mon, 15 Dec 2025 11:27:05 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vV6jG-0005kg-Og; Mon, 15 Dec 2025 12:27:02 +0100
Message-ID: <0c0c3c97-b465-45f8-a59a-032f19aec882@pengutronix.de>
Date: Mon, 15 Dec 2025 12:27:02 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20251209-devfs-v2-0-62ae16698cff@pengutronix.de>
 <20251209-devfs-v2-11-62ae16698cff@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251209-devfs-v2-11-62ae16698cff@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251215_032704_506497_D6C7681B 
X-CRM114-Status: GOOD (  17.80  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 11/13] common: cdev-alias: rename struct
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 12/9/25 1:51 PM, Sascha Hauer wrote:
> We'll introduce a globally available struct cdev_alias in the next step,
> so rename struct cdev_alias in common/cdev-alias.c to avoid name
> conflicts.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/cdev-alias.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/common/cdev-alias.c b/common/cdev-alias.c
> index 329ba9e97c16fe7a90d09c0bb31ef3359b72b5d0..e5a059ad7f4d9bc447c44072c5c7744051d12a0e 100644
> --- a/common/cdev-alias.c
> +++ b/common/cdev-alias.c
> @@ -11,13 +11,13 @@
>  #include <driver.h>
>  #include <init.h>
>  
> -struct cdev_alias {
> +struct cdev_alias_res {
>  	const char *name;
> -	int (*resolve)(struct cdev_alias *, const char *arg,
> +	int (*resolve)(struct cdev_alias_res *, const char *arg,
>  		       cdev_alias_processor_t fn, void *data);
>  };
>  
> -static int cdev_alias_resolve_bootsource(struct cdev_alias *cdev_alias,
> +static int cdev_alias_resolve_bootsource(struct cdev_alias_res *cdev_alias_res,
>  					 const char *partname,
>  					 cdev_alias_processor_t fn,
>  					 void *data)
> @@ -37,7 +37,7 @@ static int cdev_alias_resolve_bootsource(struct cdev_alias *cdev_alias,
>  	return fn(cdev, data);
>  }
>  
> -static int cdev_alias_resolve_diskuuid(struct cdev_alias *cdev_alias,
> +static int cdev_alias_resolve_diskuuid(struct cdev_alias_res *cdev_alias_res,
>  				       const char *uuid,
>  				       cdev_alias_processor_t fn,
>  				       void *data)
> @@ -67,7 +67,7 @@ static int cdev_alias_resolve_diskuuid(struct cdev_alias *cdev_alias,
>  	return 0;
>  }
>  
> -static struct cdev_alias cdev_alias_aliases[] = {
> +static struct cdev_alias_res cdev_alias_aliases[] = {
>  	{ "bootsource", cdev_alias_resolve_bootsource },
>  	{ "diskuuid", cdev_alias_resolve_diskuuid },
>  	{ /* sentinel */}
> @@ -76,7 +76,7 @@ static struct cdev_alias cdev_alias_aliases[] = {
>  int cdev_alias_resolve_for_each(const char *name,
>  				cdev_alias_processor_t fn, void *data)
>  {
> -	struct cdev_alias *alias;
> +	struct cdev_alias_res *alias;
>  	int ret = 0;
>  	char *buf, *arg;
>  
> 


-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



