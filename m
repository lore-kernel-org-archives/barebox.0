Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PAoMI-0007G3-0z
	for barebox@lists.infradead.org; Tue, 26 Oct 2010 18:34:55 +0000
Date: Tue, 26 Oct 2010 20:34:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20101026183449.GE6017@pengutronix.de>
References: <AANLkTinosq5jY41=piCX3JaeFy6Z93gnG1Ym_VRqZ_sJ@mail.gmail.com>
	<20101022070504.GD22139@pengutronix.de>
	<AANLkTimNiUjRq3GLNNa0gYRGGZjLaTrWbsNRKPU9=1mw@mail.gmail.com>
	<20101026033958.GD6017@pengutronix.de>
	<AANLkTi==hZCG9TbR1udevZPJp=wbji-JTTZaMTYYcW6f@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTi==hZCG9TbR1udevZPJp=wbji-JTTZaMTYYcW6f@mail.gmail.com>
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

On Mon, Oct 25, 2010 at 11:07:21PM -0500, Victor Rodriguez wrote:
> On Mon, Oct 25, 2010 at 10:39 PM, Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > Hi Victor,
> >
> > Right, dont forget to erase the partitions with 'erase
> > /dev/nand0.kernel.bb' beforehand, otherwise you'll have garbage in your
> > nand.
> 
> You mean to erase the part of the nand where the kernel is saved
> before copy the ramdisk to its partition? or before i run the 'boot'
> comand ?

You have to erase the Nand before writing to it. (though I wonder if
that behaviour should be changed).

> >
> > I'm sorry the situation on the beagle board is still a bit rough and
> > unclear. I hope we find time working on this.
> 
> 
> Yes I could give some free time to work on this :) but could you
> please give me more information about the mmc dirver I am new on
> barebox but I would like to help to improve it  :)

Great ;)

> 
> Which other board is using this MMC driver ? I can check the code.

Currently there is no Omap MMC support in barebox. The path to go would
be to copy the Omap MMC driver from U-Boot and bash onto it until it
runs. For a clue what has to be changed in this driver you might want to
look at a diff between the i.MX esdhc driver inU-Boot and barebox.

> 
> The problem is that beagle board is much more familiar with booting by
> mmc because it does not have any RJ45 connector in order to transfer
> by TFTP or NFS the uImage.
> 
> By the way about the small piece of code for the beagle board nand. Do
> you consider that is good enough for an small patch ?

I think at least the offset of the environment has to be moved. AFAIK
the first 768k in Nand is used for the Xloader and the secoond stage
bootloader. It's probably not good for users overwriting this
accidently.

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
