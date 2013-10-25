Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VZrAa-0008HJ-0q
 for barebox@lists.infradead.org; Fri, 25 Oct 2013 23:51:57 +0000
Date: Sat, 26 Oct 2013 01:51:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131025235132.GD30088@pengutronix.de>
References: <1382646226-24871-1-git-send-email-a.heider@gmail.com>
 <20131025075651.GA86782@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131025075651.GA86782@gmail.com>
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
Subject: Re: [PATCH 0/6] simple framebuffer driver with RPi support
To: Andre Heider <a.heider@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Oct 25, 2013 at 09:56:51AM +0200, Andre Heider wrote:
> On Thu, Oct 24, 2013 at 10:23:40PM +0200, Andre Heider wrote:
> > This set adds a common simple framebuffer driver for platforms which choose
> > to support it. RPi support is part of this set.
> > 
> > The driver serves two functions:
> > * a framebuffer driver for barebox
> > * pass an active framebuffer configuration to a loaded kernel
> 
> Pondering over this again, this is probably the wrong approach. There's
> no need for a distinct simplefb driver for barebox, bcm2835 can have its own
> fb driver like everyone else,

Right,

> and the simplefb configuration for the
> kernel can be done independent of the fb barebox driver in use...

Yes.

I think we should have an option whether a framebuffer should be kept
enabled when starting a kernel. If yes, then we have to resever the
memory for the framebuffer and create the simplefb node. If not, we have
to disable the framebuffer.

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
