Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bkns1-0001rY-DH
 for barebox@lists.infradead.org; Fri, 16 Sep 2016 07:47:38 +0000
Date: Fri, 16 Sep 2016 09:47:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160916074715.6ibf6s6w4n3rhkqc@pengutronix.de>
References: <1473937823-30706-1-git-send-email-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1473937823-30706-1-git-send-email-l.stach@pengutronix.de>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/3] ARM: imx6: split out IPU QoS setup
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 15, 2016 at 01:10:21PM +0200, Lucas Stach wrote:
> Split into separate function and only call it after the chip type
> and revision is known.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx6.c | 11 +++++++++--
>  1 file changed, 9 insertions(+), 2 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index ba8fb8964ac8..07d3f57d8dcc 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -31,10 +31,8 @@ void imx6_init_lowlevel(void)
>  {
>  	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
>  	void __iomem *aips2 = (void *)MX6_AIPS2_ON_BASE_ADDR;
> -	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
>  	bool is_imx6q = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6Q;
>  	bool is_imx6d = __imx6_cpu_type() == IMX6_CPUTYPE_IMX6D;
> -	uint32_t val;
>  
>  	/*
>  	 * Set all MPROTx to be non-bufferable, trusted for R/W,
> @@ -94,6 +92,13 @@ void imx6_init_lowlevel(void)
>  		       MX6_ANATOP_BASE_ADDR + HW_ANADIG_PFD_528_CLR);
>  	}
>  
> +}
> +
> +void imx6_setup_ipu_qos(void)
> +{
> +	void __iomem *iomux = (void *)MX6_IOMUXC_BASE_ADDR;
> +	uint32_t val;
> +
>  	val = readl(iomux + IOMUXC_GPR4);
>  	val |= IMX6Q_GPR4_VPU_WR_CACHE_SEL | IMX6Q_GPR4_VPU_RD_CACHE_SEL |
>  		IMX6Q_GPR4_VPU_P_WR_CACHE_VAL | IMX6Q_GPR4_VPU_P_RD_CACHE_VAL_MASK |
> @@ -186,6 +191,8 @@ int imx6_init(void)
>  
>  	imx_set_silicon_revision(cputypestr, mx6_silicon_revision);
>  
> +	imx6_setup_ipu_qos();
> +
>  	return 0;
>  }
>  
> -- 
> 2.8.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
