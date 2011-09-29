Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R9Dqy-0008J5-2g
	for barebox@lists.infradead.org; Thu, 29 Sep 2011 10:28:42 +0000
Date: Thu, 29 Sep 2011 12:28:29 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110929102829.GG31404@pengutronix.de>
References: <560194a56016e7562eb1e50f68a58ff6f6e069a7.1316086518.git.fercerpav@gmail.com>
	<20110920193121.GA31404@pengutronix.de>
	<20110920202901.GS3579@home.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20110920202901.GS3579@home.lan>
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
Subject: Re: [PATCH 1/2] m25p80: add additional sanity checks for erasure
To: Paul Fertser <fercerpav@gmail.com>
Cc: barebox@lists.infradead.org, Franck JULLIEN <elec4fun@gmail.com>

Hi Paul,

Sorry for the delay.

On Wed, Sep 21, 2011 at 12:29:01AM +0400, Paul Fertser wrote:
> On Tue, Sep 20, 2011 at 09:31:21PM +0200, Sascha Hauer wrote:
> > On Thu, Sep 15, 2011 at 03:27:36PM +0400, Paul Fertser wrote:
> > > This guards for the cases where the initial offset or byte count is
> > > not aligned with regard to erase block size, thus making it impossible
> > > for erase to do any harm to the nearby sectors.
> > 
> > I'm unsure about this one. The other flash drivers allow to erase areas
> > which are not eraseblock aligned. Maybe we should instead add a
> > cdev->erasesize field. Then we can add this check in the generic code
> > and fix this for all drivers.
> 
> I guess i was too surprised by seeing an endless loop when i tried to
> erase an area of the wrong size (the counter underflowed) to think
> about it in a less narrow-minded way, sorry, you're right of course.
> 
> Talking about generalisation, shouldn't the m25p80 driver be hooked
> into the mtd subsystem to allow running ubi on top of it? By the
> cursory look it seems to be doable without much effort.

Yes, it probably should. The cfi driver also is not a mtd driver but
has some mtd glue code. Maybe the same approach (even better the same
code) can be used here.

> 
> Another question: should i repost this early (questionable) series you
> seem to have missed[1]?
> 
> [1] http://lists.infradead.org/pipermail/barebox/2011-August/004483.html

Not necessary, I just applied it.

Thanks
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
