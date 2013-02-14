Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U61aB-0000HW-HO
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 16:22:48 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1U61a8-0002wE-4v
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 17:22:44 +0100
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <jlu@pengutronix.de>) id 1U61aj-0002pU-M7
 for barebox@lists.infradead.org; Thu, 14 Feb 2013 17:23:21 +0100
Message-ID: <1360859001.3892.34.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Thu, 14 Feb 2013 17:23:21 +0100
In-Reply-To: <20130211152110.GF1906@pengutronix.de>
References: <20130208200200.IIAE15122.toroondcbmts07-srv.bellnexxia.net@toip55-bus.srvr.bell.ca>
 <20130211091905.GQ1906@pengutronix.de>
 <20130211151452.DHP25653.toroondcbmts04-srv.bellnexxia.net@toip41-bus.srvr.bell.ca>
 <20130211152110.GF1906@pengutronix.de>
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
Subject: Re: [PATCH 1/1] commands/ubi.c: Add support for VID header offset
 in ubiattach
To: barebox@lists.infradead.org

On Mon, 2013-02-11 at 16:21 +0100, Sascha Hauer wrote:
> I'm interested in this patch once it's clear that this option is needed.
> Right now I think that the work is better invested in making this option
> unneeded. Jan, do you have insights why this is needed?

Linux with current mainline + pending GPMC/ELM patches thinks it
supports sub-page reads/writes on 2k page NAND with BCH8. This is simply
wrong. By using "root=ubi0:root ubi.mtd=nand0.root,2048
rootfstype=ubifs" in the kernel cmdline, you will get this override in
the kernel.

The GMPC NAND driver in barebox correctly does not use sub-page-access
and works fine without overriding the VID header offset.

When building the UBIFS/UBI the offset must obviously be set correctly.

Which kernel & barebox are you using?

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
