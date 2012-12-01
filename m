Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Tevfn-0001jU-KP
 for barebox@lists.infradead.org; Sat, 01 Dec 2012 22:36:36 +0000
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
 ([174.115.5.73]:42490 helo=crashcourse.ca)
 by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
 (Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
 id 1Tevfm-0002A6-6O
 for barebox@lists.infradead.org; Sat, 01 Dec 2012 17:36:34 -0500
Date: Sat, 1 Dec 2012 17:36:29 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1212011607040.13954@oneiric>
Message-ID: <alpine.DEB.2.02.1212011733350.24134@oneiric>
References: <alpine.DEB.2.02.1212011607040.13954@oneiric>
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
To: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sat, 1 Dec 2012, Robert P. J. Day wrote:

>
>   a bit embarrassed but, all of a sudden, what used to work just fine
> in terms of building and booting barebox on my beagleboard xM (rev C)
> doesn't work anymore.
>
>   not that long ago, i documented how easy this was here:
>
> http://www.crashcourse.ca/wiki/index.php/BeagleBoard-xM#Barebox_for_the_xM
>
> absolutely nothing out of the ordinary as i remember it.  so, when
> this worked, the boot looked like what you see here:
>
> http://www.crashcourse.ca/wiki/index.php/BeagleBoard-xM#Booting_to_Barebox_on_your_xM_--_it_actually_works
>
> now, the boot process produces:
>
> barebox 2012.11.0-00305-g159109f #1 Sat Dec 1 15:51:00 EST 2012
>
>
> Board: Texas Instrument's Beagle
> NAND type unknown: ff,ff
> No NAND device found (-19)!
> gpmc_nand gpmc_nand0: probe failed: error 6
> omap-hsmmc omap-hsmmc0: registered as omap-hsmmc0
> mci mci0: registered disk0
> malloc space: 0x87bfff10 -> 0x87ffff0f (size  4 MB)
> stack space:  0x4020f000 -> 0x4020fc00 (size  3 kB)
> booting from MMC1
>
> ... and hangs, suggesting that the MLO file is fine, but it's
> barebox.bin that simply fails.
>
>   am i missing something painfully obvious?

  for completeness (and what i of course should have done earlier if i
hadn't been drinking chardonnay all afternoon) was test with an
earlier version of barebox.  so i checked out tag v2012.10.0, and i'm
back to a booting version of barebox on my xM, represented by what you
see here:

http://www.crashcourse.ca/wiki/index.php/BeagleBoard-xM#Booting_to_Barebox_on_your_xM_--_it_actually_works

  will investigate further ...

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
