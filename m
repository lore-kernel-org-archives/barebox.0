Delivery-date: Wed, 03 Jul 2024 20:31:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP4l6-001G2b-02
	for lore@lore.pengutronix.de;
	Wed, 03 Jul 2024 20:31:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sP4l5-0003b0-FP
	for lore@pengutronix.de; Wed, 03 Jul 2024 20:31:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hFlwzJZW9usRTSxf0C3jn0BQVe25o2xB3D2zN57zFRA=; b=sqoyg0x7pYcbux8proQLZWKfDx
	0Bu3EPRbICT9/NZEdEaJ4VqJTzSOI7on0hJvbS2d9Nei1pqYqY/7Yo4/d18LX5UreQkFuQ0VhgUei
	z3YER2Sg01JFAGF/5B5o1Cj6HCmT0giQU0Bz3eld/qqrYCM/kZ5wzqtjqfexYlbS/au4cnFwu6ORu
	HyWOmBq7P0URY7SvwHk7cmySZmYOPuAO1Cgwy3l0fdcalX2+9Cr80rsEq4zmkqWmJp8XLveJqkwWq
	6uZjU7rcm3lpfRjgdsPRZf0UQmjH0OmqyTwPg6bOFvh81ObC+T0OdPdY4qmGuwxFUGEAopqfJzfDp
	zCIord8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP4kg-0000000B9vC-1Z7r;
	Wed, 03 Jul 2024 18:30:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sP4kd-0000000B9uf-0pfu
	for barebox@lists.infradead.org;
	Wed, 03 Jul 2024 18:30:44 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sP4kb-0003Sm-Vm; Wed, 03 Jul 2024 20:30:42 +0200
Message-ID: <cbdfad33-997f-4a19-bc45-746afb87bb0b@pengutronix.de>
Date: Wed, 3 Jul 2024 20:30:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Marco Felsch <m.felsch@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20240703-v2024-05-0-topic-fit-overlay-v3-0-c1fd766fd31d@pengutronix.de>
 <20240703-v2024-05-0-topic-fit-overlay-v3-1-c1fd766fd31d@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240703-v2024-05-0-topic-fit-overlay-v3-1-c1fd766fd31d@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240703_113043_272472_6D51C7DA 
X-CRM114-Status: GOOD (  13.73  )
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
Subject: Re: [PATCH v3 01/10] FIT: fix missing free in fit_open error path
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 03.07.24 18:58, Marco Felsch wrote:
> Free the handle if read_file_2() fails.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/image-fit.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/image-fit.c b/common/image-fit.c
> index 251fda97b3fc..008804e6a6c3 100644
> --- a/common/image-fit.c
> +++ b/common/image-fit.c
> @@ -922,6 +922,7 @@ struct fit_handle *fit_open(const char *filename, bool verbose,
>  			  max_size);
>  	if (ret && ret != -EFBIG) {
>  		pr_err("unable to read %s: %s\n", filename, strerror(-ret));
> +		free(handle);
>  		return ERR_PTR(ret);
>  	}
>  
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



