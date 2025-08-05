Delivery-date: Tue, 05 Aug 2025 10:45:25 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDIT-007EfT-30
	for lore@lore.pengutronix.de;
	Tue, 05 Aug 2025 10:45:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ujDIT-0005aR-BX
	for lore@pengutronix.de; Tue, 05 Aug 2025 10:45:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1PWmsaZt0dWVd33zbYxmRlNsuBfDkW2dRkYp+QuMA5g=; b=BNbE5wtMPABuDzsJK4ZZu92C3A
	J3kLOXoJeupnIDbfQ6plAfXjT9j8xGi7FPqt1wxlh7oeqkVSmE57oGaoLlvHjsX1Ui3exuJZbg1o1
	isuLNlHcKm+/BoZ3OVMWR6HIuecvbUCnluAXiPsW2srOcZaS+3Pw8qybUq7ChldwbgQvSyTXwyFNk
	S/o3eg5fCBXFEDsKh8Tbg7Kt+XanaRIYP/RuHbrVTHOQFgq0AVvv74BYB8HtRJsSgK5LdbFvIiFlk
	SLxxvTAtEhbxYPC4Pw10ZOCiR1zrvov+nYUGo2NH3d67FqYgRTUBSq4yU33W2LMy156te1vD7vuEN
	yaiFxOxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujDI1-0000000CEJJ-2G3v;
	Tue, 05 Aug 2025 08:44:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1ujCmh-0000000C7Kv-1GnY
	for barebox@lists.infradead.org;
	Tue, 05 Aug 2025 08:12:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ujCmf-0002Gi-FS; Tue, 05 Aug 2025 10:12:33 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujCmf-00C0fK-0w;
	Tue, 05 Aug 2025 10:12:33 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1ujCmf-00A8XU-0d;
	Tue, 05 Aug 2025 10:12:33 +0200
Date: Tue, 5 Aug 2025 10:12:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org, Bastian Krause <bst@pengutronix.de>
Message-ID: <aJG88XTuJpuYX12B@pengutronix.de>
References: <20250724135056.1252995-1-m.felsch@pengutronix.de>
 <20250724135056.1252995-2-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250724135056.1252995-2-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250805_011235_345264_2A31186B 
X-CRM114-Status: GOOD (  25.55  )
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
Subject: Re: [PATCH v2 2/2] keytoc: fix env provided keyspec handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

+Cc Basti

On Thu, Jul 24, 2025 at 03:50:56PM +0200, Marco Felsch wrote:
> Currently the env provided keyspec is resolved during the gen_key() step
> by making use of the try_resolve_env(). This is wrong because it will
> set the complete <hint>:<key> keyspec string for the 'keyname' and 'path'.
> 
> To fix this the resolve step must happen during the main-loop as first step
> because the main-loop is doing the 'keyname' and 'path' split already.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  scripts/keytoc.c | 13 +++++--------
>  1 file changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index 617317d6607e..105fa4b5413d 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -615,10 +615,6 @@ static int gen_key(const char *keyname, const char *path)
>  	char *tmp, *key_name_c;
>  
>  	/* key name handling */
> -	keyname = try_resolve_env(keyname);
> -	if (!keyname)
> -		exit(1);
> -
>  	tmp = key_name_c = strdup(keyname);
>  
>  	while (*tmp) {
> @@ -628,10 +624,6 @@ static int gen_key(const char *keyname, const char *path)
>  	}
>  
>  	/* path/URI handling */
> -	path = try_resolve_env(path);
> -	if (!path)
> -		exit(1);
> -

This was introduced by Basti in 685cc602e0ad ("keytoc: allow __ENV__
lookup for keyname hint") to support:

CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__FIT_KEY_NAME_HINT:__ENV__FIT_KEY"

I believe this patch breaks this usecase.

Sascha

>  	if (!strncmp(path, "pkcs11:", 7)) {
>  		ret = engine_get_pub_key(path, &key);
>  		if (ret)
> @@ -737,6 +729,11 @@ int main(int argc, char *argv[])
>  		char *keyname = NULL;
>  		char *path = NULL;
>  
> +		/* Check if the keyspec is provided by the ENV first */
> +		keyspec = try_resolve_env(keyspec);
> +		if (!keyspec)
> +			exit(1);
> +
>  		if (!strncmp(keyspec, "pkcs11:", 7))
>  			path = strdup(keyspec);
>  		else
> -- 
> 2.39.5
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


