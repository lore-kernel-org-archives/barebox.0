Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Un6xW-0003E0-D8
 for barebox@lists.infradead.org; Thu, 13 Jun 2013 12:48:59 +0000
Date: Thu, 13 Jun 2013 14:48:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130613124833.GD32299@pengutronix.de>
References: <1368400146-30443-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <20130519073403.GY32299@pengutronix.de>
 <51B6EED2.3010707@gmail.com>
 <20130613092557.GC32299@pengutronix.de>
 <51B9930B.8080609@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <51B9930B.8080609@gmail.com>
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
Subject: Re: [PATCH] of: add ranges address translation for default bus
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

On Thu, Jun 13, 2013 at 11:38:19AM +0200, Sebastian Hesselbarth wrote:
> On 06/13/13 11:25, Sascha Hauer wrote:
> >On Tue, Jun 11, 2013 at 11:33:06AM +0200, Sebastian Hesselbarth wrote:
> >>I started merging already, and from what I can see we should just remove
> >>the spinlocks and OF_DYNAMIC stuff (but leave of_node_get/_put as stubs)
> >
> >Sounds like a plan. Functions existing both in barebox and Linux should
> >behave the same way. However, if Linux turns out to do something silly
> >or (for our usecase) too bloated, we shouldn't do the same just because
> >Linux does it.
> >
> >I want to keep the Linux list usage in the devicetree, so they won't be
> >really in sync.
> 
> Ok, I started converting and doing it in a clean way is kind of tricky.
> 
> First of all, allyesconfig doesn't build - so it is hard to find and
> re-build all users of current of_* functions.
> 
> If you want to stick with list usage, it will end up with converting
> instead of just move current functions out of the way, import Linux
> OF, and switch users to that functions.
> 
> I will have a look at it, find users/abusers of current API and see
> how much we can merge.
> 
> You also want to stick with of_set_* and friends within base.c or
> move them out to some other source file where all set/modify functions
> will sit in?

I'm fine with moving the set/modify kernel to another file, no problem.

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
