Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z8DR0-0002LD-Lr
 for barebox@lists.infradead.org; Thu, 25 Jun 2015 20:07:43 +0000
Date: Thu, 25 Jun 2015 22:07:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150625200718.GA18611@pengutronix.de>
References: <20150608184033.GL6325@pengutronix.de>
 <20150625152714.71ffc6272ed69a63a346ea02@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150625152714.71ffc6272ed69a63a346ea02@gmail.com>
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
Subject: Re: v2015.06.0 ...and a new website
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jun 25, 2015 at 03:27:14PM +0300, Antony Pavlov wrote:
> On Mon, 8 Jun 2015 20:40:33 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > Hi all,
> > 
> > We have a release for June, see below for a list of changes between this
> > and the last release.
> > 
> > Also we are proud to anounce a new website for barebox, check it out on
> > http://www.barebox.org. We finally brought the new documentation
> > currently growing under Documentation online. Also check out our shiny
> > new logo.
> 
> What is about adding new logo to the git repo?

We'll add it to the repo. Instead of adding multiple pngs in different
sizes I want to put the svg in the repo and some foo to convert it to
png in different sizes. So far librsvg looks like a good candidate for
converting the svg to png. I need some time though to write the makefile
magic.

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
