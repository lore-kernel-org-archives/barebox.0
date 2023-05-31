Delivery-date: Wed, 31 May 2023 18:35:22 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4OnE-004Ulh-4F
	for lore@lore.pengutronix.de; Wed, 31 May 2023 18:35:22 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q4OnB-0007n1-HH
	for lore@pengutronix.de; Wed, 31 May 2023 18:35:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TdhSj3xPQCi+jzLuCApZ1sSvE6w1O9o8YS9PdkUOXeo=; b=H7Es6o9s/izjsXuzjFS949Pz6r
	t2uHhlKHNa7lWblgN2x2auaSsVy/lkVsDWmguD/TD1GQjkRSspdHPNHo/LxkGdlOJeyh37nsAG6CA
	vNEdk+uN/F0YKTolvyjjhkH72Fhz+YpH8uoL/eKoj3UGb8IN3ZPCF0cddgeJ4+Fm6l0cDGr7d6RnW
	cJ3mL2+EurauR+CXK/eljwiuVqx6klaDS9vF1o0SfHAL+Q6SHWvpOMbDTGkSjQqoahqBDy20GuyQN
	/tmTUP039IBYCjr6JcJqsIuViz4I6SdnevExnRLDDcm6Srg4WccXWzSfCByBVF02GtQBh/eW8PFEG
	FwEKPH4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Om5-000UIa-27;
	Wed, 31 May 2023 16:34:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q4Om2-000UHZ-1h
	for barebox@lists.infradead.org;
	Wed, 31 May 2023 16:34:11 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Om0-0007b5-R6; Wed, 31 May 2023 18:34:08 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1q4Om0-0002fP-JU; Wed, 31 May 2023 18:34:08 +0200
Date: Wed, 31 May 2023 18:34:08 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230531163408.w7vlhyskzcdsqlrv@pengutronix.de>
References: <20230531145927.1399282-1-a.fatoum@pengutronix.de>
 <20230531145927.1399282-6-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230531145927.1399282-6-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230531_093410_561214_2B9973D6 
X-CRM114-Status: GOOD (  16.27  )
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
Subject: Re: [PATCH 05/18] of: of_path: always call
 of_partition_ensure_probed before resolving
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad,

On 23-05-31, Ahmad Fatoum wrote:
> of_find_path may be called on a partition, whose parent device is not
> yet probed. state code solves that by calling of_partition_ensure_probed
> before of_find_path_by_nde, but really we should be doing that for all

nit: of_find_path_by_node

> calls to of_find_path. Do so.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  common/state/state.c | 4 ----
>  drivers/of/of_path.c | 2 ++
>  2 files changed, 2 insertions(+), 4 deletions(-)
> 
> diff --git a/common/state/state.c b/common/state/state.c
> index 6b4acbb32bcc..11cc86ff73be 100644
> --- a/common/state/state.c
> +++ b/common/state/state.c
> @@ -618,10 +618,6 @@ struct state *state_new_from_node(struct device_node *node, bool readonly)
>  	}
>  
>  #ifdef __BAREBOX__
> -	ret = of_partition_ensure_probed(partition_node);
> -	if (ret)
> -		goto out_release_state;
> -
>  	ret = of_find_path_by_node(partition_node, &state->backend_path, 0);
>  #else
>  	ret = of_get_devicepath(partition_node, &state->backend_path, &offset, &size);
> diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
> index 1268cf36ee5b..059690e9b8e8 100644
> --- a/drivers/of/of_path.c
> +++ b/drivers/of/of_path.c
> @@ -43,6 +43,8 @@ static int __of_find_path(struct device_node *node, const char *part, char **out
>  	struct cdev *cdev;
>  	bool add_bb = false;
>  
> +	of_partition_ensure_probed(node);
> +
>  	dev = of_find_device_by_node_path(node->full_name);
>  	if (!dev) {
>  		int ret;
> -- 
> 2.39.2
> 
> 
> 


