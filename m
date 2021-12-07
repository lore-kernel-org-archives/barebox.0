Delivery-date: Tue, 07 Dec 2021 10:14:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWYT-0008Ef-LH
	for lore@lore.pengutronix.de; Tue, 07 Dec 2021 10:14:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1muWYR-0002Ox-Q8
	for lore@pengutronix.de; Tue, 07 Dec 2021 10:14:33 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=k3ZDXZn65lS5NKpbwCzE1fxfNAEbk5OtGT4Y7u7OGnc=; b=tTsj6cbW4xYpTkxuZBXr7uYmA4
	i1/b/KPhbzQt4LcOrJIYFahluLEwmSMaRkqQqLtoOiemBjlmN92BKMn8TGH08Myq7q6fE+ZLgStHs
	RTD5YrJ23AyYwcKbs1AAd+NsjVC67+J9rZoZfFng6Ggjw0a9ghMgwOd8pcz6KM1w2BAjcT5gEteX2
	h4WmzU2qgwkm6lNIYMVulJQ52AJRskV2sGhIgnVzqIxPcdsQCP3q6m9yk2UJUTy3Jy+L3582mbFsK
	NuRWrxXkcsGGKKWBsGsr/dM/TI6RsYf4/V4afkYNdzUHK1fr9Zg2pcbYDfDuY05kIs+lIz2otjGBZ
	qGS3H/dw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muWWh-007k5F-9C; Tue, 07 Dec 2021 09:12:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muWUR-007j5v-1T
 for barebox@lists.infradead.org; Tue, 07 Dec 2021 09:10:26 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWUP-0001Lm-GC; Tue, 07 Dec 2021 10:10:21 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muWUP-0003KH-4g; Tue, 07 Dec 2021 10:10:21 +0100
Date: Tue, 7 Dec 2021 10:10:21 +0100
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20211207091021.GJ28260@pengutronix.de>
References: <20211202074236.196396-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211202074236.196396-1-a.fatoum@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 10:10:11 up 292 days, 12:34, 143 users,  load average: 0.57, 0.31,
 0.24
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211207_011023_158183_93C403BD 
X-CRM114-Status: GOOD (  26.31  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] phy: rockchip-inno-usb2: add support for older rockchip
 SoC bindings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Thu, Dec 02, 2021 at 08:42:36AM +0100, Ahmad Fatoum wrote:
> Anything earlier than the rv1108, has no rockchip,usbgrf regmap and
> instead access the parent device's regmap. Add support for this binding,
> so the driver is usable on the rk3399.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 7 ++++++-
>  1 file changed, 6 insertions(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> index 6b9d54f34460..459ad9b35534 100644
> --- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> +++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
> @@ -392,7 +392,12 @@ static int rockchip_usb2phy_probe(struct device_d *dev)
>  
>  	rphy->dev = dev;
>  
> -	rphy->grf_base = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
> +	if (of_device_is_compatible(np, "rockchip,rv1108-usb2phy") ||
> +	    of_device_is_compatible(np, "rockchip,rk3568-usb2phy"))
> +		rphy->grf_base = syscon_regmap_lookup_by_phandle(np, "rockchip,usbgrf");
> +	else
> +		rphy->grf_base = syscon_node_to_regmap(dev->parent->device_node);
> +
>  	if (IS_ERR(rphy->grf_base))
>  		return PTR_ERR(rphy->grf_base);
>  
> -- 
> 2.30.2
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

