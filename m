Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QOPJy-0001T2-Oc
	for barebox@lists.infradead.org; Mon, 23 May 2011 07:12:59 +0000
Date: Mon, 23 May 2011 09:12:56 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110523071256.GC20715@pengutronix.de>
References: <201105201407.08429.tim.sander@hbm.com>
	<4DD66946.4050906@eukrea.com>
	<201105201530.20237.tim.sander@hbm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201105201530.20237.tim.sander@hbm.com>
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
Subject: Re: GPIO Support on pcm043
To: Tim Sander <tim.sander@hbm.com>
Cc: barebox@lists.infradead.org

On Fri, May 20, 2011 at 03:30:19PM +0200, Tim Sander wrote:
> Hi Eric
> 
> Thanks for your answer
> > > Is there some obvious error on my side or is there no gpio
> > > support for pcm043? At least there seems to be support for
> > > the gpio ports on imx?
> > > Any hints?
> > 
> > you first need to configure the mux of the pins to GPIO mode, then you can
> > use them as gpio.
> After tripping into that trap multiple times, i've already checked that, but
> forgot to mention it:
> static struct pad_desc pcm043_pads[] = {
> 	...
>         MX35_PAD_D3_CLS__GPIO1_4,
>         MX35_PAD_D3_SPL__GPIO1_5,
> 	...

Have you checked that you chose the correct iomux setup? These
particular pins can be routed to three different pads each:

#define MX35_PAD_CAPTURE__GPIO1_4	IOMUX_PAD(0x328, 0x004, 5, 0x850, 0, NO_PAD_CTRL)
#define MX35_PAD_SCKR__GPIO1_4		IOMUX_PAD(0x584, 0x140, 5, 0x850, 1, NO_PAD_CTRL)
#define MX35_PAD_D3_CLS__GPIO1_4	IOMUX_PAD(0x68c, 0x228, 5, 0x850, 2, NO_PAD_CTRL)
#define MX35_PAD_COMPARE__GPIO1_5	IOMUX_PAD(0x32c, 0x008, 5, 0x854, 0, NO_PAD_CTRL)
#define MX35_PAD_FSR__GPIO1_5		IOMUX_PAD(0x588, 0x144, 5, 0x854, 1, NO_PAD_CTRL)
#define MX35_PAD_D3_SPL__GPIO1_5	IOMUX_PAD(0x690, 0x22c, 5, 0x854, 2, NO_PAD_CTRL)

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
