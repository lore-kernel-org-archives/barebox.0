Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OwbOJ-00009y-MS
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 13:54:16 +0000
Date: Fri, 17 Sep 2010 15:54:14 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100917135414.GG1473@pengutronix.de>
References: <1284290860-32033-1-git-send-email-plagnioj@jcrosoft.com>
	<20100917134530.GD1473@pengutronix.de>
	<20100917135037.GB20438@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100917135037.GB20438@game.jcrosoft.org>
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
Subject: Re: [PATCH 1/4] driver: allow register device with specific id
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 17, 2010 at 03:50:37PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 15:45 Fri 17 Sep     , Sascha Hauer wrote:
> > Hi J,
> > 
> > On Sun, Sep 12, 2010 at 01:27:37PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > if you specify id = 0 the next available id will be taken
> > > otherwise fail if already registered
> > 
> > I think we need a better solution here. Being able to specify an id
> > is a good idea in general, but since 0 is a valid id we should be able
> > to specify exactly this id aswell.
> > An idea is to use -1 for a dynamic id, but of course this needs changes
> > to all existing devices.
> I prefer to do it a second step
> in this case

I prefer doing it first, because it makes sure the problem is getting
solved.

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
