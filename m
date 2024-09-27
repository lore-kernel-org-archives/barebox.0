Delivery-date: Fri, 27 Sep 2024 10:09:14 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su62L-003KQH-27
	for lore@lore.pengutronix.de;
	Fri, 27 Sep 2024 10:09:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1su62M-00048G-0N
	for lore@pengutronix.de; Fri, 27 Sep 2024 10:09:14 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=bLS+scGJlAuuGlV9nxCkOzRQlOro9jVyohv3VtDKXMw=; b=SWZmvWXJgRgVk690Wo+9K9VnV7
	Cc4BAHT4Wxjhj9TKusCVVGKKyHpcua4jj9OxY74KLt6gv87MkntitFSTR0pUghP8T7H1RXVk+z9Zx
	NDlagGxUqoJ2gK1uYQF1zZPI8HsJwO8mpZz144Jkp6VyfbRa7qOzm1HXa1KMH24VrQW3buRbs/p/y
	VEqRXf2D+fk25jMebhkRUh+P4YWiz/oeuGjFaDlneI9g/mOm9RlY8ld7PmCI0sDylmX1MtTNRDXEI
	SJujoK017lYbnq+wESLvJ/4wnFI+or/P+lJ9ujJdSGLD2i8WtVAolVqMof179xVA4YGVIT0agvSZn
	EupKzZMg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1su61s-0000000ARy3-3PXG;
	Fri, 27 Sep 2024 08:08:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1su60p-0000000ARg8-1Pqx
	for barebox@lists.infradead.org;
	Fri, 27 Sep 2024 08:07:40 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1su60n-0003P0-M0; Fri, 27 Sep 2024 10:07:37 +0200
Message-ID: <ccfb57e1-fdc0-4966-a462-4b3801adc598@pengutronix.de>
Date: Fri, 27 Sep 2024 10:07:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240913075924.1652866-1-s.hauer@pengutronix.de>
 <20240913075924.1652866-16-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240913075924.1652866-16-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240927_010739_419883_DB82B128 
X-CRM114-Status: GOOD (  19.02  )
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
Subject: Re: [PATCH v4 15/16] crypto: add ECDSA support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 13.09.24 09:59, Sascha Hauer wrote:
> This adds ECDSA signature verification support. The code is based on the
> Linux code as of Linux-6.10. The Linux code expects the key to be in
> ASN.1 encoded format. We don't need this in barebox as directly compile
> the x and y key values into the binary, so this is left out.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Some minor comments below.

> diff --git a/crypto/public-keys.c b/crypto/public-keys.c
> index dc51ef18f8..bab608be17 100644
> --- a/crypto/public-keys.c
> +++ b/crypto/public-keys.c
> @@ -1,6 +1,7 @@
>  #include <common.h>
>  #include <crypto/public_key.h>
>  #include <rsa.h>
> +#include <ecdsa.h>

We should perhaps move these two into crypto/ as well.

> diff --git a/include/crypto/public_key.h b/include/crypto/public_key.h
> index 1b91063042..ed7c74859f 100644
> --- a/include/crypto/public_key.h
> +++ b/include/crypto/public_key.h
> @@ -8,6 +8,7 @@ struct ecdsa_public_key;
>  
>  enum pulic_key_type {

s/pulic/public/

>  	PUBLIC_KEY_TYPE_RSA,
> +	PUBLIC_KEY_TYPE_ECDSA,
>  };
>  
>  struct public_key {
> diff --git a/include/ecdsa.h b/include/ecdsa.h
> new file mode 100644
> index 0000000000..1d6340c645
> --- /dev/null
> +++ b/include/ecdsa.h
> @@ -0,0 +1,42 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +#ifndef _ECDSA_H
> +#define _ECDSA_H

#include <linux/list.h>
#include <linux/types.h>

> +
> +struct ecdsa_public_key {
> +	const char *curve_name;	/* Name of curve, e.g. "prime256v1" */
> +	const uint64_t *x;	/* x coordinate of public key */
> +	const uint64_t *y;	/* y coordinate of public key */
> +	unsigned int size_bits;	/* key size in bits, derived from curve name */
> +	struct list_head list;
> +};

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


