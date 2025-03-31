Delivery-date: Mon, 31 Mar 2025 08:50:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz8yw-006SkD-3C
	for lore@lore.pengutronix.de;
	Mon, 31 Mar 2025 08:50:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tz8yw-0000VB-DU
	for lore@pengutronix.de; Mon, 31 Mar 2025 08:50:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/G3Nnrnv4Lr1tjOPIskwGuCYyYN3Ew1aIEmvLf/0px0=; b=gnFdDkc4KLTCixQe38cp1cq9Bk
	VTFqSJYd4XcARy7oQx9sRJgIwhaui8+CaJ0wI1kdV6Jqwa2hbs/u+m6ZBW/t9Tz9Jr+AzmGnp2PQb
	1+mAKOXl/9gbn47nfWa7UmHQLPC2sDkNlCnCYHl+CApaOubZALHpxwPX5N/EUcKgyTXPXFch/Ny9n
	7LP8Dbp4g/e4Q8Ka4whAktVrtHlx4/53ZcABoKkZuUo1WFyEGfrDYr51XsLxFfymUrbSNhLGAVQ4X
	/u+O7y1/VehdbG2lyFXdr5/ml693l273fl6lLHOsapgSCk7tMH2J0Bq0iH8qVSgLF6DozPoRl/won
	N9dbtqMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz8yS-0000000H8Uh-3X66;
	Mon, 31 Mar 2025 06:50:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1tz8xY-0000000H8NA-2DVE
	for barebox@lists.infradead.org;
	Mon, 31 Mar 2025 06:49:25 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1tz8xV-00007v-Ud; Mon, 31 Mar 2025 08:49:21 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tz8xV-002Y7B-1r;
	Mon, 31 Mar 2025 08:49:21 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1tz8xV-00999I-1Z;
	Mon, 31 Mar 2025 08:49:21 +0200
Date: Mon, 31 Mar 2025 08:49:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Alexander Shiyan <eagle.alexander923@gmail.com>
Cc: barebox@lists.infradead.org
Message-ID: <Z-o68SVbRz4-8lr0@pengutronix.de>
References: <20250328063122.36276-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250328063122.36276-1-eagle.alexander923@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250330_234924_563894_F44CBFD6 
X-CRM114-Status: GOOD (  22.99  )
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
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] regulator: core: Implement regulator_is_enabled()
 call
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Fri, Mar 28, 2025 at 09:31:21AM +0300, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  drivers/regulator/core.c | 11 +++++++++++
>  include/regulator.h      |  6 ++++++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index 2c3b009ea6..c9e30ab3fd 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -610,6 +610,17 @@ int regulator_disable(struct regulator *r)
>  	return regulator_disable_rdev(r->rdev);
>  }
>  
> +int regulator_is_enabled(struct regulator *r)
> +{
> +	if (!r)
> +		return 0;
> +
> +	if (r->rdev->always_on)
> +		return 1;
> +
> +	return r->rdev->enable_count;
> +}

This differs from what Linux does. Linux will return the result of the
is_enabled hook here. We should likely do the same and only if the
is_enabled hook is not present return the enable_count.

> +
>  int regulator_set_voltage(struct regulator *r, int min_uV, int max_uV)
>  {
>  	if (!r)
> diff --git a/include/regulator.h b/include/regulator.h
> index 9785b8ac07..5fdf1602dd 100644
> --- a/include/regulator.h
> +++ b/include/regulator.h
> @@ -217,6 +217,7 @@ void regulator_put(struct regulator *r);
>  struct regulator *regulator_get_name(const char *name);
>  int regulator_enable(struct regulator *);
>  int regulator_disable(struct regulator *);
> +int regulator_is_enabled(struct regulator *);
>  int regulator_is_enabled_regmap(struct regulator_dev *);
>  int regulator_enable_regmap(struct regulator_dev *);
>  int regulator_disable_regmap(struct regulator_dev *);
> @@ -285,6 +286,11 @@ static inline int regulator_disable(struct regulator *r)
>  	return 0;
>  }
>  
> +static inline int regulator_is_enabled(struct regulator *r)
> +{
> +	return 0;
> +}

I think we should return true here as it likely makes the consumers
happier.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


