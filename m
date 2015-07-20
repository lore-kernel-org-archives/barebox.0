Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZH3kZ-00079Y-4N
 for barebox@lists.infradead.org; Mon, 20 Jul 2015 05:36:30 +0000
Date: Mon, 20 Jul 2015 07:36:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150720053605.GT18700@pengutronix.de>
References: <1437140350-14352-1-git-send-email-d.schultz@phytec.de>
 <1437145068.3498.117.camel@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1437145068.3498.117.camel@pengutronix.de>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v3 2/2] ARM: am335x: Changed timer
To: Jan =?iso-8859-15?Q?L=FCbbe?= <jlu@pengutronix.de>
Cc: barebox@lists.infradead.org, Daniel Schultz <d.schultz@phytec.de>

On Fri, Jul 17, 2015 at 04:57:48PM +0200, Jan L=FCbbe wrote:
> On Fr, 2015-07-17 at 15:39 +0200, Daniel Schultz wrote:
> > The dmtimer0 is too inaccurate to be used for measurements.
> > We switch to the more accurate dmtimer2.
> =

> Ah, OK, after looking at the TRM again, the real reason for the
> inaccuracy seems to be that the 32KiHz for dmtimer0 is *not* derived
> from the RTC crystal, but from an internal RC oscillator.
> =

> The kernel uses dmtimer1 for the clocksource by switching it to the
> M_OSC in the PRCM.
> =

> The dmtimer2 is used for clockevents and runs from M_OSC by default.
> While we could set the dmtimer1 source to M_OSC in the clock setup, it
> seems simpler to just use dmtimer2.
> =

> The commit message should explain the reasoning behind the switch.

Changed the commit message while applying to:

The 32KHz from dmtimer0 is derived from a SoC internal RC oscillator
which is quite inaccurate. Switch to dmtimer2 which is driven from
the high frequency oscillator clock.

Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
