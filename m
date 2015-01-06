Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Y8Thw-00089v-0d
 for barebox@lists.infradead.org; Tue, 06 Jan 2015 12:58:01 +0000
Date: Tue, 6 Jan 2015 13:57:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150106125737.GD17225@pengutronix.de>
References: <20141223170709.GA15818@ns203013.ovh.net>
 <1419358918-25569-1-git-send-email-plagnioj@jcrosoft.com>
 <1419358918-25569-9-git-send-email-plagnioj@jcrosoft.com>
 <20150105105028.GP30369@pengutronix.de>
 <20150106004328.GA4563@ns203013.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150106004328.GA4563@ns203013.ovh.net>
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
Subject: Re: [PATCH 9/9] defaultenv-2: create a specific defaultenv for splash
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Jan 06, 2015 at 01:43:28AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > diff --git a/defaultenv/defaultenv-2-splash/init/splash b/defaultenv/defaultenv-2-splash/init/splash
> > > new file mode 100644
> > > index 0000000..04fdc8e
> > > --- /dev/null
> > > +++ b/defaultenv/defaultenv-2-splash/init/splash
> > > @@ -0,0 +1,3 @@
> > > +#!/bin/sh
> > > +
> > > +/env/bin/splash
> > 
> > Why do you need a separate /env/bin/splash here? Can't you add its
> > content here directly?
> > If we keep it, it should have the same name as the 'splash' command.
> 
> The problem today is that the generic init is not ordered (such as rc.{0-9})
> on linux so if we need specific init before the splash we can not ensure it
> buy adding an init file that will be added to be run before
> 
> The only way is to overwrite the init
> 
> or we do introduct a rc.d style buy starting the init with 000-xxx style file
> name or link

Then I'm much more in favor for using 000-xxx style. This makes the
intention clear how things should be ordered.

Besides, if you need board specific init you can still overwrite
/env/init/splash instead of /env/bin/splash.

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
