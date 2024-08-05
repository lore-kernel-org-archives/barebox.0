Delivery-date: Mon, 05 Aug 2024 12:07:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1saucZ-006S8N-2b
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 12:07:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1saucY-0006TQ-U3
	for lore@pengutronix.de; Mon, 05 Aug 2024 12:07:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=P/4eCb5xAV3G9p2G8YlnC3adx8dEixCNrFGrTRki6dM=; b=EfBdPlaf0vI+2zErvu6fDQG+5h
	Sw23Y1QR4AQYadKVvIEo6vJMTkpibwzW+horCPYA3bBLSfR4tdT0RCE270SRbO0bViOGfvw7+OBwp
	zvJc8Q+RKWPtN7yleSPgHlrGwA9+S+kS9U/OHJsYoa5LVnWd10pXPO9HlOB9eKaycnQYm54Wc0Eky
	Hi173qyIroyO538dJIQ5TqFlabW0Qy46DIe+dfEjEpIPjsdL9aCpn0Jx8bHC1PnS84gHalwl+65V6
	IWaz1/jrzlEduS6CeJtI8bQF63oUYlY7FsRCmS1G3WThfvqrlpdAZS/O9UDPlU4difxIDqC4VHTLi
	q02LxcMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauc8-0000000FR5y-28Br;
	Mon, 05 Aug 2024 10:06:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauc5-0000000FR5V-1RDN
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 10:06:50 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sauc4-0006OD-5c; Mon, 05 Aug 2024 12:06:48 +0200
Message-ID: <fe730c45-661f-4cc8-90ac-df3fa4694d5a@pengutronix.de>
Date: Mon, 5 Aug 2024 12:06:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-15-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-15-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_030649_416684_BA901651 
X-CRM114-Status: GOOD (  18.99  )
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
Subject: Re: [PATCH v2 14/19] keytoc: clarify error messages
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> When we can't open the given path as certificate, we try reading it
> as a public key. Clarify the error message accordingly and add a
> comment about this.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  scripts/keytoc.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index aa36ba02e1..6c5ff9403d 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -57,7 +57,7 @@ static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
>  	*pkey = NULL;
>  	f = fopen(path, "r");
>  	if (!f) {
> -		fprintf(stderr, "Couldn't open certificate: '%s': %s\n",
> +		fprintf(stderr, "Couldn't open certificate '%s': %s\n",
>  			path, strerror(errno));
>  		return -EACCES;
>  	}
> @@ -65,10 +65,11 @@ static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
>  	/* Read the certificate */
>  	cert = NULL;
>  	if (!PEM_read_X509(f, &cert, NULL, NULL)) {
> +		/* Can't open certificate, maybe it's a pubkey */
>  		rewind(f);
>  		key = PEM_read_PUBKEY(f, NULL, NULL, NULL);
>  		if (!key) {
> -			openssl_error("Couldn't read certificate");
> +			openssl_error("Couldn't read certificate/pubkey %s\n", path);
>  			ret = -EINVAL;
>  			goto err_cert;
>  		}
> @@ -76,7 +77,7 @@ static int pem_get_pub_key(const char *path, EVP_PKEY **pkey)
>  		/* Get the public key from the certificate. */
>  		key = X509_get_pubkey(cert);
>  		if (!key) {
> -			openssl_error("Couldn't read public key\n");
> +			openssl_error("Couldn't read public key from certificate\n");
>  			ret = -EINVAL;
>  			goto err_pubkey;
>  		}

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



