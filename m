Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RiOSV-0004JV-84
 for barebox@lists.infradead.org; Wed, 04 Jan 2012 10:52:40 +0000
Received: from mail181.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id B9AD91008BD5
 for <barebox@lists.infradead.org>; Wed,  4 Jan 2012 11:53:42 +0100 (CET)
Date: Wed, 4 Jan 2012 11:46:20 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120104104620.GF18008@game.jcrosoft.org>
References: <1325566850-24432-1-git-send-email-plagnioj@jcrosoft.com>
 <1325566850-24432-3-git-send-email-plagnioj@jcrosoft.com>
 <20120104092543.GQ5446@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120104092543.GQ5446@pengutronix.de>
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
Subject: Re: [PATCH 3/6] poller_call: move from getc to is_timeout
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:25 Wed 04 Jan     , Sascha Hauer wrote:
> On Tue, Jan 03, 2012 at 06:00:47AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
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
> > index 79c06c8..f322db8 100644
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
> > +	if (time_offset_ns >= 100 * USECOND)
> > +		poller_call();
> 
> Do we need this if() at all? I think not.

for small delay such as bitbanging i2c delay need to be constant

Best Regards,
J.
> 
> Sascha
> 
> > +
> >  	if ((int64_t)(start_ns + time_offset_ns - get_time_ns()) < 0)
> >  		return 1;
> >  	else
> > diff --git a/common/console.c b/common/console.c
> > index cab8689..88c4010 100644
> > --- a/common/console.c
> > +++ b/common/console.c
> > @@ -225,8 +225,6 @@ int getc(void)
> >  	 */
> >  	start = get_time_ns();
> >  	while (1) {
> > -		poller_call();
> > -
> >  		if (tstc_raw()) {
> >  			kfifo_putc(console_input_buffer, getc_raw());
> >  
> > -- 
> > 1.7.7
> > 
> > 
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
