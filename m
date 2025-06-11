Delivery-date: Wed, 11 Jun 2025 08:38:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPF6R-0063s3-2N
	for lore@lore.pengutronix.de;
	Wed, 11 Jun 2025 08:38:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uPF6R-0002AK-5U
	for lore@pengutronix.de; Wed, 11 Jun 2025 08:38:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ZrXScaBbhvMHkRh/oeyVPrXYGcyBsrla1PrwDBT/WWs=; b=La/NMQRXn0eYrSpgORVY8Zy69J
	XC6gQS+rc1J3qc5ZkE9IpMRBIGgLkYwZWgcK7yxBhp3bp7D4At8rDitCAsOK8QzESjiKMzYEhhWsQ
	6XPu1GeHcmSy8Dp3liQmVHzepWg/i2WTzlca0fgMokLJ2gnf4Ildk9vulRZX1gMcsEiFE7GX3KLXx
	lGEwxGK32H1Y2hR3GcPd5AGAnuzCqKbK7YUVmTvGhaU41d1c7o/iTrzQQZRh2a2Pkj41KjWwO6J7B
	LZHzU25ASuctaZPyUFLP7gsxfnmbN4y+g1LC4bM60PSXxo1sFhYHrRhJY6WPvSj2XpdUAb/hIha5k
	3VMIlFxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPF5g-000000091HM-2WVZ;
	Wed, 11 Jun 2025 06:37:40 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPF5F-000000091Dq-0pCo
	for barebox@bombadil.infradead.org;
	Wed, 11 Jun 2025 06:37:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=ZrXScaBbhvMHkRh/oeyVPrXYGcyBsrla1PrwDBT/WWs=; b=G0pDwZRoBzGaqSduki02ifsLmX
	E873tHhgcSf2+E/olH4BxWlYMWnOm59TFeBL3/w0MbUvpm3Fozzkh7cPUrI1df2paysTdJavOkwrm
	bgIINM5cNXYXKosWm+VhZ1pMVG6IxDQDiTZC/bVN5FOaa+uRF2zsPhdB3eyf/WarOGfzpEUPXqDvU
	dbtgLBgpFGxn+94o6MeaA88bsxNgo76qrG6oLACUMtr7iBt2tHjadvQRShIgZMx0GIS4g161fu+Ep
	p5nSsWbYg8xkq+Ipvlr8/HU8T6WyLXymGPUzbj2P+lSTNT0u0Ow5qrizPYQ79lwdrckC2f9DYY3Oh
	Me828Fpw==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uPF5D-000000028k8-0d4r
	for barebox@lists.infradead.org;
	Wed, 11 Jun 2025 06:37:13 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1uPF59-0001n8-Ij; Wed, 11 Jun 2025 08:37:07 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uPF59-002ts9-1H;
	Wed, 11 Jun 2025 08:37:07 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1uPF59-006k5V-0y;
	Wed, 11 Jun 2025 08:37:07 +0200
Date: Wed, 11 Jun 2025 08:37:07 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Jonas Rebmann <jre@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aEkkE2Lsw7eHhH9R@pengutronix.de>
References: <20250610-imx_spi_alias-v1-1-fc23f2f143ea@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250610-imx_spi_alias-v1-1-fc23f2f143ea@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250611_073711_257851_A43CA8A0 
X-CRM114-Status: GOOD (  20.76  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] spi: Probe spi devices without alias
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Jonas,

On Tue, Jun 10, 2025 at 05:24:56PM +0200, Jonas Rebmann wrote:
> Continue probing spi connected devices without an alias. Setting bus_num
> to -1 will assign numbers automatically.
> 
> Signed-off-by: Jonas Rebmann <jre@pengutronix.de>
> ---
>  drivers/spi/imx_spi.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> index bfb4b413ebab0e62e92f61db52a866a1d55b9ae3..14c4baada8e03ce1b38031afc68de7b261d43e78 100644
> --- a/drivers/spi/imx_spi.c
> +++ b/drivers/spi/imx_spi.c
> @@ -604,9 +604,10 @@ static int imx_spi_probe(struct device *dev)
>  		imx->cs_array = pdata->chipselect;
>  	} else if (IS_ENABLED(CONFIG_OFDEVICE)) {
>  		ret = of_alias_get_id(dev->of_node, "spi");
> -		if (ret < 0)
> -			goto err_free;
> -		master->bus_num = ret;
> +		if (ret >= 0)
> +			master->bus_num = ret;
> +		else
> +			master->bus_num = -1;

Calling of_alias_get_id() is unnecessary. Just set bus_num = -1, in that
case this is in spi_register_controller() should trigger:

	if ((ctrl->bus_num < 0) && ctrl->dev->of_node)
		ctrl->bus_num = of_alias_get_id(ctrl->dev->of_node, "spi");

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


