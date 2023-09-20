Delivery-date: Wed, 20 Sep 2023 13:23:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivIs-004Zce-L2
	for lore@lore.pengutronix.de; Wed, 20 Sep 2023 13:23:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qivIq-0004rg-FL
	for lore@pengutronix.de; Wed, 20 Sep 2023 13:23:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zUIxxcFesUfzwntuwZqLEOY3YRGVj+PFQMLy4gSoxpM=; b=PEGyppTEp2jmi+CxOhYkb2QqEz
	QC40hSGdQnLz18fXTzWpTXrb7fqZx5JFF0mLQJtCJkRm10nm0qvzvQ/V7zg1/k3MdlRNvvEMN56Jv
	cA5uqqPYqX0yll3ZafOCfMr+n1obc/bYn7rW0WwQ3huI/uZXca6FhHYMPjhKWB1oJk9uNEhwSnX9D
	D3oOXVDXhAMOXQZ9BgUuwZBryC6nZKTtQMaM9MG6MxbffXZlmaCYe7B4WRBt0rLNC+YziYs9FmW9i
	1a8Kqq5fEIQjwSoHvAMjp2QWDm1jLveB41zhI+QwxvFcU5OttCJi9aqtmEkwNNolKg83aPDz5E2Tq
	UAsxFPLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qivHq-002rGL-26;
	Wed, 20 Sep 2023 11:22:30 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qivHn-002rFt-03
	for barebox@lists.infradead.org;
	Wed, 20 Sep 2023 11:22:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivHl-0004dM-TA; Wed, 20 Sep 2023 13:22:25 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivHl-007ftE-Gn; Wed, 20 Sep 2023 13:22:25 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qivHl-00AAk7-Ee; Wed, 20 Sep 2023 13:22:25 +0200
Date: Wed, 20 Sep 2023 13:22:25 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230920112225.rz3j26hbtiircr2g@pengutronix.de>
References: <20230920103316.2758383-1-s.hauer@pengutronix.de>
 <20230920103316.2758383-4-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230920103316.2758383-4-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230920_042227_054743_E4673300 
X-CRM114-Status: GOOD (  20.58  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 03/11] regulator: introduce regulator logging functions.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-09-20, Sascha Hauer wrote:
> dev_* functions only print the struct device * as context, but often
> a single struct device * implements multiple regulators. Add rdev_*
> logging functions which allow to to print one specific regulator as
> context.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/regulator/core.c | 12 ++++++++++--
>  include/regulator.h      | 13 +++++++++++++
>  2 files changed, 23 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> index 41a3378ac8..8ef5a2372c 100644
> --- a/drivers/regulator/core.c
> +++ b/drivers/regulator/core.c
> @@ -19,6 +19,14 @@ struct regulator {
>  	struct device *dev;
>  };
>  
> +const char *rdev_get_name(struct regulator_dev *rdev)
> +{
> +	if (rdev->name)
> +		return rdev->name;
> +
> +	return "";
> +}
> +
>  static int regulator_map_voltage(struct regulator_dev *rdev, int min_uV,
>  				 int max_uV)
>  {
> @@ -125,7 +133,7 @@ static int regulator_resolve_supply(struct regulator_dev *rdev)
>  	if (!supply_name)
>  		return 0;
>  
> -	dev_dbg(rdev->dev, "resolving %s\n", supply_name);
> +	rdev_dbg(rdev, "resolving %s\n", supply_name);
>  
>  	supply = regulator_get(rdev->dev, supply_name);
>  	if (IS_ERR(supply)) {
> @@ -141,7 +149,7 @@ static int regulator_resolve_supply(struct regulator_dev *rdev)
>  		 * we couldn't. If you want to get rid of this warning, consider
>  		 * migrating your platform to have deep probe support.
>  		 */
> -		dev_warn(rdev->dev, "Failed to get '%s' regulator (ignored).\n",
> +		rdev_warn(rdev, "Failed to get '%s' regulator (ignored).\n",
>  			 supply_name);
>  		return 0;
>  	}
> diff --git a/include/regulator.h b/include/regulator.h
> index 5eb236e602..d02ea8ffd0 100644
> --- a/include/regulator.h
> +++ b/include/regulator.h
> @@ -159,6 +159,19 @@ int dev_regulator_register(struct regulator_dev *rd, const char * name,
>  
>  void regulators_print(void);
>  
> +const char *rdev_get_name(struct regulator_dev *rdev);
> +
> +#define rdev_crit(rdev, fmt, ...)                                       \
> +        pr_crit("%s: " fmt, rdev_get_name(rdev), ##__VA_ARGS__)
> +#define rdev_err(rdev, fmt, ...)                                        \
> +        pr_err("%s: " fmt, rdev_get_name(rdev), ##__VA_ARGS__)
> +#define rdev_warn(rdev, fmt, ...)                                       \
> +        pr_warn("%s: " fmt, rdev_get_name(rdev), ##__VA_ARGS__)
> +#define rdev_info(rdev, fmt, ...)                                       \
> +        pr_info("%s: " fmt, rdev_get_name(rdev), ##__VA_ARGS__)
> +#define rdev_dbg(rdev, fmt, ...)                                        \
> +        pr_debug("%s: " fmt, rdev_get_name(rdev), ##__VA_ARGS__)
> +
>  #ifdef CONFIG_REGULATOR
>  
>  struct regulator *regulator_get(struct device *, const char *);
> -- 
> 2.39.2
> 
> 
> 


