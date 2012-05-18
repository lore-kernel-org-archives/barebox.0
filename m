Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SVJih-00082J-If
 for barebox@lists.infradead.org; Fri, 18 May 2012 09:43:36 +0000
Date: Fri, 18 May 2012 11:43:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120518094334.GT30400@pengutronix.de>
References: <1337326905-555-1-git-send-email-eric@eukrea.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337326905-555-1-git-send-email-eric@eukrea.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 01/10] eukrea_cpuimx25: workaround ENGcm09152
To: Eric =?iso-8859-15?Q?B=E9nard?= <eric@eukrea.com>
Cc: barebox@lists.infradead.org

Hi Eric,

On Fri, May 18, 2012 at 09:41:36AM +0200, Eric B=E9nard wrote:
> else USB device doesn't work as the hardware fix is present on the
> boards
> =

> Signed-off-by: Eric B=E9nard <eric@eukrea.com>

Applied this series. I had to apply several patches manually, please
check if all went right (and please try and apply your own patches you
received from the list and see what might have gone wrong to fix it next
time)

Sascha

> ---
>  arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c |    2 ++
>  1 files changed, 2 insertions(+), 0 deletions(-)
> =

> diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm=
/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> index 1e48650..75a99f7 100644
> --- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> +++ b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
> @@ -255,6 +255,8 @@ static int eukrea_cpuimx25_devices_init(void)
>  	imx25_usb_init();
>  	add_generic_usb_ehci_device(-1, IMX_OTG_BASE + 0x400, NULL);
>  #endif
> +	/* Workaround ENGcm09152 */
> +	writel(readl(IMX_OTG_BASE + 0x608) | (1 << 23), IMX_OTG_BASE + 0x608);
>  	add_generic_device("fsl-udc", -1, NULL, IMX_OTG_BASE, 0x200,
>  			   IORESOURCE_MEM, &usb_pdata);
>  =

> -- =

> 1.7.7.6
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
