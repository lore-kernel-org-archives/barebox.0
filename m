Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TD9bu-0004PW-Nu
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 07:49:47 +0000
Date: Sun, 16 Sep 2012 09:49:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120916074945.GC6180@pengutronix.de>
References: <1347717385-24815-1-git-send-email-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347717385-24815-1-git-send-email-s.trumtrar@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 1/2] ARM i.MX6: add usb function prototypes
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, Sep 15, 2012 at 03:56:24PM +0200, Steffen Trumtrar wrote:
> Add missing prototypes to mach/usb.h
> 
> Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Applied, thanks

Sascha

> ---
>  arch/arm/mach-imx/include/mach/usb.h |    3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/include/mach/usb.h b/arch/arm/mach-imx/include/mach/usb.h
> index 5d6670d..d953bf0 100644
> --- a/arch/arm/mach-imx/include/mach/usb.h
> +++ b/arch/arm/mach-imx/include/mach/usb.h
> @@ -11,4 +11,7 @@
>  #define MX35_H1_USBTE_BIT	(1 << 4)
>  #define MXC_EHCI_INTERFACE_SINGLE_UNI	(2 << 0)
>  
> +
> +int imx6_usb_phy1_disable_oc(void);
> +int imx6_usb_phy1_enable(void);
>  #endif /* __MACH_USB_H_*/
> -- 
> 1.7.10.4
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
