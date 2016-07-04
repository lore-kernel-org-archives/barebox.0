Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bK0Ji-00033D-7E
 for barebox@lists.infradead.org; Mon, 04 Jul 2016 09:37:26 +0000
Date: Mon, 4 Jul 2016 11:37:04 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160704093704.GJ20657@pengutronix.de>
References: <1467471002-9613-1-git-send-email-akurz@blala.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467471002-9613-1-git-send-email-akurz@blala.de>
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
Subject: Re: [PATCH] wdog: imx-wd: distinguish for WICR/WMCR support
To: Alexander Kurz <akurz@blala.de>
Cc: barebox@lists.infradead.org

On Sat, Jul 02, 2016 at 04:50:02PM +0200, Alexander Kurz wrote:
> The IMX watchdog driver currently distinguishes two variants: imx1-wdt
> using a 32-bit register interface and imx21-wdt with a 16-bit register
> interface.
> Further distinguishment is required: the i.MX21, i.MX27 and i.MX31 SOC
> do provide a three register interface (WCR, WSR, WRSR) while later SOC
> starting with i.MX25 provide two additional registers (WICR and WMCR).
> The five-register interface is also used on i.MX35, and Cortex-A based
> i.MX SOC.
> 
> With commit 4cc0a3d9c547 ("wdog: imx-wd: Disable watchdog powerdown counter")
> one of the extended registers (WMCR) got used first.
> 
> Make imx-wd distinguish between the three and five register Watchdog Timers
> and introduce the five register support as imx25-wdt.
> 
> Note on DTS: keep the i.MX related DTS in sync with linux and make the
> existing programming model fsl,imx21-wdt behave like fsl,imx25-wdt for
> the mean time until this is addressed upstream in linux.
> 
> fixes: 4cc0a3d9c547 ("wdog: imx-wd: Disable watchdog powerdown counter")

So beginning with 4cc0a3d9c547 i.MX21, i.MX27 and i.MX31 accidently use
the five-register interface. What are the practical consequences? Does
the driver still work properly on these SoCs?

I'm aksing because even with this patch...

>  		.compatible = "fsl,imx21-wdt",
> -		.data = &imx21_wd_ops,
> +		/* FIXME: backward compaibility for imported linux DTS
> +		   Most references to fsl,imx21-wdt from linux imported DTS
> +		   linux actually mean fsl,imx25-wdt. Make fsl,imx21-wdt
> +		   behave like fsl,imx25-wdt for the mean time until
> +		   this is fixed there */
> +		.data = &imx25_wd_ops,
> +	}, {

...device tree based i.MX21/27/31 boards still use the five-register
interface. There are no i.MX21/31 based device tree boards, but there
are some i.MX27 boards with device tree support.

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
