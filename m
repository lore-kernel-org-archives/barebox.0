Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfRdE-0006Ty-1a
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 08:44:04 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1TfRdC-0002ej-Ph
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 09:44:02 +0100
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1TfRdC-0001nQ-JR
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 09:44:02 +0100
Message-ID: <1354524242.3772.11.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 03 Dec 2012 09:44:02 +0100
In-Reply-To: <alpine.DEB.2.02.1212030327430.6352@oneiric>
References: <alpine.DEB.2.02.1212011607040.13954@oneiric>
 <alpine.DEB.2.02.1212011733350.24134@oneiric>
 <alpine.DEB.2.02.1212020418020.6898@oneiric>
 <1354522782.3772.3.camel@coredoba.hi.pengutronix.de>
 <alpine.DEB.2.02.1212030327430.6352@oneiric>
Mime-Version: 1.0
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
Subject: Re: suddenly, i can't boot barebox on my beagle xM anymore [ISOLATED]
To: Barebox List <barebox@lists.infradead.org>

On Mon, 2012-12-03 at 03:31 -0500, Robert P. J. Day wrote:
> *sigh* ... i *think* i figured out what's happening.  in order to
> play with barebox on my xM, until recently, i'd done nothing more than
> create a single FAT partition on a micro SD card, put MLO and
> barebox.bin on it, put it in my xM, and let it boot.  until that OMAP
> merge, it worked fine.
> 
>   as i read it, the new default environment for the xM *requires* a
> second (ext3) partition or the boot process simply hangs, am i reading
> that right?  if that's true, how can i adjust that so i can once again
> just boot to barebox without having a kernel and root fs created yet?

Only the kernel uses the second partition for its rootfs, barebox should
get to the prompt where you can interrupt autoboot anyway.

So figuring out the exact commit would be useful. The bisection should
take only a few steps. Sascha build-checks every revision, so all the
bisection steps should build fine.

Regards,
Jan
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
