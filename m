Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Yhe2V-0000M9-8p
 for barebox@lists.infradead.org; Mon, 13 Apr 2015 13:04:36 +0000
Date: Mon, 13 Apr 2015 15:04:11 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <20150413130411.GB19889@pengutronix.de>
References: <CAHQ1cqGVK7z-joRkPEWvswo4JDw6BgPxM9TNVgrsZAyN8cmqUg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGVK7z-joRkPEWvswo4JDw6BgPxM9TNVgrsZAyN8cmqUg@mail.gmail.com>
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
Subject: Re: Booting Linux on Altera's socfpga
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi!

On Mon, Apr 13, 2015 at 05:43:39AM -0700, Andrey Smirnov wrote:
> Hi All,
> 
> I am trying to use Barebox on Terasic's SoCKit board and so far I've
> had limited success.
> 
> My sequence of actions is the following:
> 
> 1. Get zImage, device tree file and .rbf file from a pre-built image
> available here:
> http://www.rocketboards.org/foswiki/Documentation/ArrowSoCKITEvaluationBoard140LinuxGettingStarted
> 
> 2. Boot into barebox
> 
> 3. cp /boot/soc_system.rbf /dev/socfpga-fpga (This step initially
> didn't work for me, so I had to make a change to the firmware driver
> http://lists.infradead.org/pipermail/barebox/2015-April/023194.html)
>

This is interesting, because all rbf's I generated myself worked fine.
I wonder why this is different...

> 4. global.linux.bootargs.base="console=ttyS0,115200"
> 
> 5. global.bootm.oftree=/boot/soc_system.dtb
> 
> 6. global.bootm.image=/boot/zImage
> 
> 7. bootm
> 
> After the last step I and barebox jumps to the kernel code I don't see
> any output on the serial at all.
>

Wild guess: does the Rocketboards kernel define "CONFIG_VMSPLIT_2G=y"?
It is possible, that this produces errors when you use barebox.

Try setting
	global.linux.bootargs.base="console=ttyS0,115200 earlyprintk"
if early printk is enabled in the rocketboards kernel.

> I feel like I am missing something obvious, but I can't figure out
> what it is. If anyone has had experience booting Linux using barebox
> on aforementioned board I'd greatly appreciate to hear about how you
> did it.
> 

I'm booting the mainline kernel with barebox since a v3.15ish kernel
and it works fine. I have no idea about the state of the rocketboards
kernel, though.

Regards,
Steffen

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
