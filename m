Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bw0-f49.google.com ([209.85.214.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qcfef-0007Z3-69
	for barebox@lists.infradead.org; Fri, 01 Jul 2011 15:29:18 +0000
Received: by bwf12 with SMTP id 12so3645437bwf.36
	for <barebox@lists.infradead.org>; Fri, 01 Jul 2011 08:29:12 -0700 (PDT)
Date: Fri, 1 Jul 2011 19:29:09 +0400
From: antonynpavlov <antonynpavlov@gmail.com>
Message-Id: <20110701192909.ab9b39c1.antonynpavlov@gmail.com>
In-Reply-To: <20110701002815.GC14408@game.jcrosoft.org>
References: <1309426364-22124-1-git-send-email-antonynpavlov@gmail.com>
	<20110701002815.GC14408@game.jcrosoft.org>
Mime-Version: 1.0
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
Subject: Re: [PATCH 1/3 v3] Add MIPS arch support to barebox
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org


On Fri, 1 Jul 2011 02:28:15 +0200
Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com> wrote:

> > +
> > +	.set noreorder
> > +        .text
> > +	.section ".text_bare_init"
> > +        .globl _start
> > +	.align 4
> > +
> > +_start:
> here the EXPORT

EXPORT(_start)? Ok.

> IIRC we will need to preserve ra for NMI case

How this preserved value can be used?

We have no need to preserve ra because we have no full-grown exception handlers.

> > +	/* Compute _start load address */
> > +	bal	compute_load_address
> > +	 nop
> > +
> > +compute_load_address:
> why don't you use the relocate from Shinya-san?

Because my memory usage is differ.
I will try to explain my view on the memory usage in a separate letter.

Shinya-san's memory usage:

  CONFIG_TEXT_BASE=0x9fc00000
  _start link address = CONFIG_TEXT_BASE

Let's use 32-bit CPU, CONFIG_64BIT is not set.

The MIPS cpu reset entry point is 0xbfc00000 (KSEG1, unmapped and
uncached region).
So code after _start label run from 0xbfc00000.

Let's see Shinya-san's code
---- Shinya-san's code start (arch/mips/cpu/start.S) ----
	setup_c0_status_reset

	/*
	 * Config: K0 should be set to the desired Cache Coherency
	 * Algorithm (CCA) prior to accessing Kseg0.
	 */
	mfc0	t0, CP0_CONFIG
	/* T.B.D. */
	mtc0	t0, CP0_CONFIG

	/*
	 * Config: (4KEm and 4KEp cores only) KU and K23 should be set to
	 * the desired CCA for USeg/KUSeg and KSeg2/3 respectively prior to
	 * accessing those regions.
	 */
	mfc0	t0, CP0_CONFIG
	/* T.B.D. */
	mtc0	t0, CP0_CONFIG
---- Shinya-san's code end ----

does this code initialise KSEG0 cache mode?
does this code change CP0_CONFIG at all?
My answer is "no".

But bellow, you can see switching to KSEG0 (label 1f linked to 0x9fc00xxx) ...

---- Shinya-san's code start (arch/mips/cpu/start.S) ----
	/* Switch to CKSEG0 segment */
	la	t0, 1f
	/* T.B.D. -- Convert an addree of the label '1f' into CKSEG0 */
	jr	t0

1:
---- Shinya-san's code end ----

Let's see relocate code:
---- Shinya-san's code start (arch/mips/cpu/start.S) ----
relocate:
	ADR	t0, _start, t1			# t0 <- current position of code
	PTR_LI	t1, TEXT_BASE
	beq	t0, t1, stack_setup
	 nop
---- Shinya-san's code end ----

This code try to check if relocation needs. It try to compute _start <<current>>
address.

But
  * _start link address is KSEG0 address 0x9fc00000;
  * we have already switched to KSEG0, so _start <<current>> address
is 0x9fc00000 too.

So we __always__ skip copy_loop and go to stack_setup.

But ...
imagine that t0 != t1.

9fc00000 may be KSEG0 address for boot ROM (flash chip) how we can
relocate to ROM?

Running from 0x9fc00000 (even with cache) may be bad idea, because flash may be
connected via narrow and slow bus. barebox must run from cached RAM.

For simplification I use uncached KSEG1 region for barebox, so
I can skip all cache business. But it is temporary measure.

Let's see the copy_loop:
---- Shinya-san's code start (arch/mips/cpu/start.S) ----
copy_loop:
	LONG_L		t4, LONGSIZE*0(t0)	# copy from source address [t0]
	LONG_L		t5, LONGSIZE*1(t0)
	LONG_L		t6, LONGSIZE*2(t0)
	LONG_L		t7, LONGSIZE*3(t0)
	LONG_S		t4, LONGSIZE*0(t1)	# copy fo target address [t1]
	LONG_S		t5, LONGSIZE*1(t1)
	LONG_S		t6, LONGSIZE*2(t1)
	LONG_S		t7, LONGSIZE*3(t1)
	PTR_ADDI	t0, LONGSIZE
	PTR_SUBU	t3, t0, t2
	blez		t3, copy_loop
	 nop
---- Shinya-san's code end ----
Shinya-san use effective unrolled loop. Very good for pipelined CPU.

Every loop this code copy 4 portions of memory.
The size of a portion may be 4 or 8 bytes (depends on cpu type).

But, look here:
	PTR_ADDI	t0, LONGSIZE

This will increase the source address counter (t0) by size of
the only one portion, but __we copy 4 portions__!

Shinya-san's code is very unified code based on Linux macros.
The Linux macros make possible to write code for running
on very different MIPS CPU (e.g. 32-bit or 64-bit).
The macros code has a long history. It was tested many times
in very many different situations. It is proven.
The macros has need of tricky and complex header files.

But today barebox run on only one 32bit emulated CPU.
It has no need of hairy header files.

On the other hand, I can unroll my loop.
I can use Shinya-san's ADR macro instruction.
ADR macro is valuable. My code use assumption about 64K-alignment of
barebox image in ROM. It's true in most cases. Many flash chips
used to store boot code have 64K sector size (or even more).
But ADR macro is more flexible solution.

> > +clear_bss:
> > +	la	t0, __bss_start
> > +	sw	zero, (t0)
> > +	la	t1, _end - 4
> > +1:
> > +	addiu	t0, 4
> > +	sw	zero, (t0)
> > +	bne	t0, t1, 1b
> > +	 nop
> > +
> > +stack_setup:
> his stack setup is more clean
> > +	la	sp, STACK_BASE + STACK_SIZE
> > +	addiu	sp, -32			# init stack pointer
> > +
> > +	la	v0, start_barebox
> > +        jal     v0
> > +	 nop
> > +
> > +	/* No return */
> > +

But I have already used Shinya-san's code!

Here is Shinya-san's code.

---- Shinya-san's code start (arch/mips/cpu/start.) ----
stack_setup:
	PTR_LA		t0, __bss_start		# clear .bss
	LONG_S		zero, (t0)
	PTR_LA		t1, _end - LONGSIZE
1:
	PTR_ADDIU	t0, LONGSIZE
	LONG_S		zero, (t0)
	bne		t0, t1, 1b
	 nop

	/* Set the SP */
	PTR_LI		sp, STACK_BASE + STACK_SIZE
	PTR_SUB		sp, 4 * SZREG		# init stack pointer

	j		start_barebox
	END(barebox_entry)
---- Shinya-san's code end ----

Shinya-san uses macros. This is the main difference.

I think that where is no place for such macros in the initial mips support
because there is no need of them.

We can add 64bit CPU support and add macros in the future.

--
Best regards,
  Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
