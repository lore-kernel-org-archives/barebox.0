Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UKllG-0002Xy-TM
 for barebox@lists.infradead.org; Wed, 27 Mar 2013 08:31:12 +0000
Date: Wed, 27 Mar 2013 09:31:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130327083109.GP1906@pengutronix.de>
References: <20130319154901.9111A25817@kryptos.localdomain>
 <20130319155432.GC16050@kryptos>
 <20130325091247.GW1906@pengutronix.de>
 <20130326152109.GH16050@kryptos>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130326152109.GH16050@kryptos>
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
Subject: Re: [PATCH] macb: rename platform data
To: Josh Cartwright <joshc@eso.teric.us>
Cc: barebox@lists.infradead.org

On Tue, Mar 26, 2013 at 10:21:09AM -0500, Josh Cartwright wrote:
> On Mon, Mar 25, 2013 at 10:12:47AM +0100, Sascha Hauer wrote:
> > Hi Josh,
> > 
> > On Tue, Mar 19, 2013 at 10:54:32AM -0500, Josh Cartwright wrote:
> > > On Fri, Mar 15, 2013 at 06:26:00PM -0500, Josh Cartwright wrote:
> > > [..]
> > > > >From 0d51dc731ff3934e22e78405a992658a8d3bf1de Mon Sep 17 00:00:00 2001
> > > > From: Josh Cartwright <joshc@eso.teric.us>
> > > > Date: Tue, 19 Mar 2013 10:22:48 -0500
> > > > Subject: [PATCH] parameter: fix build warning when !CONFIG_PARAMETER
> > > > To: barebox@lists.infradead.org
> > > 
> > > Ugh, sorry that I butchered patch submission and this mail ended up with
> > > two patches together; should I resend?
> > 
> > No, it's ok. I applied the macb pdata rename. If you wish to have the
> > other one applied, please resend this one.
> 
> It looks like what was applied to your tree was a squash of these two
> changes together, so no need to resend.

Ups, this was not intentional. I removed the hunk which should really be
a separate patch, so you indeed have to resend ;)

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
