Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwlOo-0006oe-R1
 for barebox@lists.infradead.org; Wed, 29 Jan 2020 11:20:48 +0000
References: <CAEKVsgZHZR2b28wcMcpac4Qa3KebrXMRf14STZ8GCum0NmnLgg@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <a0c0afa2-cb44-3e40-b7e7-962fd80f2902@pengutronix.de>
Date: Wed, 29 Jan 2020 12:20:44 +0100
MIME-Version: 1.0
In-Reply-To: <CAEKVsgZHZR2b28wcMcpac4Qa3KebrXMRf14STZ8GCum0NmnLgg@mail.gmail.com>
Content-Language: en-US
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
Subject: Re: Small tweak to get ACPI watchdog working (iTCO)
To: Cameron Ferguson <cameron.bare86@gmail.com>, barebox@lists.infradead.org, wim@iguana.be

Hello,

On 1/28/20 1:32 PM, Cameron Ferguson wrote:
> I'm developing an embedded Linux device with an x86 CPU.
> 
> I need to start the Intel watchdog timer running before I boot my main
> operating system (just in case my OS freezes before it fully loads
> up).
> 
> I have taken a look at the iTCO branch in the github repository,
> however I don't think this driver will work on my own device because
> of how the BIOS is configured. (I can't change the BIOS settings).
> 
> So what I've done is to take the code for the Linux kernel driver that
> can control the Intel watchdog driver via ACPI. This code is found in
> the main Linux kernel github repository inside "wdat_wdt.c".
> 
> I have taken the code for the Linux kernel ACPI iTCO driver and
> littered it with "printk" statements to find out what's happening at
> each step. From these printk's, I've been able to reduce my own
> Barebox ACPI driver to 8 lines of code.

Please turn it to a proper device driver and send a patch when
you got it working. :) Check e.g. drivers/watchdog/orion_wdt.c
to see how a barebox watchdog driver looks like.

> I have used the code in the
> Barebox respository file "acpi-test.c" as a guide, and here's what
> I've got so far for my driver.
> 
> #include <common.h>
> #include <init.h>
> #include <acpi.h>
> #include <restart.h>
> #include <watchdog.h>
> #include <linux/ioport.h>  /* IORESOURCE_IO, IORESOURCE_MEM */
> 
> static int wdat_wdt_probe_GREATLY_SIMPLIFIED(struct device_d *const pdev)
> {
>     /* This code is adapted from the following printk's
>       taken from the Linux kernel driver wdat_wdt:
> 
>     Wrote 0x20000 to 0x00000464, Access_with=32bit, pointer=0x00010464
>     Wrote 0x1000 to 0x00000468, Access_with=32bit, pointer=0x00010468
>     Wrote 0x4 to 0x00000460, Access_with=32bit, pointer=0x00010460
>     Wrote 0x640000 to 0x00000470, Access_with=32bit, pointer=0x00010470
>     Wrote 0x4 to 0x00000460, Access_with=32bit, pointer=0x00010460
>     Wrote 0x4 to 0x00000460, Access_with=32bit, pointer=0x00010460
> 
>     Resource=0 : IORESOURCE_IO, start=0x00000460, len=1, reg=0x00010460
>     Resource=1 : IORESOURCE_IO, start=0x00000470, len=1, reg=0x00010470
>     Resource=2 : IORESOURCE_IO, start=0x00000468, len=1, reg=0x00010468
>     Resource=3 : IORESOURCE_IO, start=0x00000464, len=1, reg=0x00010464
>     */
> 
>     request_ioport_region(dev_name(pdev), 0x460,0x470);
> 
>     long long unsigned const base = 0x10460; //For x86, just add
> 0x10000 to 0x460

I don't understand where this 0x10000 comes from. x86 I/O ports are 16-bits.

> 
>     iowrite32(0x20000, (volatile void __iomem *)(base + 4u));
>     iowrite32(0x1000, (volatile void __iomem *)(base + 8u));
>     iowrite32(0x4, (volatile void __iomem *)(base + 0u));
>     iowrite32(0x640000, (volatile void __iomem *)(base + 10u));
>     iowrite32(0x4, (volatile void __iomem *)(base + 0u));  // This is a kick
>     iowrite32(0x4, (volatile void __iomem *)(base + 0u));  // This is a kick

As you noticed writes aren't enough. You need the reads as well, as they
might have side effects.

> 
>     return 0;
> }
> 
> static void Cameron_Remove(struct device_d *const pdev)
> {
>     printk("Cameron : FADT driver removed\n");
> }
> 
> static struct acpi_driver Cameron_itco_watchdog_acpi_driver = {
>     .signature = "FACP",

This should be "WDAT". And then you are supposed to parse the ACPI table
to arrive at the addresses you need to use instead of hardcoding them.

The kernel code has a struct acpi_table_wdat that defines the layout 

>     .driver = {
>         .name = "Cameron_itco_watchdog_acpi_driver",
>         .probe = wdat_wdt_probe_GREATLY_SIMPLIFIED,
>         .remove = Cameron_Remove,
>     }
> };
> 
> This code doesn't work and I'm trying to figure out why. The original
> Linux kernel driver uses the function "devm_ioport_map", which doesn't
> exist in Barebox, and so I've tried to replace it with
> "request_ioport_region" but I'm not sure if I'm doing this right --
> and I suspect that this is where my driver is failing.

devm_ioport_map is a trick so you can write drivers that are independent
of whether the registers you access are in I/O port or memory space
by using the iowrite/ioread family of functions

On architectures with I/O ports, iowrite32 looks something like this internally:

if ((unsigned long)reg < THRESHOLD)
	outl(val, reg);
else
	writel(val, reg);

We don't do that in barebox, so either you port it or you use
{out,in}[bwl] for I/O ports and {read,write}[bwl] for memory.

Cheers
Ahmad

> 
> Can anyone please help?
> 
> Cameron
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
