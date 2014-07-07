Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x232.google.com ([2a00:1450:400c:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X430c-00005f-Qa
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 07:06:43 +0000
Received: by mail-we0-f178.google.com with SMTP id x48so3873817wes.23
 for <barebox@lists.infradead.org>; Mon, 07 Jul 2014 00:06:18 -0700 (PDT)
Date: Mon, 7 Jul 2014 09:06:12 +0200
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140707070610.GA11833@omega>
References: <alpine.LFD.2.11.1407050643590.10085@localhost>
 <20140707065345.GI23235@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140707065345.GI23235@pengutronix.de>
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
Subject: Re: does beaglebone black device tree need to specify amount of eMMC
 flash?
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, Jul 07, 2014 at 08:53:45AM +0200, Sascha Hauer wrote:
> On Sat, Jul 05, 2014 at 06:47:36AM -0400, Robert P. J. Day wrote:
> > 
> >   (aside: i'm digging into device trees in barebox and will certainly
> > have a number of questions shortly so i can write some tutorials for
> > an upcoming class, but i'll start simple.)
> > 
> >   i'm particularly interested in configuring and building barebox for
> > my beaglebone black (henceforth "BBB"), and i can see all of the .dts*
> > support files under arch/arm/dts/, but a simple question -- the *new*
> > BBB has upgraded from 2G of eMMC to 4G eMMC, but i don't see that
> > mentioned anywhere in those .dts files. does that property need to be
> > mentioned, or is that simply autodetected by the kernel at boot time?
> 
> eMMC size is autodetected by barebox and the kernel. In the end it's
> just a MMC/SD card.
> 

btw.: that's why eMMC is evil.

Raw-Flash:

Disadvantage:
 - you can't replace it.

Advantage:
 - no mcu in the middle, access the raw Flash.


- MMC/SD:

Disadvantage:
 - mcu in the middle, abstract block device. OS doesn't know about this.

Advantage:
 - you can replace it.


Combines these Disadvantage and Advantage you will get:

Disadvantage:
 - mcu in the middle, abstract block device. OS doesn't know about this.
 - you can't replace it.

Advantage:
 - maybe a little bit cheaper...
 - maybe avoid some bad connections (never expired by using sd cards)

For the marketing you can say if your eMMC is broken, then buy a new
complete board. This kind of marketing is very bad. :-(

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
