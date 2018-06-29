Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x22d.google.com ([2607:f8b0:4001:c06::22d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fYhYM-0003u3-Qg
 for barebox@lists.infradead.org; Fri, 29 Jun 2018 00:46:24 +0000
Received: by mail-io0-x22d.google.com with SMTP id e13-v6so6946028iof.6
 for <barebox@lists.infradead.org>; Thu, 28 Jun 2018 17:46:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAD+NunZeq6S72tt2BKH-PYKTVPjVMyWG4f78uAdxfn0jazV3wA@mail.gmail.com>
In-Reply-To: <CAD+NunZeq6S72tt2BKH-PYKTVPjVMyWG4f78uAdxfn0jazV3wA@mail.gmail.com>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 28 Jun 2018 17:46:00 -0700
Message-ID: <CAHQ1cqGJ=-TJJGA=eJRgkFnZOUdxm0Ys-Wwrfqy99Oq1aWVT9Q@mail.gmail.com>
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
Subject: Re: Troubles running qemu64 target
To: ranquet.guillaume@gmail.com
Cc: Barebox List <barebox@lists.infradead.org>, =?UTF-8?Q?Rapha=C3=ABl_Poggi?= <poggi.raph@gmail.com>

Guillaume:

I haven't used QEMU ARM64 version of the code, but I have spent some
time on i.MX8M which is ARM64 as well. See my comments below.

On Thu, Jun 28, 2018 at 6:46 AM ranquet guillaume
<ranquet.guillaume@gmail.com> wrote:
>
> Hello.
>
> I'm pretty new to barebox and I'm having some troubles running the
> qemu64 target.
> to top it off, I'm also new to the ARM world... and this is my first
> attempt at looking at a bootloader...
>
> I'm having trouble porting some hardware to barebox... and while I'm
> waiting for a JTAG probe, I though I could have some fun with qemu64
> :)
>
> The boot stops pretty early in the flow. way before anything can be
> printed on the serial. I have attached gdb to the qemu-system.
> The "qemu-system" seems to be stuck when trying to execute an stp with
> the stack pointer as the destination.
>
> I'm having the feeling that I have a configuration issue because sp = 0x0
>
> x27            0x0      0
> x28            0x0      0
> x29            0x0      0
> x30            0x0      0
> sp             0x0      0x0
> pc             0x40000000       0x40000000 <start>
> cpsr           0x400003c5       1073742789
> fpsr           0x0      0
> fpcr           0x0      0
> (gdb) disassemble
> Dump of assembler code for function start:
> => 0x0000000040000000 <+0>:     b       0x40000048 <start+72>
>    0x0000000040000004 <+4>:     nop
>    0x0000000040000008 <+8>:     nop
>    0x000000004000000c <+12>:    nop
> ...
>   0x0000000040000048 <+72>:    b       0x40013444 <barebox_arm_reset_vector>
>
>
> then we are branching to <barebox_arm_reset_vector>
> Dump of assembler code for function barebox_arm_reset_vector:
> => 0x0000000040013444 <+0>:     stp     x29, x30, [sp, #-16]!
>    0x0000000040013448 <+4>:     mov     x29, sp

The above looks like barebox_arm_reset_vector's preamble to me, which
it would have since:

a) It is not declared as __naked

b) AFAIK, __naked is not supported on AArch64 version of GCC, so even
if it was it wouldn't help

>    0x000000004001344c <+8>:     bl      0x40000050 <arm_cpu_lowlevel_init>
>
> with sp still equals to 0x0.
>
> stepping from there seems to get me "stuck"...
> when interrupting gdb (Ctrl-C) and dumping the registers, I'm getting
> the feeling I'm out of barebox code with pc equals 0x200
>
> x29            0x0      0
> x30            0x0      0
> sp             0x0      0x0
> pc             0x200    0x200
> cpsr           0x3c5    965
> fpsr           0x0      0
>
>
> It's probably some kind of configuration issue...? though I see no
> code to set sp before that stp instruction.

IMHO this doesn't look like a configuration issue and I agree there's
no code to set SP up.

> I tried toying with the memory map, setting stack and text base
> addresses, but it doesn't seem to fix my issue.
> Or maybe it's okay to decrement sp while it's equal to 0x0?

AFAIK, it would be OK if underlying emulated hardware had any kind of
memory mapped at the end of address space (sp would wrap in that
case), but as far as I can tell QEMU ARM64 virt platform doesn't,
which I think is the reason you are seeing the result you are seeing.

> Any ideas? comments?

I am not sure about the proper way to resolve this, I'd be curious to
hear from Raphael (original author, CC'd in this reply) and how this
worked for him first. However you can very quickly verify/disprove
your bad SP value theory by doing:

set $sp=0xBFFFFFF0

before letting the processor hit those SP instructions when you step
through it and see if barebox runs fine after that.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
