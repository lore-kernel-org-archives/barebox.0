Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 7.mo5.mail-out.ovh.net ([178.32.124.100]
 helo=mo5.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Tfr5J-00042V-1S
 for barebox@lists.infradead.org; Tue, 04 Dec 2012 11:54:46 +0000
Received: from mail419.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo5.mail-out.ovh.net (Postfix) with SMTP id 6BA0710241B5
 for <barebox@lists.infradead.org>; Tue,  4 Dec 2012 13:02:54 +0100 (CET)
Date: Tue, 4 Dec 2012 12:52:46 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121204115246.GF8327@game.jcrosoft.org>
References: <alpine.DEB.2.02.1212031041250.19977@oneiric>
 <20121203162121.GT10369@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20121203162121.GT10369@pengutronix.de>
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
Subject: Re: how does one enable barebox's low-level debugging?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On 17:21 Mon 03 Dec     , Sascha Hauer wrote:
> On Mon, Dec 03, 2012 at 10:45:41AM -0500, Robert P. J. Day wrote:
> > 
> >   looking through common/startup.c and decided i wanted to see
> > confirmation of all the initcalls running here:
> > 
> >         for (initcall = __barebox_initcalls_start;
> >                         initcall < __barebox_initcalls_end; initcall++) {
> >                 debug("initcall-> %pS\n", *initcall);
> >                 result = (*initcall)();
> >                 if (result)
> >                         pr_err("initcall %pS failed: %s\n", *initcall,
> >                                         strerror(-result));
> >         }
> > 
> > 
> > so i started from scratch, ran "make menuconfig" for both the x-loader
> > and barebox to enable "low level debug messages", but i don't see any
> > difference in the boot output.
> > 
> >   i've perused the barebox wiki and don't see anything regarding that
> > setting.  am i doing something wrong?
> 
> You have to add a "#define DEBUG" to the file you want to have the debug
> messages from. Add this *above* the includes, just like in the kernel.
> 
> Something not mentioned in the wiki is that before the first console is
> initialized barebox will print the messages into a ring buffer which it
> will dump when the first console is initialized.
but also print on the debug console if enabled

on the current barebox

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
