Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SJH47-0002Bj-Cv
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 04:27:56 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id EFB3BFF88B5
 for <barebox@lists.infradead.org>; Sun, 15 Apr 2012 06:29:05 +0200 (CEST)
Date: Sun, 15 Apr 2012 06:09:55 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120415040955.GG30672@game.jcrosoft.org>
References: <1334325273-1701-1-git-send-email-s.hauer@pengutronix.de>
 <1334325273-1701-7-git-send-email-s.hauer@pengutronix.de>
 <20120414105306.GD2074@game.jcrosoft.org>
 <20120414125729.GV3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120414125729.GV3852@pengutronix.de>
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
Subject: Re: [PATCH 6/7] ARM: initial Freescale i.MX6q Armadillo2 support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 14:57 Sat 14 Apr     , Sascha Hauer wrote:
> On Sat, Apr 14, 2012 at 12:53:06PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > > index 0000000..4b8c52b
> > > --- /dev/null
> > > +++ b/arch/arm/boards/freescale-mx6-arm2/env/config
> > > @@ -0,0 +1,47 @@
> > > +#!/bin/sh
> > > +
> > > +machine=armadillo2
> > > +serverip=
> > > +user=
> > why not set a vendor id and client id to identify the user at dhcp level
> 
> Because I don't use this.
I send a patch to rename machine to hostname

so we can use it too for dhcp request
> 
> > > +
> > > +disk_parts="1M(barebox)ro,1M(bareboxenv),4M(kernel),-(root)"
> > it will be good to put already a partition for oftree
> > 
> > 
> > btw you use 512k in the c for the env
> 
> Why should I store the oftree in a seperate partition?
> 

so how do you do to pass the dt to bootm?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
