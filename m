Delivery-date: Tue, 24 Jun 2025 10:27:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTz0C-00AXlD-1G
	for lore@lore.pengutronix.de;
	Tue, 24 Jun 2025 10:27:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTz0B-0001pd-OG
	for lore@pengutronix.de; Tue, 24 Jun 2025 10:27:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=pyuxmmxWPHLhhBkoV71qdblqBEzEp+Z2Yte+OTcnhbE=; b=oSAFle9w7KS8/Z9IrJXry2n8AI
	yLkGn9Ud1opTlTBYFzTwFADLJTL8ZzCpzl8BcHEr6wkETeWBGL7Biz1HPGNweyj0VClaBf4h40TuQ
	QwTedK+ufO+DbM5utSBNivCgYoyiHVuLsF/qXvkGhbUyLnF64MotN7yKDKz6iFWxdN14LIhEdZP4H
	tNdwU5BpJJGztYpw0fW9WEQ31FKWSgn85FA2R1oxKm9TIbwcoo7zd0CU3X3mgDQ8e6RzKlNjMr+Pj
	5hPoyFsRx8DsiQS1/6OQF+SEs+VFeCfNwYZHHrSBBNsB3WVAMfMv8fasuW42/oCz0WZce7TUaQLQZ
	FMSY2Dsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTyzl-000000050wQ-1KLG;
	Tue, 24 Jun 2025 08:27:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTyk8-00000004ydT-2XEP
	for barebox@lists.infradead.org;
	Tue, 24 Jun 2025 08:11:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uTyk7-00029X-AB; Tue, 24 Jun 2025 10:10:59 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uTyk7-00556w-0Q;
	Tue, 24 Jun 2025 10:10:59 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uTyk7-00F6L8-01;
	Tue, 24 Jun 2025 10:10:59 +0200
Date: Tue, 24 Jun 2025 10:10:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <aFpdkom1W8DBQPjf@pengutronix.de>
References: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
 <20250623-v2024-10-0-topic-socfpga-agilex5-v3-6-e9de9e31b2c1@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-6-e9de9e31b2c1@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250624_011100_650369_311998FE 
X-CRM114-Status: GOOD (  32.02  )
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
Subject: Re: [PATCH v3 06/10] clk: support init->parent_data
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Jun 23, 2025 at 03:57:51PM +0200, Steffen Trumtrar wrote:
> Linux clk driver supports matching parents via init->parent_data instead
> of init->parent_names.
> 
> Add support for this feature to barebox, too.
> Linux however supports setting a "name" and "fw_name" for a parent
> clock. "fw_name" is a local name for the provider registering the clock
> and "name" is a globally unique parent name. For the time being, only
> support the globally unique "name" field.
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
> ---
>  drivers/clk/clk.c | 48 ++++++++++++++++++++++++++++++++++++++++--------
>  1 file changed, 40 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
> index 9b21d0650b6c6b510d909b15324eecce8540aaef..6b57fbffb3726d3a4147a88edf7648306e1f8b56 100644
> --- a/drivers/clk/clk.c
> +++ b/drivers/clk/clk.c
> @@ -483,11 +483,28 @@ int bclk_register(struct clk *clk)
>  	return ret;
>  }
>  
> +static int clk_cpy_name(const char **dst_p, const char *src, bool must_exist)
> +{
> +	const char *dst;
> +
> +	if (!src) {
> +		if (must_exist)
> +			return -EINVAL;
> +		return 0;
> +	}
> +
> +	*dst_p = dst = xstrdup(src);
> +	if (!dst)
> +		return -ENOMEM;

xstrdup never fails.

> +
> +	return 0;
> +}
> +
>  struct clk *clk_register(struct device *dev, struct clk_hw *hw)
>  {
>  	struct clk *clk;
>  	const struct clk_init_data *init = hw->init;
> -	char **parent_names = NULL;
> +	const char **parent_names = NULL;
>  	int i, ret;
>  
>  	if (!hw->init)
> @@ -503,14 +520,29 @@ struct clk *clk_register(struct device *dev, struct clk_hw *hw)
>  
>  	clk->parents = xzalloc(sizeof(struct clk *) * clk->num_parents);
>  
> -	if (init->parent_names) {
> +	if (init->parent_names || init->parent_data) {
>  		parent_names = xzalloc(init->num_parents * sizeof(char *));
>  
> -		for (i = 0; i < init->num_parents; i++)
> -			parent_names[i] = xstrdup(init->parent_names[i]);
> -
> -		clk->parent_names = (const char *const*)parent_names;
> -
> +		for (i = 0; i < init->num_parents; i++) {
> +			if (init->parent_names) {
> +				ret = clk_cpy_name(&parent_names[i],
> +						   init->parent_names[i], true);

ret is never checked.

> +			} else if (init->parent_data) {
> +				/* Linux copies fw_name and if successful also name.
> +				 * As fw_name is not handled in barebox, just copy the
> +				 * name field and fallback to hw->clk.name if it doesn't
> +				 * exist.
> +				 */
> +				ret = clk_cpy_name(&parent_names[i],
> +						   init->parent_data[i].name,
> +						   true);
> +				if (ret)
> +					ret = clk_cpy_name(&parent_names[i],
> +							   init->parent_data[i].hw->clk.name,
> +							   false);

also here.

> +			}
> +		}
> +		clk->parent_names = (const char *const *)parent_names;
>  	} else {
>  		for (i = 0; i < init->num_parents; i++)
>  			clk->parents[i] = clk_hw_to_clk(init->parent_hws[i]);
> @@ -522,7 +554,7 @@ struct clk *clk_register(struct device *dev, struct clk_hw *hw)
>  	if (ret) {
>  		if (parent_names) {
>  			for (i = 0; i < init->num_parents; i++)
> -				free(parent_names[i]);
> +				free(&parent_names[i]);

This change looks wrong. You want to free the string, not the address of
the pointer to the string.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


