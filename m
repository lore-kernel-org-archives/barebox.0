Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TwrPl-00065k-LF
 for barebox@lists.infradead.org; Sun, 20 Jan 2013 09:42:10 +0000
Date: Sun, 20 Jan 2013 10:41:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130120094156.GO1906@pengutronix.de>
References: <20130119112125.GH22953@game.jcrosoft.org>
 <1358594814-8297-1-git-send-email-plagnioj@jcrosoft.com>
 <20130119114231.GK1906@pengutronix.de>
 <20130119133206.GK22953@game.jcrosoft.org>
 <20130119134251.GL1906@pengutronix.de>
 <20130119163208.GB26329@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130119163208.GB26329@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/7] at91: add test commamd to emulate bootrom boot
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Jan 19, 2013 at 05:32:08PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > > +	shutdown_barebox();
> > > > > +
> > > > > +	__asm__ __volatile__(
> > > > > +		"mov pc, %0\n"
> > > > > +		:
> > > > > +		: "r"(jump)
> > > > > +		:);
> > > > 
> > > > Is this inline assemble needed? Why not
> > > > 
> > > > 	void (*jump)(void);
> > > > 
> > > > 	jump();
> > > jump can be NULL
> > 
> > But that's not a reason for inline assembly.
> except if use call we get a NULL exception

You won't get a NULL pointer exception when the MMU is disabled (which
is the case after shutdown_basebox()), no matter which method you choose
to jump to 0x0.

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
