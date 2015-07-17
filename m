Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZG75X-0002WR-8c
 for barebox@lists.infradead.org; Fri, 17 Jul 2015 14:58:11 +0000
Message-ID: <1437145068.3498.117.camel@pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Fri, 17 Jul 2015 16:57:48 +0200
In-Reply-To: <1437140350-14352-1-git-send-email-d.schultz@phytec.de>
References: <1437140350-14352-1-git-send-email-d.schultz@phytec.de>
Mime-Version: 1.0
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
Subject: Re: [PATCH v3 2/2] ARM: am335x: Changed timer
To: Daniel Schultz <d.schultz@phytec.de>
Cc: barebox@lists.infradead.org

On Fr, 2015-07-17 at 15:39 +0200, Daniel Schultz wrote:
> The dmtimer0 is too inaccurate to be used for measurements.
> We switch to the more accurate dmtimer2.

Ah, OK, after looking at the TRM again, the real reason for the
inaccuracy seems to be that the 32KiHz for dmtimer0 is *not* derived
from the RTC crystal, but from an internal RC oscillator.

The kernel uses dmtimer1 for the clocksource by switching it to the
M_OSC in the PRCM.

The dmtimer2 is used for clockevents and runs from M_OSC by default.
While we could set the dmtimer1 source to M_OSC in the clock setup, it
seems simpler to just use dmtimer2.

The commit message should explain the reasoning behind the switch.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
