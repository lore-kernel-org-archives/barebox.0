Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 8.mo2.mail-out.ovh.net ([188.165.52.147]
 helo=mo2.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TaOIm-0000WA-6J
 for barebox@lists.infradead.org; Mon, 19 Nov 2012 10:10:07 +0000
Received: from mail606.ha.ovh.net (b6.ovh.net [213.186.33.56])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id A7FEEDC15B6
 for <barebox@lists.infradead.org>; Mon, 19 Nov 2012 11:17:44 +0100 (CET)
Date: Mon, 19 Nov 2012 11:08:02 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121119100802.GI8327@game.jcrosoft.org>
References: <20121116175355.GB8327@game.jcrosoft.org>
 <1353088545-19406-1-git-send-email-plagnioj@jcrosoft.com>
 <20121119093844.GJ10369@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121119093844.GJ10369@pengutronix.de>
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
Subject: Re: [PATCH 1/7] watchdog: add keep alive support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 10:38 Mon 19 Nov     , Sascha Hauer wrote:
> 
> On Fri, Nov 16, 2012 at 06:55:39PM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > this will allow to ping the watchdog via poller
> > 
> >  /*
> >   * Note: this simple framework supports one watchdog only.
> >   */
> >  static struct watchdog *watchdog;
> >  
> > +static void watchdog_poller_func(struct poller_struct *poller)
> > +{
> > +	watchdog->keep_alive(watchdog);
> > +}
> > +
> > +static struct poller_struct watchdog_poller = {
> > +	.func = watchdog_poller_func,
> > +};
> > +
> >  int watchdog_register(struct watchdog *wd)
> >  {
> >  	if (watchdog != NULL)
> >  		return -EBUSY;
> >  
> >  	watchdog = wd;
> > +
> > +	if (watchdog->keep_alive) {
> > +		int ret;
> > +
> > +		ret = poller_register(&watchdog_poller);
> > +		if (ret) {
> > +			watchdog = NULL;
> > +			return ret;
> > +		}
> > +	}
> 
> Currently the watchdog is supposed to be kept alive with periodically
> calling the watchdog (or wd) command. A user may decide to just
> periodically ping the watchdog from C code, but this should be a users
> decision (i.e. some enhancement to the wd command) and should be
> available for i.MX aswell.

no this is broken

this should be completly automatic I agree that the user need to control it

we are not going to add 100s of call in barebox for this

like did U-Boot

Barebox need to ping the wtach automticly via poler
and manage soft timeout

as some watchdog have short timeout so this will make the soft tiemout (user
timeout) hw indepedant as in linux

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
