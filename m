Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WrMaC-0003rw-9z
 for barebox@lists.infradead.org; Mon, 02 Jun 2014 07:23:00 +0000
Date: Mon, 2 Jun 2014 09:22:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140602072236.GV15686@pengutronix.de>
References: <1400177676-2870-1-git-send-email-fabio.estevam@freescale.com>
 <20140515212125.GO5858@pengutronix.de>
 <CAOMZO5D=SHf19XuptdZTVvn6GGvUEvAcG9RbG9r_g_Z-DZfdsg@mail.gmail.com>
 <CAOMZO5DUtJu962JEbSBMRQMxVkZDD+rYVmr0Ajgfavx7+qgdww@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOMZO5DUtJu962JEbSBMRQMxVkZDD+rYVmr0Ajgfavx7+qgdww@mail.gmail.com>
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
To: Fabio Estevam <festevam@gmail.com>
Cc: Fabio Estevam <fabio.estevam@freescale.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Eric Nelson <eric.nelson@boundarydevices.com>

On Wed, May 28, 2014 at 04:57:18PM -0300, Fabio Estevam wrote:
> On Thu, May 15, 2014 at 7:05 PM, Fabio Estevam <festevam@gmail.com> wrote:
> > Hi Sascha,
> >
> > On Thu, May 15, 2014 at 6:21 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> >
> >>> --- a/drivers/serial/serial_imx.c
> >>> +++ b/drivers/serial/serial_imx.c
> >>> @@ -258,7 +258,8 @@ static int imx_serial_getc(struct console_device *cdev)
> >>>         while (readl(priv->regs + priv->devtype->uts) & UTS_RXEMPTY);
> >>>
> >>>         ch = readl(priv->regs + URXD0);
> >>> -
> >>> +       if (ch >= 0x80)
> >>> +               ch = '?';
> >>
> >> This is not part of the fix, right?
> >
> > Correct, this is not part of the fix.
> >
> > This code is just to help reproducing the issue in console, without
> > the need of hooking an oscilloscope to the UART pins or inspecting
> > directly the UART TX registers.
> 
> Any comments, Sascha?

No, I assumed you resend the patch without the hunk above.

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
