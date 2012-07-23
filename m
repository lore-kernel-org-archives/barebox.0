Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1StOsw-00009a-N1
 for barebox@lists.infradead.org; Mon, 23 Jul 2012 20:05:51 +0000
Date: Mon, 23 Jul 2012 22:05:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120723200526.GB30009@pengutronix.de>
References: <juh698$uj7$1@dough.gmane.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <juh698$uj7$1@dough.gmane.org>
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
Subject: Re: Booting kernel from FAT partition on beagle board
To: Bernhard Walle <bernhard@bwalle.de>
Cc: barebox@lists.infradead.org

On Sun, Jul 22, 2012 at 05:29:44PM +0200, Bernhard Walle wrote:
> Hi,
> 
> Passing control to ARM Linux uImage handler
> 
> Starting kernel at 0x80008000...
> commandline: console=ttyO2,115200 vram=12M
> omapfb.mode=dvi:1024x768MR-16@60 omapfb.debug=y omapdss.def_disp=dvi
> root=/dev/mmcblk0p2 ro rootfstype=ext3 rootwait earlyprintk=ttyO2,115200

earlyprintk does not take options.

Have you enabled earlyprintk support in your config? At least you
should something then.

> arch_number: 1546
> ------------------------------------------------------------
> 
> The same kernel boots fine using u-boot. I'm using Barebox 2012.07.0 and
> u-boot 2012.07-rc1.
> 
> Did I do something wrong? Or is that just a bug?

What you tried should work, I can't see something obviously wrong.

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
