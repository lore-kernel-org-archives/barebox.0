Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYcR-0004Up-2y
 for barebox@lists.infradead.org; Mon, 20 Jan 2020 15:05:39 +0000
References: <CALtZhhMAHMh0HBatmQVL=uU6hYBuK3wvYPntqbQ-7rR5OzX_xA@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <c20bdbbf-6a6e-9a47-a21a-4cb8fed3aea4@pengutronix.de>
Date: Mon, 20 Jan 2020 16:05:31 +0100
MIME-Version: 1.0
In-Reply-To: <CALtZhhMAHMh0HBatmQVL=uU6hYBuK3wvYPntqbQ-7rR5OzX_xA@mail.gmail.com>
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
Subject: Re: Issue CPU instructions to start watchdog?
To: cauldwell.thomas@gmail.com, barebox@lists.infradead.org

Hello Thomas/Frederick,

On 1/20/20 12:33 PM, Frederick Gotham wrote:
> I'm developing an embedded Linux device, and I'm using Barebox as a
> part of Buildroot. The CPU is x64 with 4 cores, and it has an Intel
> TCO watchdog timer.
> 
> The exact processor I'm using is the Intel Silver N5000, and the
> datasheet for it says:
> "TCO_TMR is the watchdog timer provided by the ACPI block. It is used
> by an OS monitor for OS crashes."
> 
> When I boot up Barebox, it does not have the file "/dev/watchdog".
> I've tried a few different things but I just simply can't get Barebox
> to recognise the Intel watchdog timer.
Upstream barebox has no iTCO driver.
> Ideally I would like to have the watchdog timer start running at Power
> On, however my current BIOS  hasn't got any watchdog settings, and so
> until I get a new BIOS (which might never happen), I have to start the
> watchdog timer from within Barebox in order to get the device to
> reboot if the Linux kernel freezes while it's loading.
Ok.
> At this stage I think I might actually have to write assembler to
> issue instructions to the CPU to start the Watchdog timer. I have
> looked this up and it's definitely not straight-forward, e.g.
> interfacing with the ACPI block and its registers... I would be pretty
> much writing a device driver.
Yes, it needs a device driver. All the assembly you need is wrapped
in macros though, so you can write it completely in C, like nearly
all other drivers.
> Anyone got any ideas?
Check out my iTCO driver here:
https://github.com/a3f/barebox/tree/itco

I haven't posted it for upstream inclusion yet, because I don't have
a suitable target to test it on. In QEMU, it works, but the NO_REBOOT bit
that controls system restart doesn't work yet and I haven't yet managed
to find the time to debug it (or the project that needs it).

It doesn't use direct IO ports/IO memory access, but instead uses the PCI
Device I/O routines provided by EFI. The IO memory writes to enable the
NO_REBOOT give me an INVALID_PARAMETER error under QEMU.

Only two variants of the iTCO are supported. You can port support for your
variant from the Linux kernel code. It should be straight forward to port.

Note that you shouldn't use {read,write,out}[lwb], but the wrappers with
itco_ in front.

Happy Hacking,
Ahmad

> 
> I really need my device to reboot if the Linux kernel freezes while loading.
> 
> Frederick
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
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
