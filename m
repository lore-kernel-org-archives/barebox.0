Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo5.mail-out.ovh.net ([178.32.228.5])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TEPV6-0005To-9C
 for barebox@lists.infradead.org; Wed, 19 Sep 2012 18:59:57 +0000
Received: from mail404.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id CFCBDFF96B3
 for <barebox@lists.infradead.org>; Wed, 19 Sep 2012 21:05:43 +0200 (CEST)
Date: Wed, 19 Sep 2012 20:57:21 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120919185721.GY25990@game.jcrosoft.org>
References: <1348048235-14431-1-git-send-email-plagnioj@jcrosoft.com>
 <20120919165343.GI6180@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120919165343.GI6180@pengutronix.de>
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
Subject: Re: [PATCH 1/1] defaultenv-2: execute init/* before timeout
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 18:53 Wed 19 Sep     , Sascha Hauer wrote:
> On Wed, Sep 19, 2012 at 11:50:35AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > so we can have splah, usb serial, etc...
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  defaultenv-2/base/bin/init |    8 +++-----
> >  1 file changed, 3 insertions(+), 5 deletions(-)
> > 
> > diff --git a/defaultenv-2/base/bin/init b/defaultenv-2/base/bin/init
> > index 3cac41c..5524710 100644
> > --- a/defaultenv-2/base/bin/init
> > +++ b/defaultenv-2/base/bin/init
> > @@ -12,7 +12,9 @@ global linux.bootargs.dyn.ip
> >  global linux.bootargs.dyn.root
> >  global editcmd=sedit
> >  
> > -/env/init/general
> > +for i in /env/init/*; do
> > +	. $i
> > +done
> >  
> >  if [ -e /env/menu ]; then
> >  	echo -e -n "\nHit m for menu or any other key to stop autoboot: "
> > @@ -27,10 +29,6 @@ if [ "${key}" = "q" ]; then
> >  	exit
> >  fi
> >  
> > -for i in /env/init/*; do
> > -	. $i
> > -done
> > -
> 
> This was intentionally done *after* waiting for user intervention to be
> able to escape in case some init script crashes barebox.
yeah but we need splash before timeout and I do not what to hack the init

so can do a pseudo rc.d

/etc/init/pre
/etc/init/post

so we can have some before some after timeout

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
