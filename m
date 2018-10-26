Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gG0EU-0008GC-GG
 for barebox@lists.infradead.org; Fri, 26 Oct 2018 11:25:44 +0000
Date: Fri, 26 Oct 2018 13:24:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181026112438.i4gq2p4q7v4ca6es@pengutronix.de>
References: <20181026120558.1ef80a86@yaise-pc1>
 <20181026102342.lhx6hpcnobqe2g4k@pengutronix.de>
 <20181026123807.3f980f28@yaise-pc1>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181026123807.3f980f28@yaise-pc1>
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
Subject: Re: IMX6UL: Booting kernel with initramfs blocks
To: Patrick Boettcher <patrick.boettcher@posteo.de>
Cc: barebox@lists.infradead.org, Mikael Pann <Mikael.pann@stimio.fr>

On Fri, Oct 26, 2018 at 12:38:07PM +0200, Patrick Boettcher wrote:
> Hi,
> 
> Thanks for your super fast answer.
> 
> On Fri, 26 Oct 2018 12:23:42 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > When trying to boot the image with bootm -o .. .. it takes some time
> > > (to load I guess) and then blocks.  
> > 
> > Could you copy the image out from UBI to /somefile first to get UBI
> > out of the equation first?
> 
> I copied 
> 
>   cp /dev/nand0.root.ubi.kernel-recovery test 
>   md5sum test
> 
> The md5sum is identical with the one from my deploy dir.
> 
> Comparing the start of the zImage-initramfs file "manually" (some
> bytes) with the zImage-image reveals that it is identical.
> 
> I'm using v2017.04.0-phy3 of phytec's fork of barebox, btw.
>  
> > Doing bootm -v -v might reveal some more information then.
> 
> 
>   Loading ARM Linux zImage '/dev/nand0.root.ubi.kernel-recovery'
>   OS image not yet relocated
>   Passing control to ARM zImage handler
>   no OS load address, defaulting to 0x888e1000
>   no initrd load address, defaulting to 0x8a542000
>   Loading devicetree from '/dev/nand0.root.ubi.oftree-recovery'
>   Failed to fixup node in of_state_fixup+0x1/0x1ac: No such device
>   commandline: consoleblank=0 console=ttymxc0,115200n8 rootwait ro fsck.repair=yes 
>   {
>     <device-tree dumped, looks good to me >
>   };
>  
>   Starting kernel at 0x888e1000, oftree at 0x8a542000...

From what I can see these addresses look fine. You have an image that's
28MiB in size, we put it to roughly 5x size into memory and the
devicetree behind it. The kernel should then unpack itself to the start
of SDRAM. Looks good and It seems barebox actually jumps to the Kernel.

Next thing to try would be enabling CONFIG_DEBUG_LL,
CONFIG_DEBUG_UNCOMPRESS and CONFIG_EARLY_PRINTK in the Kernel. Pass
"earlyprintk" as kernel option and let's see what happens then.

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
