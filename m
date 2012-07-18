Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo1.mail-out.ovh.net ([178.32.119.250]
 helo=mo1.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SrXFw-0000TM-IY
 for barebox@lists.infradead.org; Wed, 18 Jul 2012 16:37:45 +0000
Received: from mail94.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo1.mail-out.ovh.net (Postfix) with SMTP id 47678FF9C4F
 for <barebox@lists.infradead.org>; Wed, 18 Jul 2012 18:42:57 +0200 (CEST)
Date: Wed, 18 Jul 2012 18:38:03 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120718163803.GB22657@game.jcrosoft.org>
References: <50065575.4090808@web.de> <5006857D.4020505@web.de>
 <20120718150616.GK30009@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120718150616.GK30009@pengutronix.de>
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
Subject: Re: AT91SAM9263-EK
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Stutz Sven <stutzsven@web.de>

On 17:06 Wed 18 Jul     , Sascha Hauer wrote:
> Hi Sven,
> 
> On Wed, Jul 18, 2012 at 11:44:29AM +0200, Stutz Sven wrote:
> > 
> > Hello Sascha,
> > 
> > thanks a lot for your help.
> > 
> > When I completely switch off the ecc, Barebox is loading the Linux kernel.
> > But I guess that the ecc is necessary especially for NAND-Flash devices.
> 
> Indeed. You shouldn't use NAND without ecc.
> 
> > 
> > 
> > The AT91SAM9263 controller has a ecc unit implemented. There are
> > three registers and the error calculation is done automatically,
> > only the error correction must be done in software.
> > Or is it better to you use the software ecc and I should try to fix
> > the software problem?
> 
> If possible you should use hardware ecc. It may be though that it has
> bugs that force you to use software ecc, but I'm not familiar with the
> atmel hardware.
the hw ecc work on 9263 but we do not use it on the kernel
> 
> > Can you give me some hints to fix this problem?
> 
> Does it work in the kernel? If yes, try looking for differences. The
> NAND layers are sufficiently similar.
the drivers as the same on both barebox and linux
> 
> > 
> > Btw. I have found the description table for the NAND devices. But
> > what would happen if I change the connections between the controller
> > and the NAND-Flash, where are those port description stored or the
> > timings to access the data bus?
smc

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
