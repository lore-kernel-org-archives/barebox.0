Delivery-date: Wed, 06 Sep 2023 16:11:03 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdtFG-0062rt-9P
	for lore@lore.pengutronix.de; Wed, 06 Sep 2023 16:11:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qdtFE-0007qx-2p
	for lore@pengutronix.de; Wed, 06 Sep 2023 16:11:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=qbo6lCHAwPgv3DoSPedRbl9Zm3Lflo2jxJtYhHHgeiQ=; b=fXXqzv6MjvX8jTVSPpuJ9dSDH+
	nDHKUfLlfmWAH8DKV+Cdg/UWKpV4uoS5QVc9WOcarPfOs62uBY5frq7lA24+F5Mc7Sot+IoOfR8N+
	LBEIbmtQhqUKb7poloX+gc5zAr/9xE7LEbNcDRB8yegnkGhY6WlnhDkEjwfiq+FzHdwljjH5SCam4
	tjLUNg5RX/z1e0eYCpS+fhC7AoeBokF2qKkn0SFL+wfluvrQqWIPQi/laE00GjnrKq+5AgLF3GvyH
	oGRHZiJiSJ5vhTf3yGc/nN5kyUquL+/13czKFxIUYoUDVkZ7sq2MU+ARmwaVncAZEk+LbJLS4jpir
	P4rmxpfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qdtDa-00ABIr-18;
	Wed, 06 Sep 2023 14:09:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qdtDW-00ABFd-2I
	for barebox@lists.infradead.org;
	Wed, 06 Sep 2023 14:09:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtDR-0007GY-60; Wed, 06 Sep 2023 16:09:09 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtDQ-004Rkm-Q0; Wed, 06 Sep 2023 16:09:08 +0200
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qdtDQ-002GE7-J3; Wed, 06 Sep 2023 16:09:08 +0200
Date: Wed, 6 Sep 2023 16:09:08 +0200
To: Bastian Krause <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Uwe =?iso-8859-15?Q?Kleine-K=F6nig?= <ukl@pengutronix.de>,
	Marco Felsch <m.felsch@pengutronix.de>
Message-ID: <20230906140908.GC492117@pengutronix.de>
References: <20230906133928.1609901-1-bst@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230906133928.1609901-1-bst@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230906_070914_771812_924A0FC9 
X-CRM114-Status: GOOD (  23.46  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 1/2] clk: implement clk_get_optional helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Sep 06, 2023 at 03:39:27PM +0200, Bastian Krause wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Lack of clock can be ok at times and thus the clk API accepts NULL
> arguments and treats them as no-op.
> 
> Linux provides a clk_get_optional function to simplify code with such
> optional code, so let's provide an equivalent for barebox.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>
> ---
> No changes since (implicit) v1.
> ---
>  include/linux/clk.h | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/include/linux/clk.h b/include/linux/clk.h
> index 8509d5ece9d..82022e78e39 100644
> --- a/include/linux/clk.h
> +++ b/include/linux/clk.h
> @@ -932,4 +932,23 @@ static inline void clk_bulk_disable(int num_clks,
>  
>  #endif
>  
> +/**
> + * clk_get_optional - lookup and obtain a reference to an optional clock
> + *		      producer.
> + * @dev: device for clock "consumer"
> + * @id: clock consumer ID
> + *
> + * Behaves the same as clk_get() except where there is no clock producer. In
> + * this case, instead of returning -ENOENT, the function returns NULL.
> + */
> +static inline struct clk *clk_get_optional(struct device *dev, const char *id)
> +{
> +	struct clk *clk = clk_get(dev, id);
> +
> +	if (clk == ERR_PTR(-ENOENT))
> +		return NULL;
> +
> +	return clk;
> +}
> +
>  #endif
> -- 
> 2.39.2
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


