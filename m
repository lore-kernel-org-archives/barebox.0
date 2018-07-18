Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x241.google.com ([2607:f8b0:4001:c0b::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ffsVw-0003fs-Gr
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 19:53:33 +0000
Received: by mail-it0-x241.google.com with SMTP id h2-v6so5885362itj.1
 for <barebox@lists.infradead.org>; Wed, 18 Jul 2018 12:53:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAPPP46SniSuaZPfHGgb3YyvwDsW2jz6UwXLaNP5XL1PbF8_eWg@mail.gmail.com>
 <20180718140321.GA28539@mail.gnudd.com>
 <CAPPP46RVU698Uo_Ej2O8N7HETKRGG6aZDkpFA69Ox+tR3DdcGw@mail.gmail.com>
In-Reply-To: <CAPPP46RVU698Uo_Ej2O8N7HETKRGG6aZDkpFA69Ox+tR3DdcGw@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 18 Jul 2018 12:53:09 -0700
Message-ID: <CAHQ1cqH0YLC7C70gB2retS0TYusWhTavnV=+X4O-NjXDpV08-w@mail.gmail.com>
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
Subject: Re: qemu and barebox
To: giuseppe.levi@gmail.com
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Jul 18, 2018 at 11:51 AM Giuseppe Levi <giuseppe.levi@gmail.com> wrote:
>
> Ok tried with  CROSS_COMPILE=arm-linux-gnueabi- this should be 32bit arm
> then: qemu-system-arm -m 256M -machine virt -display none  -serial
> stdio -kernel barebox
>
> hangs..... any idea ? Should I use a different machine ?
>

NOTE: All of the below pertains to upstream QEMU

You are running QEMU emulating "mach-virt", which is a special generic
ARM machine in QEMU against a Barebox built for AT91. Last time I
checked former can only be configured to have Cortex-A15 (ARMv7), A53
or A57(ARMv8) as a CPU, whereas the latter is ARM9 (ARMv5), not to
mention that memory map layout for all of the peripherals _and_ type
of IP blocks used is very different. Unless I am getting something
very wrong, I'd be very much surprised if it actually worked for you.

As for using a different machine, I don't think that would help.
AFAIK, what you are trying to do is not currently supported.

> It would be very complex to create a White Rabbit virtual machine ?
> (HW description is open)

Not sure if I'd say it would be "complex", but time consuming for
sure. It took me a couple of weeks of work to add enough i.MX7 support
to QEMU for it would be able to boot stock Linux and I had a headstart
because QEMU already supported i.MX6 when I started. I haven't looked
at QEMU tree for probably 4 months, so my knowledge is a bit outdated,
but AFAIK, while ARM9 CPU emulation is availible, there's no AT91 SoC
specific IP blocks emulation that it supports. So, at a bare minimum,
just to see some serial in QEMU, you are looking at implementing your
AT91 machine with its memory map, UART IP block emulation plus any
peripherals that have to be emulated to "fool" Barebox into booting.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
