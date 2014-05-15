Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wl365-00032R-BX
 for barebox@lists.infradead.org; Thu, 15 May 2014 21:21:50 +0000
Date: Thu, 15 May 2014 23:21:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140515212125.GO5858@pengutronix.de>
References: <1400177676-2870-1-git-send-email-fabio.estevam@freescale.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1400177676-2870-1-git-send-email-fabio.estevam@freescale.com>
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
Subject: Re: [PATCH] serial: imx: Fix buggy transmissions when baudrate
 mismatches
To: Fabio Estevam <fabio.estevam@freescale.com>
Cc: barebox@lists.infradead.org, eric.nelson@boundarydevices.com

Hi Fabio,

On Thu, May 15, 2014 at 03:14:36PM -0300, Fabio Estevam wrote:
> Bit 7 of UCR3 is described in the i.MX reference manuals (with the exception
> of i.MX1) as follows:
> 
> ADNIMP: Autobaud Detection Not Improved-. Disables new features of
> 	autobaud detection (See Baud Rate Automatic Detection
> 	Protocol, for more details).
> 
> 	0 Autobaud detection new features selected
> 	1 Keep old autobaud detection mechanism
> 
> The "new features" mechanism occasionally causes the receiver to get out of sync 
> and continuously produces received characters of '0xff'.
> 
> In order to reproduce the problem:
> 
> $ cs0.baudrate=19200
> - Change the terminal baudrate to 19200
> - Type in the console and it should look good
> - Change the terminal baudrate back to 115200
> - Type 'b' in the console, then a stream of '0xff' is transmitted in loop
> 
> Setting the ADNIMP bit avoids the transmission of '0xff' in loop.
> 
> Also rename the bit definition as per the reference manual.
> 
> Tested on mx6q.
> 
> Based on a patch from Eric Nelson for U-boot.
> 
> Signed-off-by: Fabio Estevam <fabio.estevam@freescale.com>
> ---
> As the 0xff character is not seen in the console, an easy way to 'see' it is 
> doing like this in order to easily demonstrate the bug:
> 
> --- a/drivers/serial/serial_imx.c
> +++ b/drivers/serial/serial_imx.c
> @@ -258,7 +258,8 @@ static int imx_serial_getc(struct console_device *cdev)
>         while (readl(priv->regs + priv->devtype->uts) & UTS_RXEMPTY);
>  
>         ch = readl(priv->regs + URXD0);
> -
> +       if (ch >= 0x80)
> +               ch = '?';

This is not part of the fix, right?

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
