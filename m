Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjb4y-0005Sc-Cu
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:05:37 +0000
Date: Tue, 26 Jun 2012 21:05:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120626190534.GQ14321@pengutronix.de>
References: <1340704314-12593-1-git-send-email-jlu@pengutronix.de>
 <1340704314-12593-7-git-send-email-jlu@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1340704314-12593-7-git-send-email-jlu@pengutronix.de>
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
Subject: Re: [PATCH 06/12] mach-davinci: support the USB 1.1 host controller
 (based on OHCI)
To: Jan Luebbe <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Jun 26, 2012 at 11:51:48AM +0200, Jan Luebbe wrote:
> Signed-off-by: Jan Luebbe <jlu@pengutronix.de>
> ---
>  arch/arm/mach-davinci/Makefile           |    1 +
>  arch/arm/mach-davinci/include/mach/usb.h |   37 +++++++++++++++++
>  arch/arm/mach-davinci/usb.c              |   66 ++++++++++++++++++++++++++++++
>  3 files changed, 104 insertions(+)
>  create mode 100644 arch/arm/mach-davinci/include/mach/usb.h
>  create mode 100644 arch/arm/mach-davinci/usb.c
> 
> diff --git a/arch/arm/mach-davinci/Makefile b/arch/arm/mach-davinci/Makefile
> index 0ac8f9b..0df1e92 100644
> --- a/arch/arm/mach-davinci/Makefile
> +++ b/arch/arm/mach-davinci/Makefile
> @@ -4,3 +4,4 @@ obj-y += da850.o
>  obj-y += gpio.o
>  obj-y += mux.o
>  obj-y += psc.o
> +obj-y += usb.o
> +
> +static int da8xx_usb11_init(void)
> +{

[...]

> +
> +	add_generic_device("ohci", 0, NULL, DA8XX_USB1_BASE, 0x100,
> +			   IORESOURCE_MEM, NULL);
> +	return 0;
> +}
> +
> +device_initcall(da8xx_usb11_init);

Probably not all boards have this USB port populated. You should
probably call this function from board code.

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
