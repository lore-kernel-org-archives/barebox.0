Delivery-date: Mon, 27 Jun 2022 08:59:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5iiB-00G4vm-Mu
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 08:59:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5iiC-00064m-RE
	for lore@pengutronix.de; Mon, 27 Jun 2022 08:59:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=XM2RaWW0V8lpYK+RzZfJEfy0TyRFKu442seVMI7ZNYk=; b=R+FoFyf2juMj1/Gk9V0JCcRibG
	xidCQEBbYhGBRWLl75ivKfXnCvnnTy7UtuBoOq0P9UXaXBT/HX5ZtHaw1XAR7Qc7388yOEQCYqq2l
	QwSS/JX/Jsj0MkKIFqb/UmZm8SzcDFr1/pzIe0GQOjQWML7Bh1dSxYSqAwSEzdESO5nC9HJUFta1S
	TomfJRxSEkl72BvYA1inAkiLhK0DJMouxVB1QYN4hoda79kLe5mK7HJxwfa69vx9VSUdhk9GYzl5A
	xYv0+tbVN8tcbyfT/wfrp8mlNABWqfcf39iORQWG6Lf4CVBpnB3dJrj5LLZMoMrrNUC4wWp1YvxGg
	pw6cnlLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5igj-00GFdM-Cs; Mon, 27 Jun 2022 06:57:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5ig3-00GFPK-K7
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 06:56:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o5ig1-0005hS-Ro; Mon, 27 Jun 2022 08:56:53 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o5ig1-0000Rs-JA; Mon, 27 Jun 2022 08:56:53 +0200
Date: Mon, 27 Jun 2022 08:56:53 +0200
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220627065653.GC19026@pengutronix.de>
References: <20220624141632.380159-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220624141632.380159-1-bst@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220626_235655_716998_6B7F201F 
X-CRM114-Status: GOOD (  21.79  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] crypto: skip make dependency for
 CONFIG_CRYPTO_RSA_KEY=__ENV__*
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jun 24, 2022 at 04:16:32PM +0200, Bastian Krause wrote:
> CONFIG_CRYPTO_RSA_KEY allows referring to environment variables, e.g.
> __ENV__FOO tells barebox' rsatoc to use the value of the environment
> variable "FOO".
> 
> There is no point in creating a make dependency for such values.
> Actually looking into the environment variable and deciding whether it is
> a PKCS#11 URI or a file seems unnecessarily complex. Let's filter out
> these special values and leave the error handling to rsatoc.
> 
> Fixes: a05ac5545c ("crypto: simplify $(srctree)/ handling and remove config_filename macro")
> Signed-off-by: Bastian Krause <bst@pengutronix.de>
> ---
>  crypto/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/crypto/Makefile b/crypto/Makefile
> index 7e67f58bc7..762d7e543b 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -28,7 +28,7 @@ $(obj)/rsa.o: $(obj)/rsa-keys.h
>  
>  CONFIG_CRYPTO_RSA_KEY := $(CONFIG_CRYPTO_RSA_KEY:"%"=%)
>  
> -ifneq ($(filter-out pkcs11:%, $(CONFIG_CRYPTO_RSA_KEY)),)
> +ifneq ($(filter-out pkcs11:% __ENV__%, $(CONFIG_CRYPTO_RSA_KEY)),)
>  RSA_DEP := $(CONFIG_CRYPTO_RSA_KEY)
>  endif
>  
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


