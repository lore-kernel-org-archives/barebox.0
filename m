Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo69.mail-out.ovh.net ([46.105.56.78])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y8IIE-00047H-D7
 for barebox@lists.infradead.org; Tue, 06 Jan 2015 00:46:43 +0000
Received: from mail643.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo69.mail-out.ovh.net (Postfix) with SMTP id 7D377FF9F3A
 for <barebox@lists.infradead.org>; Tue,  6 Jan 2015 01:46:19 +0100 (CET)
Date: Tue, 6 Jan 2015 01:46:19 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150106004619.GB4563@ns203013.ovh.net>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
 <1419358918-25569-7-git-send-email-plagnioj@jcrosoft.com>
 <20150105104255.GN30369@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150105104255.GN30369@pengutronix.de>
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
Subject: Re: [PATCH 7/9] poller: allow to restrict the poller frequency
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:42 Mon 05 Jan     , Sascha Hauer wrote:
> On Tue, Dec 23, 2014 at 07:21:56PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > so we do not slow down barebox on too much polling
> > specialy on USB drivers
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  common/poller.c  | 11 ++++++++++-
> >  include/poller.h |  3 +++
> >  2 files changed, 13 insertions(+), 1 deletion(-)
> 
> Could you repost this along with the first user?

I'm finishing to clean the USB HID driver that will use it

Best Regards,
J.
> 
> > 
> > diff --git a/common/poller.c b/common/poller.c
> > index 496636d..58b105d 100644
> > --- a/common/poller.c
> > +++ b/common/poller.c
> > @@ -24,6 +24,9 @@ int poller_register(struct poller_struct *poller)
> >  	list_add_tail(&poller->list, &poller_list);
> >  	poller->registered = 1;
> >  
> > +	if (poller->frequency)
> > +		poller->poll_next = get_time_ns();
> > +
> >  	return 0;
> >  }
> >  
> > @@ -96,8 +99,14 @@ void poller_call(void)
> >  
> >  	poller_active = 1;
> >  
> > -	list_for_each_entry_safe(poller, tmp, &poller_list, list)
> > +	list_for_each_entry_safe(poller, tmp, &poller_list, list) {
> > +
> > +		if (poller->frequency && get_time_ns() < poller->poll_next)
> > +			continue;
> >  		poller->func(poller);
> > +		if (poller->frequency)
> > +			poller->poll_next += poller->frequency;
> > +	}
> >  
> >  	poller_active = 0;
> >  }
> > diff --git a/include/poller.h b/include/poller.h
> > index cda5b57..3568a80 100644
> > --- a/include/poller.h
> > +++ b/include/poller.h
> > @@ -14,6 +14,9 @@ struct poller_struct {
> >  	void (*func)(struct poller_struct *poller);
> >  	int registered;
> >  	struct list_head list;
> > +
> > +	uint64_t frequency;
> > +	uint64_t poll_next;
> >  };
> 
> Could you reorder the fields in struct poller_struct by fields which
> should be initialized by users and internal fields? This was not exactly
> clear before this patch, but this patch introduces another two fields,
> from which one must be initialized by the user and the other one not.
> 
> Sascha
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
