Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfUjt-0005ro-My
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 12:03:10 +0000
Date: Mon, 3 Dec 2012 07:02:58 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20121203100446.GQ10369@pengutronix.de>
Message-ID: <alpine.DEB.2.02.1212030701030.16355@oneiric>
References: <alpine.DEB.2.02.1212011607040.13954@oneiric>
 <20121203094625.GJ10369@pengutronix.de>
 <alpine.DEB.2.02.1212030449190.9853@oneiric>
 <20121203095649.GM10369@pengutronix.de>
 <alpine.DEB.2.02.1212030458310.14230@oneiric>
 <20121203100446.GQ10369@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: suddenly, i can't boot barebox on my beagle xM anymore
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Mon, 3 Dec 2012, Sascha Hauer wrote:

> make omap3530_beagle_xload_defconfig && make
>
> > > xload: cp barebox-flash-image /mnt/MLO
>
> make omap3530_beagle_defconfig && make
>
> > > barebox: cp barebox-flash-image /mnt/barebox.bin
> >
> >   i did that second copy, but are you sure i should copy that new
> > flash image to MLO?  i'm not convinced...
>
> Not the same binary of course. I clarified this a bit above.

  and i tossed all this into one of my wiki pages:

http://www.crashcourse.ca/wiki/index.php/Barebox_on_the_xM

thanks for clearing that up.

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
