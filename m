Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RG3cs-0003Dx-5r
	for barebox@lists.infradead.org; Tue, 18 Oct 2011 06:58:15 +0000
Date: Tue, 18 Oct 2011 08:58:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111018065810.GH18141@pengutronix.de>
References: <CAM9uW_6-A3OSu5PrcM5NoA=CP4YAbOi_YM=_62zPwQvhM1k7gQ@mail.gmail.com>
	<20111017195801.GF18141@pengutronix.de>
	<CAM9uW_5XSrOp2LeeihMPJYzf5oyGgLWZST2msp2-EmLW-=-B8w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM9uW_5XSrOp2LeeihMPJYzf5oyGgLWZST2msp2-EmLW-=-B8w@mail.gmail.com>
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
Subject: Re: NAND Boot Issue
To: Kamel BOUHARA <k.bouhara@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Oct 17, 2011 at 10:31:38PM +0200, Kamel BOUHARA wrote:
> > bootu is for starting raw kernel images. Do you have such an image?
> > Normally you have an uImage (bootm) or a zImage (bootz)
> 
> 
> Ok so that maybe the solution because I didn't tried with the bootm .... my
> bad ! But why did I don't have the "Bad magic number" error like when I
> tried the boot command ???

A raw image does not have any magic number you could check, so the bootu
command relies on the user passing the correct image.

> 
> Here is the ls /dev result:
> 
> barebox:/ ls /dev/
> zero                   defaultenv             mem
> nor0                   nand0                  nand_oob0
> ram0                   phy0                   self_raw
> self0                  env_raw                env0
> nor0.barebox           nor0.bareboxenv        nor0.kernel
> nor0.root              nand0.barebox          nand0.bareboxenv
> nand0.kernel           nand0.root             nand0.root.bb
> nand0.kernel.bb        nand0.bareboxenv.bb    nand0.barebox.bb

Sorry, I meant the output of 'ls -l /dev/nand0.*' to check the sizes of
your partitions.

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
