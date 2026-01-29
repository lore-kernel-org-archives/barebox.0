Delivery-date: Thu, 29 Jan 2026 13:07:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlQoT-006bZT-0z
	for lore@lore.pengutronix.de;
	Thu, 29 Jan 2026 13:07:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vlQoS-0000QU-8q
	for lore@pengutronix.de; Thu, 29 Jan 2026 13:07:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dSetaZ3giHuPn21hzVnaXqaHwNweMFFDAIrqBZQLR0g=; b=3/r3O3qBnOs+NpOOzqU1jJORbj
	DOwzoykQ67dV+kEP+0Z8YAmpFJpDgJg4QFw3PIQFqj3tTBbuES5d6f4aBDfCZG8Cj+p6piTORYmsR
	58OpIcUiG4RONj/t6ua9V1JSZVQ/pJaIaSxlb2Nk0nqht0VoDPGeJ0oqUQBC0WMDD7XyucZRk0GD4
	cDPBASJM0KCDzLp3PSKMKkyBHy3ZVDPi5AfVz6qD0qHeh99gtX2E4zcApGy2X79UolisYkhuzS9aB
	2tqSPHusb8Cb7Jx6q1NkgiQRWgyy8Dr1PAIuu5qneQEFXWXlh4XJ+iswfO7QxKnN5LywqhcW65TYx
	KRPd/HDQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlQnl-000000004jd-3QIj;
	Thu, 29 Jan 2026 12:07:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vlQnj-000000004gS-0gRn
	for barebox@lists.infradead.org;
	Thu, 29 Jan 2026 12:07:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vlQnV-0000GB-Cy; Thu, 29 Jan 2026 13:06:53 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vlQnV-0034vF-2q;
	Thu, 29 Jan 2026 13:06:53 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vlQnV-004kNx-0I;
	Thu, 29 Jan 2026 13:06:53 +0100
Date: Thu, 29 Jan 2026 13:06:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20260129120653.cwvv2b4iw5hbc5wj@pengutronix.de>
References: <20260129-regulator-ramp-v1-0-6269bd55d432@pengutronix.de>
 <20260129-regulator-ramp-v1-1-6269bd55d432@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260129-regulator-ramp-v1-1-6269bd55d432@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260129_040707_203290_68433400 
X-CRM114-Status: GOOD (  27.09  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 1/2] regulator: fix handling of off_on_delay
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-01-29, Sascha Hauer wrote:
> In Linux the off_on_delay field in a regulator is described as:
> 
> > The guard time (in uS), before re-enabling a regulator
> 
> The primary user is the fixed regulator which puts the value of
> the "off-on-delay-us" property into it.
> 
> In barebox we put the off_on_delay into the enable_time_us field
> which is the delay we introduce when turning on a regulator. This
> is wrong and fixed in this commit.
> 
> The off_on_delay is defined as the time we should take before
> re-enabling a regulator. Linux does it the complicated way of
> remembering the time when it was last disabled and delays the
> re-enabling if necessary. We use the simple approach here of
> just waiting the off_on_delay time in the regulator disable path.
> 
> Fixes: 26a4c78917 ("regulator: add support for struct regulator_desc::off_on_delay")
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  drivers/regulator/core.c | 5 ++++-
>  include/regulator.h      | 1 +
>  2 files changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index cd07955894..8ca937e8bd 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -96,6 +96,9 @@ static int regulator_disable_rdev(struct regulator_dev *rdev)
>  
>  	rdev->enable_count--;
>  
> +	if (rdev->off_on_delay)
> +		udelay(rdev->off_on_delay);
> +
>  	return regulator_disable(rdev->supply);
>  }
>  
> @@ -309,7 +312,7 @@ int of_regulator_register(struct regulator_dev *rdev, struct device_node *node)
>  	node->dev = rdev->dev;
>  
>  	if (rdev->desc->off_on_delay)
> -		rdev->enable_time_us = rdev->desc->off_on_delay;

Nit: is is worth to remove the enable_time_us completely and
re-introduce it within the next commit?

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> +		rdev->off_on_delay = rdev->desc->off_on_delay;
>  
>  	if (rdev->desc->fixed_uV && rdev->desc->n_voltages == 1)
>  		rdev->min_uv = rdev->max_uv = rdev->desc->fixed_uV;
> diff --git a/include/regulator.h b/include/regulator.h
> index bca2d37d1a..09b4969c74 100644
> --- a/include/regulator.h
> +++ b/include/regulator.h
> @@ -123,6 +123,7 @@ struct regulator_dev {
>  	struct device_node *node;
>  	int enable_count;
>  	int enable_time_us;
> +	unsigned int off_on_delay;
>  	int min_uv;
>  	int max_uv;
>  	struct list_head consumer_list;
> 
> -- 
> 2.47.3
> 
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


