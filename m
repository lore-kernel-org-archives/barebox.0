Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4pRX-0003Qz-TA
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 09:12:56 +0000
Date: Mon, 11 Feb 2013 10:12:48 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130211091248.GP1906@pengutronix.de>
References: <021801ce062f$32986200$97c92600$@com>
 <1360351249.78170872@f48.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1360351249.78170872@f48.mail.ru>
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
Subject: Re: i.MX53 - add WEIM register defines
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org, George Pontis <GPontis@z9.com>

On Fri, Feb 08, 2013 at 11:20:49PM +0400, Alexander Shiyan wrote:
> > Subject: i.MX53: Add WEIM register defines ( same as i.MX51 )
> > 
> > Signed-off-by: George Pontis <gpontis@spamcop.net>
> > 
> > diff -Naur bb.a/arch/arm/mach-imx/include/mach/imx53-regs.h
> > bb.b/arch/arm/mach-imx/include/mach/imx53-regs.h
> > --- bb.a/arch/arm/mach-imx/include/mach/imx53-regs.h    2013-02-04
> > 06:24:51.000000000 -0800
> > +++ bb.b/arch/arm/mach-imx/include/mach/imx53-regs.h    2013-02-06
> > 23:14:45.982747680 -0800
> > @@ -1,6 +1,17 @@
> >  #ifndef __MACH_IMX53_REGS_H
> >  #define __MACH_IMX53_REGS_H
> > 
> > +/* WEIM registers */
> > +#define WEIM_CSxGCR1(n)        (((n) * 0x18) + 0x00)
> > +#define WEIM_CSxGCR2(n)        (((n) * 0x18) + 0x04)
> > +#define WEIM_CSxRCR1(n)        (((n) * 0x18) + 0x08)
> > +#define WEIM_CSxRCR2(n)        (((n) * 0x18) + 0x0c)
> > +#define WEIM_CSxWCR1(n)        (((n) * 0x18) + 0x10)
> > +#define WEIM_CSxWCR2(n)        (((n) * 0x18) + 0x14)
> > +#define WEIM_WCR       0x90
> > +#define WEIM_WIAR      0x94
> > +#define WEIM_EAR       0x98
> 
> If register set is really same as i.MX51, then probably we should
> move these definitions from imx51-regs.h to imx5.h. Sascha?

Even better add a imx53_setup_weimcs() function like we have for various
other i.MXes in mach/weim.h.

(add a imx5_setup_weimcs function which has an additional base address
argument. This would then be called from
imx51_setup_weimcs/imx53_setup_weimcs).

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
