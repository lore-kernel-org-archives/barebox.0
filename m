Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mo2.mail-out.ovh.net ([178.32.228.2])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VO18R-0006gy-Ay
 for barebox@lists.infradead.org; Mon, 23 Sep 2013 08:04:47 +0000
Received: from mail436.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo2.mail-out.ovh.net (Postfix) with SMTP id C5D47DC8475
 for <barebox@lists.infradead.org>; Mon, 23 Sep 2013 10:04:24 +0200 (CEST)
Date: Mon, 23 Sep 2013 10:05:40 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20130923080540.GD31585@ns203013.ovh.net>
References: <20130921064503.GI1137@ns203013.ovh.net>
 <1379745967-4575-1-git-send-email-plagnioj@jcrosoft.com>
 <20130923073346.GT30088@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20130923073346.GT30088@pengutronix.de>
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
Subject: Re: [PATCH 1/4] misc: add bootcount framework
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 09:33 Mon 23 Sep     , Sascha Hauer wrote:
> On Sat, Sep 21, 2013 at 08:46:04AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > The bootcount is always how many time the system start.
> > To determine since when, this will depend on the driver implementation
> > and your hardware feature.
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  drivers/misc/Kconfig            |  2 ++
> >  drivers/misc/Makefile           |  1 +
> >  drivers/misc/bootcount/Kconfig  | 12 +++++++++
> >  drivers/misc/bootcount/Makefile |  1 +
> >  drivers/misc/bootcount/core.c   | 54 +++++++++++++++++++++++++++++++++++++++++
> >  include/bootcount.h             | 31 +++++++++++++++++++++++
> >  6 files changed, 101 insertions(+)
> >  create mode 100644 drivers/misc/bootcount/Kconfig
> >  create mode 100644 drivers/misc/bootcount/Makefile
> >  create mode 100644 drivers/misc/bootcount/core.c
> >  create mode 100644 include/bootcount.h
> 
> This is getting worse. I don't get it why we need a 'framework' to
> abstract a single variable. With this series we now have three
> layers: a bootcount framework, a midlayer driver and a somfy specific
> driver.
> 
> Can we please just do something like:
> 
> common/bootcount.c:
> 
> static int bootcount;
> 
> /*
>  * Call this with your actual boot count, already increased by one
>  * for the current boot.
>  */
> int bootcount_set(int count)
> {
> 	if (bootcount) {
> 		pr_err("Bootcount already set\n");
> 		return -EINVAL;
> 	}
> 
> 	bootcount = count;
> 
> 	return 0;
> }
> 
> static int bootcount_init(void)
> {
> 	globalvar_add_simple_int_ro("bootcount", &bootcount, "%d");
> 
> 	return 0;
> }
> late_initcall(bootcount_init);

no as the bootcount is way more complex for somfy

we store the boot count in one register with the boot mode

and the boot count can we reset by the shell

so it's not a RO

and I do not like to put everything on global

Brest Regards,
J.
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
