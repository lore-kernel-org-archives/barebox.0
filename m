Delivery-date: Thu, 26 Jan 2023 09:17:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxRT-002Tc4-Vb
	for lore@lore.pengutronix.de; Thu, 26 Jan 2023 09:17:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKxRR-00040d-At
	for lore@pengutronix.de; Thu, 26 Jan 2023 09:17:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/YXsxnVU4RW4FDXYEBhdaHfj9Oe7NzmQXgiurcRqLKY=; b=FL8b5aFqHnma7OUCwnPsj/U566
	QjFfL9JAdZl2vf4J4UArwVFzIwNHo8dWi6c6vpy2J4YdJnKJVS/8ktxwdFahoPavcUSB5Jznq3N70
	7XI1hXLdZi2wov4ai/CgsJP5OJr4NPYJ2y/GCKfjGE7+/9IyNjn7gfn6ZwfWPoASqQ/KdqJx9UJY0
	NyaZQEtX4+g4I5CJ2I75TocQoo6QET5kx62XFrGZLqEPfs6Zunpe1CqMqF31dHQ3XQLSM4v5P9mJ6
	f2p1Vxh76wOklUOxLRVwzaX6xgBBGixLw6N2ALUtoTUAdw57rrP7R2EcxL5eqWptJqC1a279QDVx7
	ONfsdrOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxQG-009xga-9E; Thu, 26 Jan 2023 08:15:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKxQA-009xeu-Mk
	for barebox@lists.infradead.org; Thu, 26 Jan 2023 08:15:48 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxQ9-0003kM-EP; Thu, 26 Jan 2023 09:15:45 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pKxQ9-0004Ut-6F; Thu, 26 Jan 2023 09:15:45 +0100
Date: Thu, 26 Jan 2023 09:15:45 +0100
To: Michael Grzeschik <m.grzeschik@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230126081545.GI13319@pengutronix.de>
References: <20230124204434.3502574-1-m.grzeschik@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230124204434.3502574-1-m.grzeschik@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230126_001546_779159_D51E6447 
X-CRM114-Status: GOOD (  27.13  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2] phy: stm32-usphyc: add mdelay(1) to fix timeout on
 some machines
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Tue, Jan 24, 2023 at 09:44:34PM +0100, Michael Grzeschik wrote:
> An mdelay of 1 seems to be necessary on some machines, since
> the monsel status does not seem to be accurate. On rare occasions just
> working with the phy after this pll check lead to no functional usb.
> With this short mdelay this issue was not reported again.
> 
> Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
> ---
> v1 -> v2: - reworded the comment
> 

And updated to this one.

Sascha

>  drivers/phy/phy-stm32-usbphyc.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/phy/phy-stm32-usbphyc.c b/drivers/phy/phy-stm32-usbphyc.c
> index 657824405f..db4ccef920 100644
> --- a/drivers/phy/phy-stm32-usbphyc.c
> +++ b/drivers/phy/phy-stm32-usbphyc.c
> @@ -271,6 +271,15 @@ static int stm32_usbphyc_phy_init(struct phy *phy)
>  		goto pll_disable;
>  	}
>  
> +	/* This mdelay seems to be necessary on some machines, since the
> +	 * monsel status does not seem to be accurate. On rare occasions
> +	 * just working with the phy after this pll check the usb
> +	 * peripheral (e.g. on the dwc2) run into timeout issues and
> +	 * leading to no functional usb. With this short mdelay this
> +	 * issue was not reported again.
> +	 */
> +	mdelay(1);
> +
>  	usbphyc_phy->active = true;
>  
>  	return 0;
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


