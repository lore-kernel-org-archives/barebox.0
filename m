Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QYXvx-0000i0-7n
	for barebox@lists.infradead.org; Mon, 20 Jun 2011 06:26:06 +0000
Date: Mon, 20 Jun 2011 08:25:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110620062559.GJ23771@pengutronix.de>
References: <91BC1EFE-8DED-47F9-9027-DA5140A1A73E@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <91BC1EFE-8DED-47F9-9027-DA5140A1A73E@gmail.com>
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
Subject: Re: shift and clocksource
To: Carlo Caione <carlo.caione@gmail.com>
Cc: barebox@lists.infradead.org

Hi Carlo,

On Sun, Jun 19, 2011 at 06:18:44PM +0200, Carlo Caione wrote:
> Hi,
> I was looking in the sources for time keeping. Why the shift field of
> the clocksource structure is always set to 10?  Also using the
> clocks_calc_mult_shift() in kernel sources I obtain different values
> for the shift variable.

The value 10 is copied from the initial clocksource. We should add
clocks_calc_mult_shift() to barebox and use it there also.

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
