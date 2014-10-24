Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Xha6V-0004CL-DN
 for barebox@lists.infradead.org; Fri, 24 Oct 2014 08:20:12 +0000
Date: Fri, 24 Oct 2014 10:19:49 +0200
From: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>
Message-ID: <20141024081949.GO8316@pengutronix.de>
References: <1414104361-15956-1-git-send-email-u.kleine-koenig@pengutronix.de>
 <1414104361-15956-3-git-send-email-u.kleine-koenig@pengutronix.de>
 <201410240950.21973.jbe@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <201410240950.21973.jbe@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 2/3] mxs: iomux-imx23/imx28: unify mode definition
To: Juergen Borleis <jbe@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello J=FCrgen,

when going to bed yesterday^Wearlier today I remembered that I wantet do
Cc: you for this series. Great you noticed it anyhow :-)

On Fri, Oct 24, 2014 at 09:50:21AM +0200, Juergen Borleis wrote:
> Hi Uwe,
> =

> On Friday 24 October 2014 00:46:00 Uwe Kleine-K=F6nig wrote:
> > [...]
> >  #if defined CONFIG_ARCH_IMX23
> > +/*
> > + * The pin definition of i.MX23 are strange. Bank 0's pins 0 .. 15 are=
 defined
> > + * using PORTF(0, 0) .. PORTF(0, 15). Its pins 16 .. 31 however use PO=
RTF(1, 0)
> > + * .. PORTF(1, 15). So the PORTF macro is more ugly than necessary.
> > + */ =

> > +# define PORTF(bank,bit)	(BANK((bank) / 2) | BANKPIN((((bank) & 1) << =
4) | (bit)) | ERROR((bit) & ~15) | ERROR((bank) & ~7)
> > +# define VE_2_5V		VOLTAGE(1)
> >  # include <mach/iomux-imx23.h>
> >  #endif
> > +
> =

> Looks more like a strange implementation by myself. Did not remember why =
I have
> done it in this way...
When Sascha is happy with the changes in this series we can clean that
up.

You didn't test that on an i.MX23 machine, do you?

Best regards
Uwe

-- =

Pengutronix e.K.                           | Uwe Kleine-K=F6nig            |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
