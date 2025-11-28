Delivery-date: Fri, 28 Nov 2025 14:41:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOyjE-005nah-2O
	for lore@lore.pengutronix.de;
	Fri, 28 Nov 2025 14:41:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vOyjE-00019U-6P
	for lore@pengutronix.de; Fri, 28 Nov 2025 14:41:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3Y64oFdS+WZqEdCyCM2g7L2DoHxqPnQWFhqglTXrc00=; b=U74n1jcuft6y9v2m11tJt6TqZC
	a1YLYMKto55LxHOnrSMq+mXQWpM7OzBtKbgGByMf/IBeXD2IhC/9bf01bhwkC6kOFoYtDBxz+vIot
	St2/H9FSUW2I+RDmyp89YXyy5L2SXz7Z5sTmQxWcXDctPIqsbeNuA6fD3LiuoHzlN2E+40kNkVgIc
	wXcwyWPAmcbfA+FbT+WhGJkvuHhrq5lIZGNKhZoHWoTDQTjit0xtcvLiLkuIMrWkOQvPPHzWChZvR
	C0eJRvQl+5VtKiShT61eB2HXVvwrqWDH34kLC84VEduzyrZKh9yeaHS8PPy6jV26VbNIuS/xtskt/
	Sn3Db2Rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOyim-00000000UiB-0Rwf;
	Fri, 28 Nov 2025 13:41:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vOyij-00000000Uhi-3acV
	for barebox@lists.infradead.org;
	Fri, 28 Nov 2025 13:41:11 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <jre@pengutronix.de>)
	id 1vOyig-00013y-S0; Fri, 28 Nov 2025 14:41:06 +0100
Message-ID: <7d899332-c341-4266-ba04-73f966ce3eb6@pengutronix.de>
Date: Fri, 28 Nov 2025 14:41:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Jonas Rebmann <jre@pengutronix.de>
To: Michael Grzeschik <m.grzeschik@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251128-keytoc-v1-1-5540f8543f32@pengutronix.de>
Content-Language: en-US
In-Reply-To: <20251128-keytoc-v1-1-5540f8543f32@pengutronix.de>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251128_054109_921086_8834FC41 
X-CRM114-Status: GOOD (  19.84  )
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
X-Spam-Status: No, score=-3.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] crypto: keytoc: fix env parsing after keyring support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Michael,

On 28/11/2025 09.22, Michael Grzeschik wrote:
> Since the support for keyrings was added for keytoc the parsing of
> pkcs11 keydescriptions that are set from environment variables is
> broken. Fix this by adding the necessary try_resolve_env call before
> working with the key description.

Indeed it does not work as documented in crypto/Kconfig. When I made
those changes, I only tested the case

CONFIG_CRYPTO_PUBLIC_KEYS="keyring=fit,fit-hint=__ENV__myhint:__ENV__myname"

but I can now confirm this case is broken:

CONFIG_CRYPTO_PUBLIC_KEYS="__ENV__mykey"


And your patch fixes that, thanks!

> Fixes: 9b6abf4928 ("crypto: Add support for keyrings")
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
>   scripts/keytoc.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/scripts/keytoc.c b/scripts/keytoc.c
> index ade924298a3169c6ac52b781deac94f706a14203..77ada3af451983722f40e5bb40f8e2789884a898 100644
> --- a/scripts/keytoc.c
> +++ b/scripts/keytoc.c
> @@ -856,7 +856,7 @@ int main(int argc, char *argv[])
>   	keylist = calloc(sizeof(struct keyinfo), keycount);
>   
>   	for (i = 0; i < keycount; i++) {
> -		const char *keyspec = argv[optind + i];
> +		const char *keyspec = try_resolve_env(argv[optind + i]);
>   		struct keyinfo *info = &keylist[i];
>   
>   		if (!keyspec)
> 
> ---
> base-commit: 5d89bec4985d850d59813e34c6b5213d8e8f48f0
> change-id: 20251128-keytoc-aaade89fe842
> 
> Best regards,

Reviewed-by: Jonas Rebmann <jre@pengutronix.de>

-- 
Pengutronix e.K.                          | Jonas Rebmann               |
Steuerwalder Str. 21                      | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                 | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686          | Fax:   +49-5121-206917-9    |


