Delivery-date: Fri, 02 Dec 2022 09:55:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11pQ-008L11-Hx
	for lore@lore.pengutronix.de; Fri, 02 Dec 2022 09:55:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11pQ-0003Ge-1B
	for lore@pengutronix.de; Fri, 02 Dec 2022 09:55:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Oiy867SFJ/UUplJSsdsxVzDMkiG0jWXNetvi7eDkV0M=; b=esteiV5+iaybyruWJcelH3b2J7
	uG3Tg9zhhXzkUa+e2we67l8TTSt+56mAKt3jCjh1H7RNEbMe99U+BhKKSL4iny0VCGcXxqAsI0cWo
	G2KuqhF9OaXJ/aTHex6KRwr2Y/ogBD87pwJV6rWT6GqQ0L3yztuBSMKlv913H2ig+6E1tfQ1tcku0
	B/tPZuBioEpzHkjhERa9XOu7XZnrsYh+jDf/sQ9T+dUKZLX4s+92AeKA7I+yw0/rX7wW7L48ZLo0k
	sTmRfplmaRZg1Czh/rz7enurxfPIRl6v7KRXBxGTO3DIRz4ZiZqO3Zf7rX2WtS/NCYDWY8VWqDGEs
	GxWXk4Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11o6-00EhZf-W6; Fri, 02 Dec 2022 08:54:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11o1-00EhXL-FU
	for barebox@lists.infradead.org; Fri, 02 Dec 2022 08:54:02 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11nz-0002uD-VY; Fri, 02 Dec 2022 09:53:59 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1p11nz-0006Ml-Of; Fri, 02 Dec 2022 09:53:59 +0100
Date: Fri, 2 Dec 2022 09:53:59 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221202085359.GM29728@pengutronix.de>
References: <20221201133853.639287-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221201133853.639287-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_005401_551335_7D29E443 
X-CRM114-Status: GOOD (  21.15  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] regulator: core: don't call of_regulator_get with NULL
 argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 01, 2022 at 02:38:53PM +0100, Ahmad Fatoum wrote:
> regulator_get calls either of_regulator_get or dev_regulator_get, both
> of which accept a supply parameter. Only dev_regulator_get gracefully
> handles a NULL supply by considering all registered regulators.
> 
> of_regulator_get on the other hand, will complain at debug level,
> before returning NULL:
> 
>   uart-pl011 fe201000.serial@7e201000.of: No <NULL>-supply node found,
>   using dummy regulator
> 
> Avoid this message by skipping of_regulator_get if no supply was found
> and directly call dev_regulator_get.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/regulator/core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index 4876f0f44bdd..d25aba38c3e2 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -388,7 +388,7 @@ struct regulator *regulator_get(struct device_d *dev, const char *supply)
>  	struct regulator *r;
>  	int ret;
>  
> -	if (dev->device_node) {
> +	if (dev->device_node && supply) {
>  		ri = of_regulator_get(dev, supply);
>  		if (IS_ERR(ri))
>  			return ERR_CAST(ri);
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


