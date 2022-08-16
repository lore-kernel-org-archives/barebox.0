Delivery-date: Tue, 16 Aug 2022 10:55:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNsMI-000VB9-Hs
	for lore@lore.pengutronix.de; Tue, 16 Aug 2022 10:55:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oNsMG-0005eM-3b
	for lore@pengutronix.de; Tue, 16 Aug 2022 10:55:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=R5oIMxjv3J95/S9ZvFHRJpomMe9B86RnXi5HRlqO0LE=; b=o5f79DBs9Fw9K16P08C8LyQHa7
	H4hM0sc+ndOQEPYw4+3Yk6iEfpvu9ITtKPttnal0kJFmJmrPlUu67LuRz/PyoXEO/SAzjpCiLPDia
	nFZ7LiQusFta5pukaztTFUrtj1JjakTFB3GD6s7EYJXt/wnEGpH/80JnCDncUvP3PnH810009R4/F
	GSX57SlagJp0XuOyVdkLKfPTb4EpO9Ni0wrnnSSAsl5IWGs5S+SReHsBtMnYZ0/6+/m7MoMexdctl
	nzVcP1CASj7ut1fS+mJOzw/LYeM+DCKKKh7jXgEB/K40uqRBIPsLmnE/DHHRpaWOZjrvOIgqVX+m1
	ta6eQ0kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNsKj-00H1lH-IR; Tue, 16 Aug 2022 08:53:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNsKf-00H1j2-1b
	for barebox@lists.infradead.org; Tue, 16 Aug 2022 08:53:54 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNsKd-0005M2-Kb; Tue, 16 Aug 2022 10:53:51 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oNsKd-0007cT-Bz; Tue, 16 Aug 2022 10:53:51 +0200
Date: Tue, 16 Aug 2022 10:53:51 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220816085351.GM17485@pengutronix.de>
References: <20220815160708.2430433-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220815160708.2430433-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220816_015353_108619_4D6980FC 
X-CRM114-Status: GOOD (  24.71  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH] of: move of_get_node_by_reproducible_name() into common
 code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Mon, Aug 15, 2022 at 06:07:08PM +0200, Ahmad Fatoum wrote:
> The function already has a good generic name and can be useful for board
> code or for other drivers seeking to fix up the kernel device tree
> according to information within the barebox DT.
> Thus move it to a central location.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/of/base.c                 | 13 +++++++++++++
>  drivers/power/reset/reboot-mode.c | 13 -------------
>  include/of.h                      |  9 +++++++++
>  3 files changed, 22 insertions(+), 13 deletions(-)

Applied, thanks
  Sascha

> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index b91ee92e1b88..52e6a9294e11 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -2865,6 +2865,19 @@ struct device_node *of_find_node_by_reproducible_name(struct device_node *from,
>  	return NULL;
>  }
>  
> +struct device_node *of_get_node_by_reproducible_name(struct device_node *dstroot,
> +						     struct device_node *srcnp)
> +{
> +	struct device_node *dstnp;
> +	char *name;
> +
> +	name = of_get_reproducible_name(srcnp);
> +	dstnp = of_find_node_by_reproducible_name(dstroot, name);
> +	free(name);
> +
> +	return dstnp;
> +}
> +
>  /**
>   * of_graph_parse_endpoint() - parse common endpoint node properties
>   * @node: pointer to endpoint device_node
> diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
> index 1316af4213fb..5761128f8e5a 100644
> --- a/drivers/power/reset/reboot-mode.c
> +++ b/drivers/power/reset/reboot-mode.c
> @@ -48,19 +48,6 @@ static int reboot_mode_add_param(struct device_d *dev,
>  	return PTR_ERR_OR_ZERO(param);
>  }
>  
> -static struct device_node *of_get_node_by_reproducible_name(struct device_node *dstroot,
> -							    struct device_node *srcnp)
> -{
> -	struct device_node *dstnp;
> -	char *name;
> -
> -	name = of_get_reproducible_name(srcnp);
> -	dstnp = of_find_node_by_reproducible_name(dstroot, name);
> -	free(name);
> -
> -	return dstnp;
> -}
> -
>  static int of_reboot_mode_fixup(struct device_node *root, void *ctx)
>  {
>  	struct reboot_mode_driver *reboot = ctx;
> diff --git a/include/of.h b/include/of.h
> index 91c3766992aa..995e9b591399 100644
> --- a/include/of.h
> +++ b/include/of.h
> @@ -195,6 +195,9 @@ extern struct device_node *of_get_compatible_child(const struct device_node *par
>  extern struct device_node *of_get_child_by_name(const struct device_node *node,
>  					const char *name);
>  extern char *of_get_reproducible_name(struct device_node *node);
> +extern struct device_node *of_get_node_by_reproducible_name(struct device_node *dstroot,
> +							    struct device_node *srcnp);
> +
>  extern struct device_node *of_find_node_by_reproducible_name(struct device_node
>  							     *from,
>  							     const char *name);
> @@ -493,6 +496,12 @@ of_find_node_by_reproducible_name(struct device_node *from, const char *name)
>  	return NULL;
>  }
>  
> +
> +static iline struct device_node *of_get_node_by_reproducible_name(struct device_node *dstroot,
> +								  struct device_node *srcnp)
> +{
> +	return NULL;
> +}
>  static inline struct property *of_find_property(const struct device_node *np,
>  						const char *name,
>  						int *lenp)
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


