Delivery-date: Mon, 08 Aug 2022 14:15:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL1fU-00G9H9-TG
	for lore@lore.pengutronix.de; Mon, 08 Aug 2022 14:15:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oL1fV-0000Vd-5m
	for lore@pengutronix.de; Mon, 08 Aug 2022 14:15:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=DBAmvGpQH8HcsEKuTFWs3vtHvPspl3muZq1D2D2qVvc=; b=zvYSvaX02Uy4DosiUYxHgfi2Se
	/mR3KJXpXb02mqkHZ/JsiD5bqTMeaMI5orcTpXK9e3IPKwznLyCQo92h6O8Sddvk2xcel4spDIN+9
	rNSeJrGsQIw4drTWCubzsu2ebBoskD3p7rDM81DCvTBQZxQGxExKRNUsfHD1X3ItL42qAss9WZUd7
	fAr2bmxulp9wYxOV4Btgmo5gfj1d8WgTu4BDApKONe6u9BqfFzj/IX0ah1nexnNwtdejgB5873JRZ
	vUeM1DjfUxip4uAHQVQbp3xc+jWBKlP7LDrW3TbF3saIH3akqZT4ULAQPnVWBDfdTS702uQIxsxNu
	4JuGGJ1Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1e3-00DXaQ-EC; Mon, 08 Aug 2022 12:14:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oL1XQ-00DU9y-77
	for barebox@lists.infradead.org; Mon, 08 Aug 2022 12:07:20 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL1XO-0007YZ-Rx; Mon, 08 Aug 2022 14:07:14 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oL1XO-0008FF-J8; Mon, 08 Aug 2022 14:07:14 +0200
Date: Mon, 8 Aug 2022 14:07:14 +0200
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20220808120714.GA31528@pengutronix.de>
References: <20220805125931.1212228-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220805125931.1212228-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220808_050716_299656_092D08A2 
X-CRM114-Status: GOOD (  26.42  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/3] reset: Fix of_reset_control_get() for consistent
 return values
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Aug 05, 2022 at 02:59:29PM +0200, Ahmad Fatoum wrote:
> When of_reset_control_get() is called without connection ID it returns
> -ENOENT when the 'resets' property doesn't exists or is an empty entry.
> However when a connection ID is given it returns -EINVAL when the 'resets'
> property doesn't exists or the requested name can't be found. This is
> because the error code returned by of_property_match_string() is just
> passed down as an index to of_parse_phandle_with_args(), which then
> returns -EINVAL.
> 
> To get a consistent return value with both code paths we must return
> -ENOENT when of_property_match_string() fails.
> Signed-off-by: Alban Bedel <albeu@free.fr>
> Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
> [afa: ported from Linux 3d81216fde465e76c5eae98f61d3666163634395]
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/reset/core.c | 5 ++++-
>  1 file changed, 4 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/reset/core.c b/drivers/reset/core.c
> index 4355c3415eb0..93fbaeccafd2 100644
> --- a/drivers/reset/core.c
> +++ b/drivers/reset/core.c
> @@ -236,8 +236,11 @@ struct reset_control *of_reset_control_get(struct device_node *node,
>  {
>  	int index = 0;
>  
> -	if (id)
> +	if (id) {
>  		index = of_property_match_string(node, "reset-names", id);
> +		if (index < 0)
> +			return ERR_PTR(-ENOENT);
> +	}
>  
>  	return of_reset_control_get_by_index(node, index);
>  }
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


