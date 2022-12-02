Delivery-date: Fri, 02 Dec 2022 09:52:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11mJ-008Kq3-EN
	for lore@lore.pengutronix.de; Fri, 02 Dec 2022 09:52:16 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p11mI-0002lt-Gu
	for lore@pengutronix.de; Fri, 02 Dec 2022 09:52:15 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ryMYIL/kXfNBFVXOYkeWME/HvaW9wNqxqhlUgVAgnZY=; b=Y7EQmJdWqNhyf/ktGsCrGLEy5d
	IvO+14gA+Fnw7h6duVZdQ1LXKVTFRUM4q0rB1Z+76BQ7VhjTCIXWnIsltMgKjbxnd/zopXBnOkXIT
	LXpFp+wsDHmAhz2qH0A+jmTtI6UqD9T+17mNIqP1q5HxxZZD0Xtwe/XlCxuvjev4qO/YuBWN8J0Ih
	0TLM/rzhr2T561wTRmwxK+Kbos4IotXgO4FKUqf9mIqVhNMJbQZkz/a+KlZjBWkYtGnbb2ZTnxpdx
	ntIsfYyR5BwQXOJhJouNVuJn2ePIXHMV0/wtY7CyLxMLFWFOxrrwmkd6O3qwZDvLpSKTAOUniIL4a
	9RdMxD/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11kt-00EgFK-OI; Fri, 02 Dec 2022 08:50:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p11ko-00Eg9Y-LC
	for barebox@lists.infradead.org; Fri, 02 Dec 2022 08:50:43 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p11kk-0002WU-VI; Fri, 02 Dec 2022 09:50:38 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1p11kk-0006KW-Nv; Fri, 02 Dec 2022 09:50:38 +0100
Date: Fri, 2 Dec 2022 09:50:38 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221202085038.m3pygfh4hojzjcez@pengutronix.de>
References: <20221201133853.639287-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221201133853.639287-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221202_005042_711730_07C8EAEA 
X-CRM114-Status: GOOD (  16.21  )
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

On 22-12-01, Ahmad Fatoum wrote:
> regulator_get calls either of_regulator_get or dev_regulator_get, both
> of which accept a supply parameter. Only dev_regulator_get gracefully
> handles a NULL supply by considering all registered regulators.

Wouldn't it be better to align of_regulator_get behaviour with
dev_regulator_get?

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

Nevertheless the change is correct, so:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco
> -- 
> 2.30.2
> 
> 
> 


