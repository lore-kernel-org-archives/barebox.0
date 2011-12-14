Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 4.mo5.mail-out.ovh.net ([178.33.111.247]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RaqUq-0006MV-CR
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 15:11:54 +0000
Received: from mail434.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 23AD4FF8122
 for <barebox@lists.infradead.org>; Wed, 14 Dec 2011 16:12:13 +0100 (CET)
Date: Wed, 14 Dec 2011 16:07:27 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111214150727.GB7553@game.jcrosoft.org>
References: <1323789718-2459-1-git-send-email-plagnioj@jcrosoft.com>
 <20111214112504.GF27267@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111214112504.GF27267@pengutronix.de>
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
Subject: Re: [PATCH 1/1] poller_call: move from getc to is_timeout
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 12:25 Wed 14 Dec     , Sascha Hauer wrote:
> On Tue, Dec 13, 2011 at 04:21:58PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > this will allow to always call poller_call even durring timeout
> > and still the case in getc
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  common/clock.c   |    4 ++++
> >  common/console.c |    2 --
> >  2 files changed, 4 insertions(+), 2 deletions(-)
> > 
> > diff --git a/common/clock.c b/common/clock.c
> > index 79c06c8..6e92348 100644
> > --- a/common/clock.c
> > +++ b/common/clock.c
> > @@ -27,6 +27,7 @@
> >  #include <common.h>
> >  #include <asm-generic/div64.h>
> >  #include <clock.h>
> > +#include <poller.h>
> >  
> >  static struct clocksource *current_clock;
> >  static uint64_t time_ns;
> > @@ -139,6 +140,9 @@ uint32_t clocksource_hz2mult(uint32_t hz, uint32_t shift_constant)
> >  
> >  int is_timeout(uint64_t start_ns, uint64_t time_offset_ns)
> >  {
> > +	if (time_offset_ns > MSECOND)
> > +		poller_call();
> 
> Why this additional test? It effectively disables poller_call() being
> called from getc() since getc calls is_timeout with 100us.
yeah I was wanting to put 100us as if the delay is really small let it

the idea is to not perturb a i2c bitbanging

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
