Delivery-date: Wed, 25 Jan 2023 11:05:24 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKcek-001MRk-6p
	for lore@lore.pengutronix.de; Wed, 25 Jan 2023 11:05:24 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pKceh-0005IP-99
	for lore@pengutronix.de; Wed, 25 Jan 2023 11:05:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=BJI+xmtihwBEenziYh+AQ53igwZPSvbU71rcd6LqnVE=; b=tKlveyeujAWDKQzoTun5Y3z+RT
	0d0vPfzeoPtnoFEKOwjOwrO5a8/iKj8VC4accrv8HeJoaptzxMmPyERIamrIPmGVwnqfxjfRJaKNM
	T8vw3G3VPeNGtA/iuNfMnIbJxgUJ3DzSRpVebrvD6dxqU1ketnJVUM8n/t+zyoMdZFXPo5CSYfLpx
	RFKyQjcLI1DhqwOHjfKCAH4UkNJuIzBX0BIV7nscny8LxosjaasMkAVmypQJbxdQq7BBK9n+PoqXx
	8AsTITAS0LAZxxMRF+esrB2z6mrRXOXYwXo1877vFmYvZmPSZ/UXg2qtGtVNaVoSOBnQrzW8QOjQg
	na3/0nWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcdE-006nul-RY; Wed, 25 Jan 2023 10:03:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pKcZ2-006mJp-UL
	for barebox@lists.infradead.org; Wed, 25 Jan 2023 09:59:36 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKcZ1-0004GZ-DY; Wed, 25 Jan 2023 10:59:31 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pKcZ1-0007qA-72; Wed, 25 Jan 2023 10:59:31 +0100
Date: Wed, 25 Jan 2023 10:59:31 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230125095931.5np3x2tzsuh7gjtm@pengutronix.de>
References: <20230125093940.3663697-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230125093940.3663697-1-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230125_015933_027686_37341AD0 
X-CRM114-Status: GOOD (  19.55  )
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
Subject: Re: [PATCH] i2c: i.MX: Use initialized dev for dev_dbg()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-01-25, Sascha Hauer wrote:
> i2c_fsl_set_clk() is called before the i2c device has been initialized,
> so the dev_dbg() messages therein show up as:
> 
> <NULL>: <i2c_fsl_set_clk> I2C_CLK=66000000, REQ DIV=660
> 
> Use the parent device instead for printing these messages.

LGTM

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> ---
>  drivers/i2c/busses/i2c-imx.c | 16 +++++++++-------
>  1 file changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/i2c/busses/i2c-imx.c b/drivers/i2c/busses/i2c-imx.c
> index 28bd0072ad..e4b04327ee 100644
> --- a/drivers/i2c/busses/i2c-imx.c
> +++ b/drivers/i2c/busses/i2c-imx.c
> @@ -102,6 +102,7 @@ struct fsl_i2c_hwdata {
>  struct fsl_i2c_struct {
>  	void __iomem		*base;
>  	struct clk		*clk;
> +	struct device		*dev;
>  	struct i2c_adapter	adapter;
>  	unsigned int 		disable_delay;
>  	unsigned int		ifdr;	/* FSL_I2C_IFDR */
> @@ -295,7 +296,7 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
>  	 * Translate to dfsr = 5 * Frequency / 100,000,000
>  	 */
>  	dfsr = (5 * (i2c_clk / 1000)) / 100000;
> -	dev_dbg(&i2c_fsl->adapter.dev,
> +	dev_dbg(i2c_fsl->dev,
>  		"<%s> requested speed:%d, i2c_clk:%d\n", __func__,
>  		rate, i2c_clk);
>  	if (!dfsr)
> @@ -314,12 +315,12 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
>  				bin_ga = (ga & 0x3) | ((ga & 0x4) << 3);
>  				fdr = bin_gb | bin_ga;
>  				rate = i2c_clk / est_div;
> -				dev_dbg(&i2c_fsl->adapter.dev,
> +				dev_dbg(i2c_fsl->dev,
>  					"FDR:0x%.2x, div:%ld, ga:0x%x, gb:0x%x,"
>  					" a:%d, b:%d, speed:%d\n", fdr, est_div,
>  					ga, gb, a, b, rate);
>  				/* Condition 2 not accounted for */
> -				dev_dbg(&i2c_fsl->adapter.dev,
> +				dev_dbg(i2c_fsl->dev,
>  					"Tr <= %d ns\n", (b - 3 * dfsr) *
>  					1000000 / (i2c_clk / 1000));
>  			}
> @@ -329,9 +330,9 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
>  		if (a == 24)
>  			a += 4;
>  	}
> -	dev_dbg(&i2c_fsl->adapter.dev,
> +	dev_dbg(i2c_fsl->dev,
>  		"divider:%d, est_div:%ld, DFSR:%d\n", divider, est_div, dfsr);
> -	dev_dbg(&i2c_fsl->adapter.dev, "FDR:0x%.2x, speed:%d\n", fdr, rate);
> +	dev_dbg(i2c_fsl->dev, "FDR:0x%.2x, speed:%d\n", fdr, rate);
>  	i2c_fsl->ifdr = fdr;
>  	i2c_fsl->dfsrr = dfsr;
>  }
> @@ -368,9 +369,9 @@ static void i2c_fsl_set_clk(struct fsl_i2c_struct *i2c_fsl,
>  		(500000U * i2c_clk_div[i].div + (i2c_clk_rate / 2) - 1) /
>  		(i2c_clk_rate / 2);
>  
> -	dev_dbg(&i2c_fsl->adapter.dev, "<%s> I2C_CLK=%d, REQ DIV=%d\n",
> +	dev_dbg(i2c_fsl->dev, "<%s> I2C_CLK=%d, REQ DIV=%d\n",
>  		__func__, i2c_clk_rate, div);
> -	dev_dbg(&i2c_fsl->adapter.dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
> +	dev_dbg(i2c_fsl->dev, "<%s> IFDR[IC]=0x%x, REAL DIV=%d\n",
>  		__func__, i2c_clk_div[i].val, i2c_clk_div[i].div);
>  }
>  #endif
> @@ -564,6 +565,7 @@ static int __init i2c_fsl_probe(struct device *pdev)
>  	pdata = pdev->platform_data;
>  
>  	i2c_fsl = xzalloc(sizeof(*i2c_fsl));
> +	i2c_fsl->dev = pdev;
>  
>  #ifdef CONFIG_COMMON_CLK
>  	i2c_fsl->clk = clk_get(pdev, NULL);
> -- 
> 2.30.2
> 
> 
> 


