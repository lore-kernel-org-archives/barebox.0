Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1av9go-0007uu-1p
 for barebox@lists.infradead.org; Tue, 26 Apr 2016 20:34:35 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Tue, 26 Apr 2016 20:34:10 +0000
Message-ID: <1461702905.9103.151.camel@rtred1test09.kymeta.local>
References: <1460506588.9103.26.camel@rtred1test09.kymeta.local>
 <CAHQ1cqH78JnvYEcRVWJX_s6aSDn_1L+nurtu0L5bofPyHkNLQQ@mail.gmail.com>
In-Reply-To: <CAHQ1cqH78JnvYEcRVWJX_s6aSDn_1L+nurtu0L5bofPyHkNLQQ@mail.gmail.com>
Content-Language: en-US
Content-ID: <B54FFE8BA0FD104BB6E47BD7BA3F1E75@kymetacorp.com>
MIME-Version: 1.0
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
Subject: Re: Barebox on small memory systems
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Tue, 2016-04-12 at 20:35 -0700, Andrey Smirnov wrote:
> > In order to get an image file out of flash and programmed into the FPGA,
> > it's useful to have a number of barebox drivers, like the MCI system,
> > partition table parsing, FAT filesystem, etc.  Basically getting the
> > full barebox (with a minimal set of drivers, e.g. no shell) running
> > without having SDRAM access.
> >
> > So can one run barebox in 256 Kb?
> 
> I was able to do it, although in a different, but IMHO comparable
> configuration. My use-case was running bare minimum Barebox _with_ the
> shell and UART driver, sans everything else out of IRAM (256kB) on
> i.MX6Q (the users wanted to be able to tweak DDR controller's
> configuration at runtime via BB console interface). If memory serves
> me well after system booted I had about 50kB or RAM to spare(although
> I don't know what the peak usage was during boot process)

I've done some trials now by booting a small barebox configured for
256kB from a real barebox.  I could get a shell-less non-relocatable
non-pbl barebox to work, with mci, fat, partition, uart, i2c, eeprom
drivers.  But with the simple shell I run out of heap space (116Kb of
heap) as the shell runs init scripts.

Found a few issues when trying to optimize barebox:

PBL without relocation doesn't work because the PBL and main barebox try
to link at the same TEXT_BASE value.

One can't specify a TEXT_BASE when using relocation.  barebox always
links at 0, even if you know it will usually be loaded at a certain
address.

socfpga relocates the PBL twice.  The board entry function does it and
then the code in start.c does it again.

> > A minimal config of a non-PBL non-relocatable barebox with the necessary
> > features is only about 54 Kb.  So that certainly fits.  But that doesn't
> > include stack, heap, bss, etc.  Can a stripped down barebox actually run
> > in 256 Kb and mount a FAT filesystem to get a next stage bootloader?
> 
> The image I was building was indeed a non-PBL non-relocatable variant,
> however I had to do three further modifications:
> 
> - Disable MMU, becuase just the page table alone in my case would take
> about 1MB or space

Thanks for the hint, I needed to do this too.  Even mapping just 1MB
takes a significant amount of space.  Also the MMU code appears to crash
if one tells it to map less than 1MB.

> In case of non-relocatable image device-tree blob should already be
> preloaded into memory as a part of Barebox binary upload, so there is
> no need to 'memcpy' it again

Why does the dtb ever need to be copied?  It looks to me like a
relocatable barebox will copy from _text to __bss_start to the
relocation address.  The compiled in dtb data will be that range.  So in
the relocation case, what's the point of the copying it a second time?

Seems like the only reason to copy it would be if it was an external dtb
image provided to barebox by another bootloader.  Is there anything that
can do this besides a PBL?
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
