Delivery-date: Wed, 31 May 2023 19:55:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Q2d-004aDS-T5
	for lore@lore.pengutronix.de; Wed, 31 May 2023 19:55:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4Q2a-0000c6-JZ
	for lore@pengutronix.de; Wed, 31 May 2023 19:55:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mtSIVq0c32HXNkfg63hTq2BqReJMvTDJ+59Il0wHGJk=; b=AkFMDx9KOhofCuj4gA+OCkmYTq
	+qIrQPmCRU6QVrqX+lDO6jt1uQ4YSwMq8WzsNy3jalimkjfh1DiVBVFcF41a6v4/GQsdj5ZzIZVxQ
	iPlSQmgODD9wNxxexLYJcsTB3ATOkNLezABvTvBwlJGSNf0QpsqeDdlmoiYyBbrbJjnJkiRhx7ojs
	RENp7j8Ux45lGkobxiI6rTfCgjLgd/jauQCpSJsClE9ZJECAXeySCe8/j0AgfVkaqw6S9IyBTMQgI
	dF/+mP9zIjCZR0hrrzDUCXXwnDmOjQtYEuvu3FumEEjsBhqWn00oCGuWJmmx+DVVJG6y8ljzO4pH2
	ptqIKfRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Q1c-000iC5-0B;
	Wed, 31 May 2023 17:54:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Q1X-000iAS-23
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 17:54:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Q1W-0000Qq-Ek; Wed, 31 May 2023 19:54:14 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Q1W-0005um-7L; Wed, 31 May 2023 19:54:14 +0200
Date: Wed, 31 May 2023 19:54:14 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230531175414.c3jt54gihuvceddu@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-16-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-16-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_105417_189565_DC3D45DB 
X-CRM114-Status: GOOD (  22.11  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 15/18] state: factor device path lookup into helper
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 23-05-31, Ahmad Fatoum wrote:
> The #ifdef __BAREBOX__ is meant for easier synchronization with
> dt-utils. We'll keep that intact, but move it out of the function to not
> break reading flow. After sync, dt-utils would now need to implement
> 
>   of_cdev_find
>   cdev_to_devpath
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/state/state.c | 30 +++++++++++++++++++++++-------
>  1 file changed, 23 insertions(+), 7 deletions(-)
> 
> diff --git a/common/state/state.c b/common/state/state.c
> index 11cc86ff73be..88e246198fb8 100644
> --- a/common/state/state.c
> +++ b/common/state/state.c
> @@ -581,6 +581,20 @@ void state_release(struct state *state)
>  	free(state);
>  }
>  
> +#ifdef __BAREBOX__
> +static char *cdev_to_devpath(struct cdev *cdev, off_t *offset, size_t *size)
> +{
> +	/*
> +	 * We only accept partitions exactly mapping the barebox-state,
> +	 * but dt-utils may need to set non-zero values here
> +	 */
> +	*offset = 0;
> +	*size = 0;
> +
> +	return basprintf("/dev/%s", cdev->name);
> +}
> +#endif

We could get rid of the #ifdef if we move this function to some barebox
internal code not shared with dt-utils.

Regards,
  Marco

> +
>  /*
>   * state_new_from_node - create a new state instance from a device_node
>   *
> @@ -597,8 +611,9 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
>  	const char *alias;
>  	uint32_t stridesize;
>  	struct device_node *partition_node;
> -	off_t offset = 0;
> -	size_t size = 0;
> +	struct cdev *cdev;
> +	off_t offset;
> +	size_t size;
>  
>  	alias = of_alias_get(node);
>  	if (!alias) {
> @@ -617,11 +632,8 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
>  		goto out_release_state;
>  	}
>  
> -#ifdef __BAREBOX__
> -	ret = of_find_path_by_node(partition_node, &state->backend_path, 0);
> -#else
> -	ret = of_get_devicepath(partition_node, &state->backend_path, &offset, &size);
> -#endif
> +	cdev = of_cdev_find(partition_node);
> +	ret = PTR_ERR_OR_ZERO(cdev);
>  	if (ret) {
>  		if (ret != -EPROBE_DEFER)
>  			dev_err(&state->dev, "state failed to parse path to backend: %s\n",
> @@ -629,6 +641,10 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
>  		goto out_release_state;
>  	}
>  
> +	state->backend_path = cdev_to_devpath(cdev, &offset, &size);
> +
> +	pr_debug("%s: backend resolved to %s\n", node->full_name, state->backend_path);
> +
>  	state->backend_reproducible_name = of_get_reproducible_name(partition_node);
>  
>  	ret = of_property_read_string(node, "backend-type", &backend_type);
> -- 
> 2.39.2
> 
> 
> 


