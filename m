Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo177.mail-out.ovh.net ([178.33.107.143])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cj6Sa-0006Np-1t
 for barebox@lists.infradead.org; Wed, 01 Mar 2017 15:46:38 +0000
Received: from player792.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id A6C633675C
 for <barebox@lists.infradead.org>; Wed,  1 Mar 2017 16:46:07 +0100 (CET)
Date: Wed, 1 Mar 2017 16:52:05 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20170301155205.GA4120@mail.ovh.net>
References: <20170227101416.GB12475@mail.ovh.net>
 <1488190770-4034-1-git-send-email-plagnioj@jcrosoft.com>
 <1488190770-4034-5-git-send-email-plagnioj@jcrosoft.com>
 <20170228070901.gbkwxlh772plqi4e@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170228070901.gbkwxlh772plqi4e@pengutronix.de>
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08:09 Tue 28 Feb     , Sascha Hauer wrote:
> On Mon, Feb 27, 2017 at 11:19:27AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > use the one with the most priority.
> > 
> > We can not select the clocksource at user level.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  common/clock.c  | 11 +++++++++++
> >  include/clock.h |  3 ++-
> >  2 files changed, 13 insertions(+), 1 deletion(-)
> > 
> > diff --git a/common/clock.c b/common/clock.c
> > index 2c5dd91cc..d99d06853 100644
> > --- a/common/clock.c
> > +++ b/common/clock.c
> > @@ -213,6 +213,17 @@ EXPORT_SYMBOL(mdelay_non_interruptible);
> >  
> >  int init_clock(struct clocksource *cs)
> >  {
> > +	if (current_clock && cs->priority < current_clock->priority)
> > +		return -EBUSY;
> 
> You should return successfully here. Otherwise driver probe functions
> return -EBUSY for something which is not the drivers fault. In fact,
> it's not an error, it's just that we currently don't have any use for an
> additional clock.
my issue is that we will report in barebox that the device is in use but in
fact is not as we exit the init_clock without doing event the init.

That's why I choosed to return -EBUSY instead of 0
> Also consider testing for <= current_clock->priority
> instead of <. All current clocks have priority 0 and we want to
> initialize only the first one.
ok

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
