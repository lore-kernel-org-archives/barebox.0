Delivery-date: Wed, 19 Oct 2022 09:56:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol3wT-000P3X-7g
	for lore@lore.pengutronix.de; Wed, 19 Oct 2022 09:56:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ol3wQ-0007Wd-Fg
	for lore@pengutronix.de; Wed, 19 Oct 2022 09:56:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fdvf2rQg+y0p0WJHAE/WYATUfZ4kb3La0vLS1V7wYfs=; b=nzaquCtVmNmQn0sortyZk7LZSs
	HVpq67gm/rHLaUFDJI9SnsxcH3JDXR60n/FDOPln2/W7w9IJHm/1+b7dYIll4amRDnfjqnbAhhUWf
	yaNU/PKiFlI2dZgi80rf3LifAg9c1CPCfgSplz0dg+SsgLQCSeUQZoAUaozKv09ixbVGag73Qn3Za
	WVDr4vxILNVdtEaOMuzfRITc0QUxz54fuB4CTpouGz4cqzv4cmGtVc6WB5FpRcOx/plGipSs2J64Y
	lvUHGYfgvCTYRCks5MNUXziqfn7PBD90K+Xq0jh6sVcxtwWRsT3xrO7LcfiO3BbVpgWTUci2FC2ju
	tF2GDuAA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol3v7-00GIgA-8x; Wed, 19 Oct 2022 07:55:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ol3uw-00GIet-IX
	for barebox@lists.infradead.org; Wed, 19 Oct 2022 07:55:17 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ol3uu-0007En-NN; Wed, 19 Oct 2022 09:55:08 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ol3us-00028M-Kk; Wed, 19 Oct 2022 09:55:06 +0200
Date: Wed, 19 Oct 2022 09:55:06 +0200
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20221019075506.GV6702@pengutronix.de>
References: <20221014163534.3812272-1-m.felsch@pengutronix.de>
 <20221014163534.3812272-5-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221014163534.3812272-5-m.felsch@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221019_005516_444539_270B1D0D 
X-CRM114-Status: GOOD (  14.93  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 4/8] state: cosmetic fix reverse christmas tree order
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Oct 14, 2022 at 06:35:30PM +0200, Marco Felsch wrote:
> No functional change, just apply the common code standards.

I didn't know these are common code standards for barebox ;)

Also I really don't like such things very much. The following forces you
to violate this rule:

	struct priv *priv = to_priv(common_type);
	struct myfoo = &priv->some_special_thingy_inside_priv;

>  		return 0;
> @@ -212,13 +212,13 @@ static int state_convert_node_variable(struct state *state,
>  				       const char *parent_name,
>  				       enum state_convert conv)
>  {
> +	struct device_node *new_node = NULL;
>  	const struct variable_type *vtype;
> +	char *short_name, *name, *indexs;

If you add another char * type variable or remove one of those you
either violate the ordering or introduce another useless churn.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


