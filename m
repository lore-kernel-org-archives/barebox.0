Delivery-date: Thu, 16 Jun 2022 15:56:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pyq-003yAr-ND
	for lore@lore.pengutronix.de; Thu, 16 Jun 2022 15:56:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o1pyq-0000K7-Bx
	for lore@pengutronix.de; Thu, 16 Jun 2022 15:56:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mz/LQnt1FAm2j07Fuqo2qT2fJB5ZIDRFojO07QaIq1I=; b=Qcx3ZcF0PWvM+EWoYcHn+wFhRc
	fwTRgHKXJZidbug1uOIf9FIr1DpFYgAifbTKhCG30jG/1UAgvDXmpysoYI5VR2td6BcAHQw/6ds+t
	XXypXBpTY9shyB9XRbZBczJhJdKzk3EpeeacqZFUd5//fE/rpfdp/K3glhnQx6OrtzUkCVvgV+ZtI
	+EL1yhhvkhPJbTQXKWxH9h5GGIPzewrMnn01R065srvu5CpQF3rEg+UUeB/LT893uvJ4njePBuvb8
	1AXrBbbN2wQpN/7dZ9ek5N1t+KIyuYepGmTBv9T/4Hfv4L7zLkMJlLkHLnCcp8ri7gEQJgulJsO7S
	qgpam1Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1pxE-002cfI-Ve; Thu, 16 Jun 2022 13:54:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o1ptI-002aSY-B4
	for barebox@lists.infradead.org; Thu, 16 Jun 2022 13:50:34 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o1ptH-0007HK-0o; Thu, 16 Jun 2022 15:50:31 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o1ptG-0000Us-LU; Thu, 16 Jun 2022 15:50:30 +0200
Date: Thu, 16 Jun 2022 15:50:30 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Robin van der Gracht <robin@protonic.nl>
Cc: barebox@lists.infradead.org
Message-ID: <20220616135030.GX1615@pengutronix.de>
References: <20220616125040.212193-1-robin@protonic.nl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220616125040.212193-1-robin@protonic.nl>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220616_065032_431158_EC0F7BAE 
X-CRM114-Status: GOOD (  23.45  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] lib: parameter: Free previous string value in
 param_string_set
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 16, 2022 at 02:50:40PM +0200, Robin van der Gracht wrote:
> When the parameter has no set function the previous (saved_value) is not
> freed up on completion.
> 
> Signed-off-by: Robin van der Gracht <robin@protonic.nl>
> ---
>  lib/parameter.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/lib/parameter.c b/lib/parameter.c
> index adc3c7cdea..fe7e7b1ba4 100644
> --- a/lib/parameter.c
> +++ b/lib/parameter.c
> @@ -262,8 +262,10 @@ static int param_string_set(struct device_d *dev, struct param_d *p, const char
>  	value_new = strim(value_new);
>  	*ps->value = value_new;
>  
> -	if (!ps->set)
> +	if (!ps->set) {
> +		free(value_save);
>  		return 0;
> +	}

Fixing this bug reveals another one. We do a:

	value_new = xstrdup(val);
	value_new = strim(value_new);

When 'val' has whitespaces at the beginning we no longer free the
pointer originally returned from xstrdup, but the pointer with
whitespaces stripped. I'll queue a fix for this before this patch.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


