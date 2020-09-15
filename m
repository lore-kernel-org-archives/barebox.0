Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIA8J-0000lI-3g
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:32:28 +0000
Date: Tue, 15 Sep 2020 14:32:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200915123225.GB12463@pengutronix.de>
References: <20200602075757.4734-1-a.fatoum@pengutronix.de>
 <20200603071134.GQ11869@pengutronix.de>
 <9ecfdc1c-a02d-fd6f-1163-f261afd57e0b@pengutronix.de>
 <20200608052022.GI11869@pengutronix.de>
 <5040d269-123d-318b-3022-d9b6d3231239@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5040d269-123d-318b-3022-d9b6d3231239@pengutronix.de>
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
Subject: Re: [PATCH 1/3] common: restart: number unnamed restart handlers
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Sep 15, 2020 at 10:48:10AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 6/8/20 7:20 AM, Sascha Hauer wrote:
> > On Wed, Jun 03, 2020 at 03:32:35PM +0200, Ahmad Fatoum wrote:
> >> Hello Sascha,
> >>
> >> On 6/3/20 9:11 AM, Sascha Hauer wrote:
> >>> On Tue, Jun 02, 2020 at 09:57:55AM +0200, Ahmad Fatoum wrote:
> >>>> Follow-up commit allows referencing specific restart handler by name.
> >>>> Restart handlers default to "default" as name when none is given.
> >>>> Number them sequentially instead.
> >>>>
> >>>> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >>>> ---
> >>>>  common/restart.c  | 4 +++-
> >>>>  include/restart.h | 1 -
> >>>>  2 files changed, 3 insertions(+), 2 deletions(-)
> >>>>
> >>>> diff --git a/common/restart.c b/common/restart.c
> >>>> index b19ae54657c0..dd15c8d5c362 100644
> >>>> --- a/common/restart.c
> >>>> +++ b/common/restart.c
> >>>> @@ -19,6 +19,7 @@
> >>>>  #include <of.h>
> >>>>  
> >>>>  static LIST_HEAD(restart_handler_list);
> >>>> +static unsigned resetidx;
> >>>>  
> >>>>  /**
> >>>>   * restart_handler_register() - register a handler for restarting the system
> >>>> @@ -31,7 +32,7 @@ static LIST_HEAD(restart_handler_list);
> >>>>  int restart_handler_register(struct restart_handler *rst)
> >>>>  {
> >>>>  	if (!rst->name)
> >>>> -		rst->name = RESTART_DEFAULT_NAME;
> >>>> +		rst->name = basprintf("reset%u", resetidx);
> >>>
> >>> With this most existing restart handlers get a unique name, but in the
> >>> next patch you give most of them the same name. I am not sure where this
> >>> is aiming at.
> >>
> >> I haven't exhaustively checked, but the resets given descriptive names
> >> in the previous commit are all singletons: There shouldn't be two of them
> >> in the same build. If there are, the solution isn't a soc0 and soc1 reset,
> >> but instead they need more descriptive names.
> > 
> > Ok.
> > 
> >>
> >>> With the next patch every restart handler has a name, so why is the name
> >>> still optional?
> >>
> >> I guess I can just make it mandatory and error out with a warning on
> >> registration time?
> > 
> > Yes, right
> 
> I took look at this and I don't really like the approach.
> I am wary of changing barebox API in subtle ways that breaks external
> users. The existing solution doesn't have this problem. Reset handlers
> without a specific name will be called reset0, reset1.. instead
> of default. Could this be merged as-is?

Just did that.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
