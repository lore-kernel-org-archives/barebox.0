Delivery-date: Wed, 22 Oct 2025 12:03:19 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVgd-00AZAr-2v
	for lore@lore.pengutronix.de;
	Wed, 22 Oct 2025 12:03:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vBVgd-0004o8-AZ
	for lore@pengutronix.de; Wed, 22 Oct 2025 12:03:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RhHt/c9jK0iTHL5h4oUVxVbRmeBQfVP00bj1M5H+1eQ=; b=3bzccTWqi9FdUm3KncnwNLrbwH
	Z+HgvVUbHKEE5AKeuPG/Lwc2ochLDI/GZiom9Oev7swHBQDolp+WjzdbjVfQKoCAehmxXLQZwzPXk
	eMmP+yV27HQaPVAc19Jqo1YHKaxKBkPNoiu08AMBlwe1922pgQ43sYXdckidm2INAt/Bs0Hji7cXB
	97VNJxX1tSbGnfZgNAl1foJHaSRFGoneo7JnRe+dDABZ0GNJlb0bdAiEdgXXEkGY3ZRTvkjdEtrI9
	ayp4d+AvY9VK/QQdXM1nJadluuhRL13blt+Z5+jcDluMr2SFhjkb1/0mIeUXHDa0HcXiuKKtIRddv
	+U9Ra0xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVfp-00000002Nmb-3V97;
	Wed, 22 Oct 2025 10:02:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vBVfj-00000002Nlv-28Hg
	for barebox@lists.infradead.org;
	Wed, 22 Oct 2025 10:02:25 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vBVfh-0004SH-Vj; Wed, 22 Oct 2025 12:02:22 +0200
Message-ID: <d97460e6-e4f3-4222-804b-165ffe7f870d@pengutronix.de>
Date: Wed, 22 Oct 2025 12:02:21 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Jonas Rebmann <jre@pengutronix.de>, Sascha Hauer
 <s.hauer@pengutronix.de>, BAREBOX <barebox@lists.infradead.org>
References: <20251014-tlv-signature-v1-0-7a8aaf95081c@pengutronix.de>
 <20251014-tlv-signature-v1-11-7a8aaf95081c@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20251014-tlv-signature-v1-11-7a8aaf95081c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251022_030223_556993_65BE832B 
X-CRM114-Status: GOOD (  17.33  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 11/15] crypto: Use "development" keys for "fit" and "tlv"
 keyring
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)



On 10/14/25 1:03 PM, Jonas Rebmann wrote:
> All users of the CONFIG_CRYPTO_PUBLIC_KEYS feature should update to the
> new syntax making keyring selection mandatory.
> 
> Instead of just making the addition of the builtin snakeoil keys
> explicit for the "fit" key, also add them to the "tlv" key to use them
> as a testing set for TLV keys too.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  crypto/Makefile | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/crypto/Makefile b/crypto/Makefile
> index 08b9a46e4c..076ba4f686 100644
> --- a/crypto/Makefile
> +++ b/crypto/Makefile
> @@ -33,10 +33,12 @@ CONFIG_CRYPTO_PUBLIC_KEYS := $(foreach d,$(CONFIG_CRYPTO_PUBLIC_KEYS),"$(d)")
>  
>  ifdef CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS
>  ifdef CONFIG_CRYPTO_RSA
> -CONFIG_CRYPTO_PUBLIC_KEYS += rsa-devel:$(srctree)/crypto/fit-4096-development.crt
> +CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=rsa-devel:$(srctree)/crypto/fit-4096-development.crt
> +CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv:$(srctree)/crypto/fit-4096-development.crt
>  endif
>  ifdef CONFIG_CRYPTO_ECDSA
> -CONFIG_CRYPTO_PUBLIC_KEYS += ecdsa-devel:$(srctree)/crypto/fit-ecdsa-development.crt
> +CONFIG_CRYPTO_PUBLIC_KEYS += keyring=fit,fit-hint=ecdsa-devel:$(srctree)/crypto/fit-ecdsa-development.crt
> +CONFIG_CRYPTO_PUBLIC_KEYS += keyring=tlv:$(srctree)/crypto/fit-ecdsa-development.crt

We don't want people to overload tlv and instead use their own keyring
names. This is already too late for fit, but for this, let's call it
tlv-example?

Cheers,
Ahmad

>  endif
>  endif
>  
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



