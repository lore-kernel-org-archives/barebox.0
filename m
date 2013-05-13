Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UbrK5-0003DW-0C
 for barebox@lists.infradead.org; Mon, 13 May 2013 11:53:46 +0000
Date: Mon, 13 May 2013 13:53:22 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130513115322.GQ32299@pengutronix.de>
References: <1368357969-21633-1-git-send-email-thomas.petazzoni@free-electrons.com>
 <20130513081907.GJ32299@pengutronix.de>
 <20130513103924.0506f211@skate>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130513103924.0506f211@skate>
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
Subject: Re: [PATCH] arm: mach-mvebu: drop useless clkdev.h
To: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: barebox@lists.infradead.org

On Mon, May 13, 2013 at 10:39:24AM +0200, Thomas Petazzoni wrote:
> Dear Sascha Hauer,
> 
> On Mon, 13 May 2013 10:19:07 +0200, Sascha Hauer wrote:
> > On Sun, May 12, 2013 at 01:26:09PM +0200, Thomas Petazzoni wrote:
> > > As suggested by Antony Pavlov, get rid of the useless clkdev.h in
> > > arch/arm/mach-mvebu/.
> > > 
> > > Signed-off-by: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
> > 
> > Folded this into the original patch adding it.
> 
> Just a development process question: since you're folding it, it means
> that you're rebasing the 'next' branch constantly?
> 
> This sounds off for a public branch on top of which people might be
> basing some more work, no?

You should normally be able to work on the master branch. If you have
dependencies to -next then yes, you would have to rebase which means
some work for you.
Not having a fast forward branch means that we have a better commit
history and that bugs noticed early enough do not even make it to the
master branch which increases bisectability significantly.

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
