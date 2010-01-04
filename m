Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NRljg-000568-2c
	for barebox@lists.infradead.org; Mon, 04 Jan 2010 12:08:37 +0000
Date: Mon, 4 Jan 2010 13:07:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100104120758.GC4976@pengutronix.de>
References: <20100101194822.GR5093@darwin> <4B3E5CCD.60400@eukrea.com>
	<20100101214826.GS5093@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100101214826.GS5093@darwin>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: confusion about relocation (ARM)
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

On Fri, Jan 01, 2010 at 10:48:26PM +0100, Matthias Kaehlcke wrote:
> hi eric,
> =

> thanks for your reply
> =

> El Fri, Jan 01, 2010 at 09:36:29PM +0100 Eric B=E9nard ha dit:
> =

> > Le 01/01/2010 20:48, Matthias Kaehlcke a =E9crit :
> >> a comment in start_barebox() says 'We are running from RAM now', so i
> >> deduced SDRAM must work. but after having a look at start-arm.S i'm a
> >> little bit confused. as far as i understand the barebox code is copied
> >> to RAM in copy_loop(). what i don't see is where the program counter
> >> is set to the address in RAM?
> >>
> > in arch/arm/cpu/start-arm.S @ line 245 :
> >         ldr     pc, _start_armboot
> =

> i saw this line, but i don't understand how it comes that
> the address at _start_armboot points to RAM and not to the flash.

When your barebox image is linked to RAM (that is 0x05700000 in your
case) _start_armboot is in RAM, too.

> =

> another question: how does ARCH_TEXT_BASE fit in here? i defined it as
> 0x05700000, but in the barebox image _TEXT_BASE is 0x00000000

Have a look at barebox.S, it should look like:

barebox:     file format elf32-littlearm


Disassembly of section .text:

87f00000 <_start>:
87f00000:	ea000014 	b	87f00058 <reset>
87f00004:	e59ff014 	ldr	pc, [pc, #20]	; 87f00020<_end+0xfffe07c4>
87f00008:	e59ff014 	ldr	pc, [pc, #20]	; 87f00024<_end+0xfffe07c8>
87f0000c:	e59ff014 	ldr	pc, [pc, #20]	; 87f00028<_end+0xfffe07cc>
87f00010:	e59ff014 	ldr	pc, [pc, #20]	; 87f0002c<_end+0xfffe07d0>
87f00014:	e59ff014 	ldr	pc, [pc, #20]	; 87f00030<_end+0xfffe07d4>
87f00018:	e59ff014 	ldr	pc, [pc, #20]	; 87f00034<_end+0xfffe07d8>
87f0001c:	e59ff014 	ldr	pc, [pc, #20]	; 87f00038<_end+0xfffe07dc>

87f00020 <_undefined_instruction>:
87f00020:	87f14a20 	.word	0x87f14a20

87f00024 <_software_interrupt>:
87f00024:	87f14a80 	.word	0x87f14a80

87f00028 <_prefetch_abort>:
87f00028:	87f14ae0 	.word	0x87f14ae0

87f0002c <_data_abort>:
87f0002c:	87f14b40 	.word	0x87f14b40

87f00030 <_not_used>:
87f00030:	87f14ba0 	.word	0x87f14ba0

87f00034 <_irq>:
87f00034:	87f14c00 	.word	0x87f14c00

87f00038 <_fiq>:
87f00038:	87f14c60 	.word	0x87f14c60
87f0003c:	deadbeef 	.word	0xdeadbeef

87f00040 <_barebox_start>:
87f00040:	87f00000 	.word	0x87f00000

87f00044 <_bss_start>:
87f00044:	87f1a908 	.word	0x87f1a908

87f00048 <_bss_end>:
87f00048:	87f1f85c 	.word	0x87f1f85c

87f0004c <_TEXT_BASE>:
87f0004c:	87f00000 	.word	0x87f00000

87f00050 <_MALLOC_BASE>:
87f00050:	87b00000 	.word	0x87b00000

(With 87fxxxx replaced with 0570xxxx of course)

Since EP93xx is not in mainline maybe you can provide us your patches
and I think we should be able to help you.

Regards
  Sascha

-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
