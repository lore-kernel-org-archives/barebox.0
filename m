Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X45yq-0005v3-Bg
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 10:17:04 +0000
Date: Mon, 7 Jul 2014 06:16:38 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20140707073623.GJ23235@pengutronix.de>
Message-ID: <alpine.LFD.2.11.1407070615570.3134@localhost>
References: <alpine.LFD.2.11.1407051023580.17423@localhost>
 <20140707073623.GJ23235@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: device trees, dtc and beaglebone black
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, 7 Jul 2014, Sascha Hauer wrote:

> On Sat, Jul 05, 2014 at 10:45:25AM -0400, Robert P. J. Day wrote:
> >
> >   next, with the BBB, i realize there are two configs and builds that
> > must be done:
> >
> >  $ make omap3530_beagle_xload_defconfig
> >  $ make omap3530_beagle_defconfig
>
> Nope. These configs are for the beaglebo*ard*, not the beaglebone. Maybe
> we should rename the config files. At the time they were introduced
> there was no beaglebone.
>
> The configs you need for the beaglebone are:
>
> am335x_mlo_defconfig
> am335x_defconfig

  yes, i should have known that ... i'll dig into the rest of your
note later.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
