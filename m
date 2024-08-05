Delivery-date: Mon, 05 Aug 2024 11:55:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sauRD-006RzA-2E
	for lore@lore.pengutronix.de;
	Mon, 05 Aug 2024 11:55:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sauRD-00042n-3b
	for lore@pengutronix.de; Mon, 05 Aug 2024 11:55:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=57mA0SLFgB8R8AZxy9//gySfQZsqQLqEXIXgKSJnxaQ=; b=sQ1Ydtv7ei3LIVhhfqg+Qdt0PK
	Tkh2lQTzrW6L90MAm6b+T1BkLBIZiv9qLuQm+kiKnyLQzNy7i01h+pvwNdnlowUEDkMVmECqxWfeb
	3XXNawvJGIq0FPB01zjDI7MFQHiJlDEtp23uVHWPer2NjqT2RZQVUkqp9hrBAD2Pwmafmah6JjQCH
	hHfcxzHb/5O5AgfUsFRiChA9EQwJW8d9M89PD4ox+xhQmNIwdBOWLIYXBzCXIQ9fUH8LiL5AYHzgp
	773V88TJD+8j66sV0b/k3RDX9rVnHzJxKvluZTp9KZHk8VWKH991jQwVR7hImlMlblq6cyXU0T5Ok
	W0QEfm0A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauQf-0000000FOjG-3ILe;
	Mon, 05 Aug 2024 09:55:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sauQc-0000000FOhY-063Z
	for barebox@lists.infradead.org;
	Mon, 05 Aug 2024 09:54:59 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sauQa-0003xd-Li; Mon, 05 Aug 2024 11:54:56 +0200
Message-ID: <2a3f7bf2-a33a-4cf0-9f97-2370c9128b87@pengutronix.de>
Date: Mon, 5 Aug 2024 11:54:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20240801055737.3190132-1-s.hauer@pengutronix.de>
 <20240801055737.3190132-8-s.hauer@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20240801055737.3190132-8-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240805_025458_239543_95A15063 
X-CRM114-Status: GOOD (  19.80  )
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
Subject: Re: [PATCH v2 07/19] rsatoc: cleanup error handling
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 01.08.24 07:57, Sascha Hauer wrote:
> - In case of an error bail out immediately instead of continuing and
>   just return an error at the end
> - explicitly set 'ret' right before going to the cleanup label which
>   makes the code more readable
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  scripts/rsatoc.c | 58 +++++++++++++++++++++++++++++++++---------------
>  1 file changed, 40 insertions(+), 18 deletions(-)
> 
> diff --git a/scripts/rsatoc.c b/scripts/rsatoc.c
> index 0faf41bca2..22f0318298 100644
> --- a/scripts/rsatoc.c
> +++ b/scripts/rsatoc.c
> @@ -167,15 +167,16 @@ static int rsa_get_exponent(RSA *key, uint64_t *e)
>  	const BIGNUM *key_e;
>  	uint64_t te;
>  
> -	ret = -EINVAL;
>  	bn_te = NULL;
>  
>  	if (!e)
>  		goto cleanup;

Won't ret be undefined here?

Also the return value is ultimately used only for an error message,
gen_key's error is not propagated, but it should result in the utility
aborting with an error code.

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



