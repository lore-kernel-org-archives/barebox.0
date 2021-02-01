Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l6UqC-0002Ks-LL
 for barebox@lists.infradead.org; Mon, 01 Feb 2021 08:45:49 +0000
Date: Mon, 1 Feb 2021 09:45:47 +0100
Message-ID: <20210201084547.GL19583@pengutronix.de>
References: <20210129152553.15792-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210129152553.15792-1-a.fatoum@pengutronix.de>
From: Sascha Hauer <sha@pengutronix.de>
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
Subject: Re: [PATCH 1/2] ARM: i.MX8MM: fix sparse warnings in early clock code
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Fri, Jan 29, 2021 at 04:25:53PM +0100, Ahmad Fatoum wrote:
> Some __iomem markers were being casted away. Fix that.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/mach-imx/imx8m.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
> index b9e01a1d1854..350d203539fc 100644
> --- a/arch/arm/mach-imx/imx8m.c
> +++ b/arch/arm/mach-imx/imx8m.c
> @@ -35,14 +35,14 @@
>  
>  void imx8m_clock_set_target_val(int clock_id, u32 val)
>  {
> -	void *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
> +	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
>  
>  	writel(val, ccm + IMX8M_CCM_TARGET_ROOTn(clock_id));
>  }
>  
>  void imx8m_ccgr_clock_enable(int index)
>  {
> -	void *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
> +	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
>  
>  	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
>  	       ccm + IMX8M_CCM_CCGRn_SET(index));
> @@ -50,7 +50,7 @@ void imx8m_ccgr_clock_enable(int index)
>  
>  void imx8m_ccgr_clock_disable(int index)
>  {
> -	void *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
> +	void __iomem *ccm = IOMEM(MX8M_CCM_BASE_ADDR);
>  
>  	writel(IMX8M_CCM_CCGR_SETTINGn_NEEDED(0),
>  	       ccm + IMX8M_CCM_CCGRn_CLR(index));
> -- 
> 2.30.0
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
