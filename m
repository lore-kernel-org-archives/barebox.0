Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kQ52M-0006Ay-3s
 for barebox@lists.infradead.org; Wed, 07 Oct 2020 08:43:03 +0000
Date: Wed, 7 Oct 2020 10:43:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201007084300.GO11648@pengutronix.de>
References: <20200928154247.15619-1-a.fatoum@pengutronix.de>
 <20200929073220.GU11648@pengutronix.de>
 <50c46e25-4b69-2868-e264-72b37b82244e@pengutronix.de>
 <20200930074847.GH11648@pengutronix.de>
 <ba127a9d-1db2-9960-5522-14a93035e62e@pengutronix.de>
 <2d080897-cff8-57a9-5dba-556933426595@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <2d080897-cff8-57a9-5dba-556933426595@pengutronix.de>
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
Subject: Re: [PATCH 1/7] driver: introduce less error-prone dev_get_drvdata
 alternative
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, Oct 05, 2020 at 10:31:32AM +0200, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 9/30/20 3:13 PM, Ahmad Fatoum wrote:
> > Hi,
> > 
> > On 9/30/20 9:48 AM, Sascha Hauer wrote:
> >>> If the match data is a valid pointer:
> >>>  -> It doesn't matter, why we have no match data either way.
> >>>
> >>> If the match data is a casted integer (e.g. enum):
> >>>  The driver author should either:
> >>>    -> place the default enum value as first one,
> >>>       so no match data => default
> >>
> >> You know that, but "The driver Author" probably doesn't.
> > 
> > Like with all other functions that return an error code,
> > the author should check those errors:
> > 
> > enum lm75_type type = (enum lm75_type)device_get_match_data(dev);
> > if (type == 0)
> >    return -ENODEV;
> > 
> > I'd expect they will see that 0 shouldn't be part of the enumeration.
> > 
> >>>    -> should add an initial DEVICE_TYPE_UNKNOWN = 0 in the enum
> >>>       and handle it appropriately
> >>>
> >>> I like the function signature like that, I don't really see
> >>> a need to adjust it.
> >>>
> >>>> As you realize in your series some drivers cast the returned value into
> >>>> an integer type and use 0 as a valid possibility. These need an extra
> >>>> explanation why we can accept that case. I can think of different
> >>>> possibilies to get that straight:
> >>>>
> >>>> - Put a real pointer into matchdata. This is really preferred as it
> >>>>   motivates people to put flags into a (struct type) matchdata which
> >>>>   doesn't lead to excessive if (type == foo || type == bar || type ==
> >>>>   baz) we sometimes see in drivers.
> >>>
> >>> We have a real pointer there already. The problem is migrating the
> >>> existing drivers.
> >>
> >> Yes, existing drivers would have to be migrated, that is exactly what I
> >> am proposing.
> >>
> >>>
> >>>> - Return an ERR_PTR from device_get_match_data(). this is less likely
> >>>>   interpreted as a valid int value
> >>>
> >>> Doesn't cover all cases. Also for the normal use, it means
> >>> you need to have to check with IS_ERR_OR_NULL everywhere to
> >>> be sure you don't dereference a NULL pointer.
> >>
> >> Why that? Just don't return NULL when there's no match data, but return
> >> -ESOMETHING.
> > 
> > For the lm75 we would have to do:
> > 
> > enum lm75_type { TYPE_1, TYPE_2 };
> > 
> > const void *match = device_get_match_data(dev);
> > if (IS_ERR(match))
> >    return PTR_ERR(match);
> > enum lm75_type type = (enum lm75_type)match;
> > 
> > The alternative being:
> > 
> > enum lm75_type { TYPE_UNKNOWN = 0, TYPE_1, TYPE_2 };
> > 
> > enum lm75_type type = (enum lm75_type)device_get_match_data(dev);
> > if (type == TYPE_UNKNOWN)
> >    return -ENODEV;
> > 
> > I prefer the second one very much.

ok then, let's go for it.

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
