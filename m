Delivery-date: Mon, 16 Jan 2023 13:14:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHOO8-00DYGy-CI
	for lore@lore.pengutronix.de; Mon, 16 Jan 2023 13:14:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pHOO6-0000j8-DF
	for lore@pengutronix.de; Mon, 16 Jan 2023 13:14:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YtH1rbqWUqoNwb8SjTmrAi1mycPfN++VaYr138TIVdY=; b=uLwBLSgNsH/Hlf1dNEaoB36vby
	Ud/1k8iV3D8RwtDsJI1myeUjp9dF793N4PVo2r/JA6t7FnPUJTBuH2JsotjZJrRvSXcjn6hIHGP9X
	lThOWd473ZTqATdQXn83xHw/t4rYp3HCIrRO+iFzf7+t0PQ3zDu5KmDz30QLDzeqF1Ykg8x4L624u
	2T4apSJpWcTEAACVf9uLoJjs/k7JlgIO9Y+ygvnD/AQyhHCLwquHaLt41y+S1iS/wXi+/GR38XRuM
	Nsx6RvUSZHkCc+7eiim4ZINdne5YbavkMWbLtze6yNjajWaMix2MpKFXUqXaOcuiZh806K+1DZBEv
	USpE2ZXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHOMV-00A3H2-PJ; Mon, 16 Jan 2023 12:13:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHOMR-00A3Fd-BE
	for barebox@lists.infradead.org; Mon, 16 Jan 2023 12:13:12 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pHOMN-0000cv-M0; Mon, 16 Jan 2023 13:13:07 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pHOMN-0003X3-Ez; Mon, 16 Jan 2023 13:13:07 +0100
Date: Mon, 16 Jan 2023 13:13:07 +0100
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230116121307.GB24755@pengutronix.de>
References: <20230113113407.2684725-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230113113407.2684725-1-o.rempel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230116_041311_400530_50087DA0 
X-CRM114-Status: GOOD (  23.04  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH v1 1/8] ARM: imx6sx: udoo-neo: port to driver model
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Jan 13, 2023 at 12:34:00PM +0100, Oleksij Rempel wrote:
> Port board code to the driver model
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  arch/arm/boards/udoo-neo/board.c | 18 +++++++++++++-----
>  1 file changed, 13 insertions(+), 5 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/udoo-neo/board.c b/arch/arm/boards/udoo-neo/board.c
> index 5964e92159..3bed20ae50 100644
> --- a/arch/arm/boards/udoo-neo/board.c
> +++ b/arch/arm/boards/udoo-neo/board.c
> @@ -5,13 +5,21 @@
>  #include <init.h>
>  #include <linux/clk.h>
>  
> -static int imx6sx_udoneo_coredevices_init(void)
> +static int imx6sx_udoneo_probe(struct device *dev)
>  {
> -	if (!of_machine_is_compatible("fsl,imx6sx-udoo-neo"))
> -		return 0;
> -
>  	barebox_set_hostname("mx6sx-udooneo");
>  
>  	return 0;
>  }
> -coredevice_initcall(imx6sx_udoneo_coredevices_init);
> +
> +static const struct of_device_id imx6sx_udoneo_of_match[] = {
> +	{ .compatible = "fsl,imx6sx-udoo-neo" },
> +	{ /* sentinel */ },
> +};
> +
> +static struct driver imx6sx_udoneo_driver = {
> +	.name = "board-udoo-neo",
> +	.probe = imx6sx_udoneo_probe,
> +	.of_compatible = imx6sx_udoneo_of_match,
> +};
> +postcore_platform_driver(imx6sx_udoneo_driver);
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


