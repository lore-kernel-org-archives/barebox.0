Delivery-date: Fri, 10 Feb 2023 10:45:59 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQPyj-002oFw-Fo
	for lore@lore.pengutronix.de; Fri, 10 Feb 2023 10:45:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQPyg-0005zc-Vi
	for lore@pengutronix.de; Fri, 10 Feb 2023 10:45:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:From:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=RqSZ24ALn91WUCOttZZ3FVOai8arlwZRnhJnSuBmKDc=; b=AXhwYFuampcauiLBsMWk3RPAQW
	r9e6RnT3I+l4UYKjs9YOMyGwaW8eRiK7qmjhaZ5UomJJLStZ5WxCcaWJknG/Xk6DVsf8R9GKFMSdI
	VF3hy9t4fGI2MgCapIqef7MLA2DMos+t4r2wrMJP5v3sSRyzIktUEMb35Gu138vwDJtI6a7NhDuXU
	KYsKTZLLJ1FH7hW1tQRMV6tkl5oo4hhypcYBs7O2jFecNVm1K/dDk54+KsOARsxCv9VdEYMlJ2B0N
	9MkDXldYYk6qW7iX7QWg6w8/YhOs9iZXoLC8lEoqzIo8W/TC7vS/9/aU/+d8SacHhBCtBV8XS13uI
	821NGchQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQPxX-00580Q-RI; Fri, 10 Feb 2023 09:44:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQPxM-0057y7-Tq
	for barebox@lists.infradead.org; Fri, 10 Feb 2023 09:44:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQPxL-0005kw-LQ; Fri, 10 Feb 2023 10:44:35 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pQPxL-0003au-EN; Fri, 10 Feb 2023 10:44:35 +0100
Date: Fri, 10 Feb 2023 10:44:35 +0100
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230210094435.GS10447@pengutronix.de>
References: <20230208133519.1114700-1-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230208133519.1114700-1-l.stach@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
From: Sascha Hauer <sha@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230210_014436_981153_54AF251E 
X-CRM114-Status: GOOD (  20.29  )
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
Subject: Re: [PATCH v2 1/2] ddr: imx8m: add support for 3720 MHz DDR rate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Wed, Feb 08, 2023 at 02:35:18PM +0100, Lucas Stach wrote:
> From: Ahmad Fatoum <a.fatoum@pengutronix.de>
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  drivers/ddr/imx8m/ddrphy_utils.c | 3 +++
>  1 file changed, 3 insertions(+)

Applied, thanks

Sascha

> 
> diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
> index 98e6ae648aed..7f863a1736c6 100644
> --- a/drivers/ddr/imx8m/ddrphy_utils.c
> +++ b/drivers/ddr/imx8m/ddrphy_utils.c
> @@ -17,6 +17,7 @@
>   * clock / 2, which is therefor transfer rate / 4.  */
>  enum ddr_rate {
>  	DDR_4000,
> +	DDR_3720,
>  	DDR_3200,
>  	DDR_3000,
>  	DDR_2600, /* Unused */
> @@ -52,6 +53,7 @@ static const struct imx8mm_fracpll_config {
>  	bool valid;
>  } imx8mm_fracpll_table[DDR_NUM_RATES] = {
>  	[DDR_4000] = { .valid = true, .r1 = MDIV(250) | PDIV(3) | SDIV(1), .r2 = 0 },
> +	[DDR_3720] = { .valid = true, .r1 = MDIV(310) | PDIV(2) | SDIV(2), .r2 = 0 },
>  	[DDR_3200] = { .valid = true, .r1 = MDIV(300) | PDIV(9) | SDIV(0), .r2 = 0 },
>  	[DDR_3000] = { .valid = true, .r1 = MDIV(250) | PDIV(8) | SDIV(0), .r2 = 0 },
>  	[DDR_2600] = { .valid = true, .r1 = MDIV(325) | PDIV(3) | SDIV(2), .r2 = 0 },
> @@ -335,6 +337,7 @@ void ddrphy_init_set_dfi_clk(unsigned int drate_mhz, enum ddrc_type type)
>  
>  	switch (drate_mhz) {
>  	case 4000: drate = DDR_4000; break;
> +	case 3720: drate = DDR_3720; break;
>  	case 3200: drate = DDR_3200; break;
>  	case 3000: drate = DDR_3000; break;
>  	case 2400: drate = DDR_2400; break;
> -- 
> 2.39.1
> 
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


