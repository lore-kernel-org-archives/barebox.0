Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XBdb5-0003Vr-0Z
 for barebox@lists.infradead.org; Mon, 28 Jul 2014 05:35:43 +0000
Date: Mon, 28 Jul 2014 07:35:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140728053520.GS23235@pengutronix.de>
References: <1406217337-17082-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406217337-17082-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH v2] usb: ehci: use linux-way ehci_readl and ehci_writel
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Jul 24, 2014 at 07:55:37PM +0400, Antony Pavlov wrote:
> Also drop nowhere defined CONFIG_EHCI_DESC_BIG_ENDIAN.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  drivers/usb/host/ehci.h | 19 +++++++++++--------
>  1 file changed, 11 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/usb/host/ehci.h b/drivers/usb/host/ehci.h
> index 8cc477a..d71d056 100644
> --- a/drivers/usb/host/ehci.h
> +++ b/drivers/usb/host/ehci.h
> @@ -18,6 +18,8 @@
>  #ifndef USB_EHCI_H
>  #define USB_EHCI_H
>  
> +#include <io.h>
> +
>  #if !defined(CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS)
>  #define CONFIG_SYS_USB_EHCI_MAX_ROOT_PORTS	16
>  #endif
> @@ -68,14 +70,15 @@ struct ehci_hcor {
>  #define USBMODE_CM_HC	(3 << 0)	/* host controller mode */
>  #define USBMODE_CM_IDLE	(0 << 0)	/* idle state */
>  
> -#if defined CONFIG_EHCI_DESC_BIG_ENDIAN
> -#define	ehci_readl(x)		(*((volatile u32 *)(x)))
> -#define ehci_writel(a, b)	(*((volatile u32 *)(a)) = ((volatile u32)b))
> -#else
> -#define ehci_readl(x)		cpu_to_le32((*((volatile u32 *)(x))))
> -#define ehci_writel(a, b)	(*((volatile u32 *)(a)) = \
> -					cpu_to_le32(((volatile u32)b)))
> -#endif
> +static inline void ehci_writel(__u32 __iomem *regs, const unsigned int val)
> +{
> +	writel(val, regs);
> +}
> +
> +static inline unsigned int ehci_readl(__u32 __iomem *regs)
> +{
> +	return readl(regs);
> +}
>  
>  #if defined CONFIG_EHCI_MMIO_BIG_ENDIAN
>  #define hc32_to_cpu(x)		be32_to_cpu((x))
> -- 
> 2.0.1
> 
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
