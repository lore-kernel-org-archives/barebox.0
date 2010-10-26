Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PAaOH-0000dv-Kk
	for barebox@lists.infradead.org; Tue, 26 Oct 2010 03:40:03 +0000
Date: Tue, 26 Oct 2010 05:39:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101026033958.GD6017@pengutronix.de>
References: <AANLkTinosq5jY41=piCX3JaeFy6Z93gnG1Ym_VRqZ_sJ@mail.gmail.com>
	<20101022070504.GD22139@pengutronix.de>
	<AANLkTimNiUjRq3GLNNa0gYRGGZjLaTrWbsNRKPU9=1mw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimNiUjRq3GLNNa0gYRGGZjLaTrWbsNRKPU9=1mw@mail.gmail.com>
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
Subject: Re: Beagleboard and barebox problem
To: Victor Rodriguez <vm.rod25@gmail.com>
Cc: barebox@lists.infradead.org

Hi Victor,

> I fix the problem of envfs: wrong magic on /dev/env0 with your thread
> 
> http://www.mail-archive.com/u-boot-users@lists.sourceforge.net/msg10197.html
> 
> And every thing works fine
> 
> uboot> addpart /dev/nand0 256k(uboot),128k(env),2048k(kernel),-(rootfs)

I think on the beagle board the first space in Nand is occupied by the
xloader and xloader itself expects the second stage loader at offset
512k, but I don't know the exact situation off my head. Michael, maybe
you can comment on this?

> 
> setenv bootargs console=ttyS2,115200n8 noinitrd root=/dev/mmcblk0p2
> rootfstype=ext2 rw rootdelay=1 nohz=off
> 
> But is not working for bare box
> 
> How do you save the boot args ?

have a look at /env/config (using the edit command). Every file there is
saved into the environment using saveenv.

> 
> The next step will be
> 
> uboot> tftp uImage-mx27ads /dev/nand0.kernel.bb
> 
> And the same for a ram disk File System in the nand0.rootfs.bb right ?

Right, dont forget to erase the partitions with 'erase
/dev/nand0.kernel.bb' beforehand, otherwise you'll have garbage in your
nand.

> 
> And
> 
> uboot> bootm /dev/nand0.kernel.bb

In principle, yes. The normal process is to simply run 'boot' which is a
script under /env/bin. This will setup things like the commandline
correctly.

> 
> But my second question is  How the kernel know were is the File
> System, where should I set something similar to boot args ?

Have a look at the files under /env, I think this will answer your
questions (we have ls, cat and edit for this).

I'm sorry the situation on the beagle board is still a bit rough and
unclear. I hope we find time working on this.

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
