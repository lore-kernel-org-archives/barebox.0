Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q85OI-00062h-78
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 06:41:59 +0000
Date: Fri, 8 Apr 2011 08:41:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110408064155.GR7285@pengutronix.de>
References: <1302163039-29861-1-git-send-email-thomas.mayer@telemotive.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1302163039-29861-1-git-send-email-thomas.mayer@telemotive.de>
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
Subject: Re: [PATCH 1/1] freescale-mx35-3-stack: Add mmc0
To: Thomas Mayer <thomas.mayer@telemotive.de>
Cc: barebox@lists.infradead.org

Hi Thomas,

On Thu, Apr 07, 2011 at 09:57:19AM +0200, Thomas Mayer wrote:
> 
> Signed-off-by: Thomas Mayer <thomas.mayer@telemotive.de>
> ---
>  arch/arm/boards/freescale-mx35-3-stack/3stack.c |    4 ++++
>  1 files changed, 4 insertions(+), 0 deletions(-)
> 
> diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> index 127bfb4..a4cbbe1 100644
> --- a/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> +++ b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
> @@ -199,6 +199,10 @@ static int f3s_devices_init(void)
>  		break;
>  	}
>  
> +#ifdef CONFIG_MCI_IMX_ESDHC
> +	imx35_add_mmc0(NULL);
> +#endif

No ifdef here, please. Registering a device without a driver available
doesn't hurt, except for a few bytes of binary space.

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
