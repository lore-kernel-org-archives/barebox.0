Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X42oS-0002Z3-4S
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 06:54:08 +0000
Date: Mon, 7 Jul 2014 08:53:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140707065345.GI23235@pengutronix.de>
References: <alpine.LFD.2.11.1407050643590.10085@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LFD.2.11.1407050643590.10085@localhost>
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
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

On Sat, Jul 05, 2014 at 06:47:36AM -0400, Robert P. J. Day wrote:
> 
>   (aside: i'm digging into device trees in barebox and will certainly
> have a number of questions shortly so i can write some tutorials for
> an upcoming class, but i'll start simple.)
> 
>   i'm particularly interested in configuring and building barebox for
> my beaglebone black (henceforth "BBB"), and i can see all of the .dts*
> support files under arch/arm/dts/, but a simple question -- the *new*
> BBB has upgraded from 2G of eMMC to 4G eMMC, but i don't see that
> mentioned anywhere in those .dts files. does that property need to be
> mentioned, or is that simply autodetected by the kernel at boot time?

eMMC size is autodetected by barebox and the kernel. In the end it's
just a MMC/SD card.

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
