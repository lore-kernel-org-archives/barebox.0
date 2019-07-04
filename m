Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hivX6-0007hY-2q
 for barebox@lists.infradead.org; Thu, 04 Jul 2019 06:47:53 +0000
Date: Thu, 4 Jul 2019 08:47:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190704064749.ggkmh7c2gbo27y4h@pengutronix.de>
References: <1562049397-215232-1-git-send-email-s.riedmueller@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1562049397-215232-1-git-send-email-s.riedmueller@phytec.de>
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
Subject: Re: [PATCH] ARM: mach-imx: imx6: Read and print the UID of i.MX6 SOCs
To: Stefan Riedmueller <s.riedmueller@phytec.de>
Cc: barebox@lists.infradead.org

Hi Stefan,

On Tue, Jul 02, 2019 at 08:36:37AM +0200, Stefan Riedmueller wrote:
> Read the unified ID of the i.MX 6 SOCs and print it in the boot log.
> 
> Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
> ---
>  arch/arm/mach-imx/imx6.c | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
> index e898be9ab545..66f3d22a68a7 100644
> --- a/arch/arm/mach-imx/imx6.c
> +++ b/arch/arm/mach-imx/imx6.c
> @@ -23,6 +23,7 @@
>  #include <mach/reset-reason.h>
>  #include <mach/imx6-anadig.h>
>  #include <mach/imx6-regs.h>
> +#include <mach/imx6-fusemap.h>
>  #include <mach/usb.h>
>  #include <asm/mmu.h>
>  #include <asm/cache-l2x0.h>
> @@ -38,6 +39,9 @@
>  #define BM_CLPCR_COSC_PWRDOWN		(0x1 << 11)
>  #define BM_CLPCR_BYP_MMDC_CH1_LPM_HS	(0x1 << 21)
>  
> +#define MX6_OCOTP_CFG0			0x410
> +#define MX6_OCOTP_CFG1			0x420
> +
>  static void imx6_init_lowlevel(void)
>  {
>  	void __iomem *aips1 = (void *)MX6_AIPS1_ON_BASE_ADDR;
> @@ -186,17 +190,30 @@ int imx6_cpu_revision(void)
>  	return soc_revision;
>  }
>  
> +static u64 imx6_uid(void)
> +{
> +	void __iomem *ocotpbase = IOMEM(MX6_OCOTP_BASE_ADDR);
> +	u64 uid;
> +
> +	uid = ((u64)readl(ocotpbase + MX6_OCOTP_CFG0) << 32);
> +	uid |= (u64)readl(ocotpbase + MX6_OCOTP_CFG1);
> +
> +	return uid;
> +}

I think this function should be exported in case somebody wants to
actually do something with this value other than printing it during
boot.

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
