Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 64.mail-out.ovh.net ([91.121.185.65])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1OwbR7-00014M-9T
	for barebox@lists.infradead.org; Fri, 17 Sep 2010 13:57:10 +0000
Date: Fri, 17 Sep 2010 15:55:56 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100917135556.GB21110@game.jcrosoft.org>
References: <1284290860-32033-1-git-send-email-plagnioj@jcrosoft.com>
	<20100917134530.GD1473@pengutronix.de>
	<20100917135037.GB20438@game.jcrosoft.org>
	<20100917135414.GG1473@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100917135414.GG1473@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 15:54 Fri 17 Sep     , Sascha Hauer wrote:
> On Fri, Sep 17, 2010 at 03:50:37PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 15:45 Fri 17 Sep     , Sascha Hauer wrote:
> > > Hi J,
> > > 
> > > On Sun, Sep 12, 2010 at 01:27:37PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > > if you specify id = 0 the next available id will be taken
> > > > otherwise fail if already registered
> > > 
> > > I think we need a better solution here. Being able to specify an id
> > > is a good idea in general, but since 0 is a valid id we should be able
> > > to specify exactly this id aswell.
> > > An idea is to use -1 for a dynamic id, but of course this needs changes
> > > to all existing devices.
> > I prefer to do it a second step
> > in this case
> 
> I prefer doing it first, because it makes sure the problem is getting
> solved.
I prefer to do a second incremental patch

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
