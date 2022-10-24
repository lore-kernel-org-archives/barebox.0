Delivery-date: Mon, 24 Oct 2022 08:44:01 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrBp-000MFB-5j
	for lore@lore.pengutronix.de; Mon, 24 Oct 2022 08:44:01 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1omrBo-0006LD-5K
	for lore@pengutronix.de; Mon, 24 Oct 2022 08:44:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=c8/t05K5ekVijz1WgqqCUuWUeZHAWwVSIoZYVrWpclg=; b=1ni9a5N3fT8pR1bnkHH+UkO3sH
	K8r5S1TDpVLmqMgdyFf9MG5UtOmG65fkHl4bLOrRV+pZUknJnQTmQiuMw05iAC6fEGcuqYC7SEXB2
	lHnoS3iwpM7UyjkOWQVpyRjUXSB4eRJY7ngmeR4HkcOhKRSf+Y20hzs0XwYBh/RsIJCKpX13rPtSm
	+LEIK6di7ic35UzV6hE6NBJOjMCYTdLGWDcXJixoXT8e84rbO8IxGxuIxToXVDCzCMOvNSX0uBekx
	lj0BjoMJwpgpcJm0eL23h1hXKp5eOW5lhfmY3lwMSoaqgyD93ZSiavShMXpX9acctto+TpnWN0J1C
	D1ACXw2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrAZ-00HKcs-SL; Mon, 24 Oct 2022 06:42:43 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1omrAV-00HKc7-OL
	for barebox@lists.infradead.org; Mon, 24 Oct 2022 06:42:41 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omrAU-00067P-Gx; Mon, 24 Oct 2022 08:42:38 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1omrAT-0006V8-Ra; Mon, 24 Oct 2022 08:42:37 +0200
Date: Mon, 24 Oct 2022 08:42:37 +0200
To: Ahmad Fatoum <ahmad@a3f.at>
Cc: barebox@lists.infradead.org
Message-ID: <20221024064237.GF6702@pengutronix.de>
References: <20221021052240.2125785-1-ahmad@a3f.at>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221021052240.2125785-1-ahmad@a3f.at>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221023_234239_806773_C6631E77 
X-CRM114-Status: GOOD (  18.84  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] spi: imx_spi: match fsl,imx6ul-ecspi compatible
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, Oct 21, 2022 at 07:22:40AM +0200, Ahmad Fatoum wrote:
> Anticipate imx8mp.dtsi device tree change suggested upstream[1]
> and add the new compatible to our match list.
> 
> [1]: https://lore.kernel.org/all/20221020103158.2273874-2-peng.fan@oss.nxp.com/
> 
> Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
> ---
>  drivers/spi/imx_spi.c | 4 ++++
>  1 file changed, 4 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/spi/imx_spi.c b/drivers/spi/imx_spi.c
> index ad3e79d54ce5..3e0ad2db00ed 100644
> --- a/drivers/spi/imx_spi.c
> +++ b/drivers/spi/imx_spi.c
> @@ -662,6 +662,10 @@ static __maybe_unused struct of_device_id imx_spi_dt_ids[] = {
>  		.compatible = "fsl,imx51-ecspi",
>  		.data = &spi_imx_devtype_data_2_3,
>  	},
> +	{
> +		.compatible = "fsl,imx6ul-ecspi",
> +		.data = &spi_imx_devtype_data_2_3,
> +	},
>  #endif
>  	{
>  		/* sentinel */
> -- 
> 2.34.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


