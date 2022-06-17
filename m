Delivery-date: Fri, 17 Jun 2022 09:44:54 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o26ey-004xdG-UN
	for lore@lore.pengutronix.de; Fri, 17 Jun 2022 09:44:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o26ey-0000Xz-E3
	for lore@pengutronix.de; Fri, 17 Jun 2022 09:44:53 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hpRfOOd8FHO408dwq4S2R84H30Zq/89J7Sb/aXXmsyk=; b=vy9lrg+gXlp9XhXUOMc3Sriwoc
	2d1rQnDQ58AHMkUFY6F8nHp7nSu7sqhfN23W2wq8LE5JRlIzahBTe+AsyK9YlG31N034kx6PbdEn2
	RisAdGXmAsTc86NQzSg4eDDCGmL3Wa/ociwFoH4tNHtxHdXlvSiNGiNk1qLvrNyOePT/FXuUFEDIx
	3mY/eDQjL4zUu7qTTS/vJKwbnYqd5Bz21ZyL+3QDgpxDgtskCbIyRDWf5lO/hCKWktt1+7rOrE37J
	lugX7FYuQ4lIQBM6drKA42wVU+uYASPbG9d/2fvgxUyeWufUEkkzzj5zMniVKWqlX/ZVEe6mduMmX
	lTEkJRtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26dG-0063BG-4I; Fri, 17 Jun 2022 07:43:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o26OL-005x8T-R0
	for barebox@lists.infradead.org; Fri, 17 Jun 2022 07:27:45 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o26OK-0006Yq-0f; Fri, 17 Jun 2022 09:27:40 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1o26OJ-0005i6-Nq; Fri, 17 Jun 2022 09:27:39 +0200
Date: Fri, 17 Jun 2022 09:27:39 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220617072739.GH1615@pengutronix.de>
References: <20220616140737.2294226-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220616140737.2294226-1-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220617_002741_935330_4B9D1935 
X-CRM114-Status: GOOD (  21.19  )
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
Subject: Re: [PATCH 1/2] regulator: fixed: use local device_node reference
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Jun 16, 2022 at 04:07:36PM +0200, Marco Felsch wrote:
> Just a cosmetic commit, no functional changes. Use a local variable for
> the device_node instead of dereference the pointer multiple times.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
>  drivers/regulator/fixed.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/regulator/fixed.c b/drivers/regulator/fixed.c
> index f068fded62..9c660d5781 100644
> --- a/drivers/regulator/fixed.c
> +++ b/drivers/regulator/fixed.c
> @@ -50,6 +50,7 @@ const static struct regulator_ops fixed_ops = {
>  
>  static int regulator_fixed_probe(struct device_d *dev)
>  {
> +	struct device_node *np = dev->device_node;
>  	struct regulator_fixed *fix;
>  	int ret;
>  
> @@ -59,7 +60,7 @@ static int regulator_fixed_probe(struct device_d *dev)
>  	fix = xzalloc(sizeof(*fix));
>  	fix->gpio = -EINVAL;
>  
> -	if (of_get_property(dev->device_node, "gpio", NULL)) {
> +	if (of_get_property(np, "gpio", NULL)) {
>  		fix->gpio = gpiod_get(dev, NULL, GPIOD_ASIS);
>  		if (fix->gpio < 0) {
>  			ret = fix->gpio;
> @@ -71,13 +72,13 @@ static int regulator_fixed_probe(struct device_d *dev)
>  	fix->rdev.desc = &fix->rdesc;
>  	fix->rdev.dev = dev;
>  
> -	if (of_find_property(dev->device_node, "regulator-always-on", NULL) ||
> -	    of_find_property(dev->device_node, "regulator-boot-on", NULL)) {
> +	if (of_find_property(np, "regulator-always-on", NULL) ||
> +	    of_find_property(np, "regulator-boot-on", NULL)) {
>  		fix->always_on = 1;
>  		regulator_fixed_enable(&fix->rdev);
>  	}
>  
> -	ret = of_regulator_register(&fix->rdev, dev->device_node);
> +	ret = of_regulator_register(&fix->rdev, np);
>  	if (ret)
>  		return ret;
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


