Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjLHu-0003OR-VW
 for barebox@lists.infradead.org; Thu, 02 Mar 2017 07:36:37 +0000
Date: Thu, 2 Mar 2017 08:36:12 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170302073612.n6oiwx2hxkjudmjr@pengutronix.de>
References: <20170227101416.GB12475@mail.ovh.net>
 <1488190770-4034-1-git-send-email-plagnioj@jcrosoft.com>
 <1488190770-4034-5-git-send-email-plagnioj@jcrosoft.com>
 <20170228070901.gbkwxlh772plqi4e@pengutronix.de>
 <20170301155205.GA4120@mail.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170301155205.GA4120@mail.ovh.net>
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
Subject: Re: [PATCH 5/8] clocksource: allow to have multiple device from
 clock source
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Mar 01, 2017 at 04:52:05PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 08:09 Tue 28 Feb     , Sascha Hauer wrote:
> > On Mon, Feb 27, 2017 at 11:19:27AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > use the one with the most priority.
> > > 
> > > We can not select the clocksource at user level.
> > > 
> > > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > > ---
> > >  common/clock.c  | 11 +++++++++++
> > >  include/clock.h |  3 ++-
> > >  2 files changed, 13 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/common/clock.c b/common/clock.c
> > > index 2c5dd91cc..d99d06853 100644
> > > --- a/common/clock.c
> > > +++ b/common/clock.c
> > > @@ -213,6 +213,17 @@ EXPORT_SYMBOL(mdelay_non_interruptible);
> > >  
> > >  int init_clock(struct clocksource *cs)
> > >  {
> > > +	if (current_clock && cs->priority < current_clock->priority)
> > > +		return -EBUSY;
> > 
> > You should return successfully here. Otherwise driver probe functions
> > return -EBUSY for something which is not the drivers fault. In fact,
> > it's not an error, it's just that we currently don't have any use for an
> > additional clock.
> my issue is that we will report in barebox that the device is in use but in
> fact is not as we exit the init_clock without doing event the init.

What's the matter? We call init_clock() on a clocksource and barebox
could decide to use it. It just happens that we only use the clocksource
with the highest priority, but this shouldn't interest the driver.

BTW the same as you describe also happens with a low priority
clocksource when it's registered before a high priority clocksource: It
ends up being unused, though registered.

> 
> That's why I choosed to return -EBUSY instead of 0

As a clocksource driver I can only loose in this situation. I haven't
done anything wrong and I can only forward the error, in which case we
see it in the console or I can ignore it in which case I suppress
potential real errors.

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
