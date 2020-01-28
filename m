Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwQa6-00065S-VK
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 13:07:04 +0000
Received: by mail-lf1-x142.google.com with SMTP id n25so9039340lfl.0
 for <barebox@lists.infradead.org>; Tue, 28 Jan 2020 05:07:01 -0800 (PST)
Date: Tue, 28 Jan 2020 16:06:57 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20200128130656.GB25105@localhost.localdomain>
References: <20200128092832.18615-1-o.rempel@pengutronix.de>
 <20200128145513.aae1244ee8e7faf94d661640@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200128145513.aae1244ee8e7faf94d661640@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v1] MIPS: remove .bss to __rel_start overlay
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Oleksij Rempel <o.rempel@pengutronix.de>, barebox@lists.infradead.org

On Tue, Jan 28, 2020 at 02:55:13PM +0300, Antony Pavlov wrote:
> On Tue, 28 Jan 2020 10:28:32 +0100
> Oleksij Rempel <o.rempel@pengutronix.de> wrote:
> =

> Hi!
> =

> Looks like this patch has some undocummented side effects
> (or in other words, it makes undocummented fixups).
> =

> I have tested this patch on qemu-malta with current master,
> ee8960aec018df2de ("ARM: imx6: properly check for IPU presence").
> It works fine: memtest works, iomem output looks good.
> =

> But the patch fixes several issues and commit message does not contain
> any information about it.
> =

> I rebuild current master with qemu-malta_defconfig and MMU enabled.
> =

> I used this qemu cmdline to enable qemu monitor:
> =

> qemu-system-mips -nodefaults -M malta -m 256 -nographic -bios barebox-fla=
sh-image
>    -net user -net nic,model=3Drtl8139 -serial mon:stdio
> =

> With '-serial mon:stdio' one can invoke qemu monitor with "ctrl-a c" keyp=
ress sequence.
> =

> So I tried 'info registers' qemu monitor command after barebox startup:
> =

> Hit any to stop autoboot:    3
> barebox@qemu malta:/ =

> barebox@qemu malta:/ =

> barebox@qemu malta:/ iomem
> 0x00000000 - 0xffffffff (size 0x00000000) iomem
>   0x180003f8 - 0x180003ff (size 0x00000008) 180003f8.serial@180003f8.of
>   0x1e000000 - 0x1e3fffff (size 0x00400000) 1e000000.flash@1e000000.of
>   0x1f000900 - 0x1f00093f (size 0x00000040) 1f000900.serial@1f000900.of
>   0x1f000b00 - 0x1f000b1f (size 0x00000020) 1f000b00.gpio@1f000b00.of
>   0x80000000 - 0x8fffffff (size 0x10000000) kseg0_ram0
> barebox@qemu malta:/ QEMU 4.2.0 monitor - type 'help' for more information
> (qemu) info registers =

> pc=3D0xa081232c HI=3D0x00000026 LO=3D0x20000000 ds 0090 a081232c 1
> GPR00: r0 00000000 at 00000000 v0 b80003f8 v1 00000000
> GPR04: a0 a0408668 a1 b80003fd a2 b80003f8 a3 ffffffff
> GPR08: t0 00000001 t1 00000000 t2 0000005a t3 00000023
> GPR12: t4 00000000 t5 00010000 t6 00000040 t7 00000010
> GPR16: s0 a0408668 s1 a085cd20 s2 a0860000 s3 a0860000
> GPR20: s4 a0860000 s5 00000400 s6 a08613c0 s7 00000001
> GPR24: t8 00000008 t9 a0812340 k0 00400000 k1 fffffffa
> GPR28: gp 00000000 sp 8fb8fd10 s8 ffffffff ra a0812420
> CP0 Status  0x00000000 Cause   0x00000400 EPC    0x00000000
>     Config0 0x80008482 Config1 0x9e190c8f LLAddr 0x0000000000000000
>     Config2 0x80000000 Config3 0x00000000
>     Config4 0x00000000 Config5 0x00000000
> (qemu) quit
> =

> So I see several issues in current master at once:
> =

>   * iomem output has no information on sdram regions, so memtest is unusa=
ble;
>   * pc=3D0xa081232c, relocation does not work, barebox is located with 8M=
 offset
>     from start of RAM. The board has 256M and relocation routine
>     should move barebox code much higher;
>   * pc=3D0xa081232c, so barebox code works from KSEG1 not from KSEG0 as M=
MU=3Dy option implies.
> =

> Your patch fixes all these symptoms at ones however the commit message
> says nothing about them.

I've tested the patch, everything looks right now:

	barebox@qemu malta:/ iomem
	0x00000000 - 0xffffffff (size 0x00000000) iomem
	  0x180003f8 - 0x180003ff (size 0x00000008) 180003f8.serial@180003f8.of
	  0x1e000000 - 0x1e3fffff (size 0x00400000) 1e000000.flash@1e000000.of
	  0x1f000900 - 0x1f00093f (size 0x00000040) 1f000900.serial@1f000900.of
	  0x1f000b00 - 0x1f000b1f (size 0x00000020) 1f000b00.gpio@1f000b00.of
	  0x80000000 - 0x8fffffff (size 0x10000000) kseg0_ram0
	    0x8fb89000 - 0x8fb8ffff (size 0x00007000) stack
	    0x8fb90000 - 0x8ff8ffff (size 0x00400000) malloc space
	    0x8ff90000 - 0x8ffeae9f (size 0x0005aea0) barebox
	    0x8ffeaea0 - 0x8ffefadf (size 0x00004c40) barebox data
	    0x8fff7ae0 - 0x8fffbbdf (size 0x00004100) bss
	barebox@qemu malta:/ whereami
	code   @ 8ffb9bcc (8ffb9bc0)
	data   @ 8ffef3c0
	bss    @ 8fff9ae0
	heap   @ 8fbb9518
	stack  @ 8fb8fd50
	barebox@qemu malta:/ =


However I have to enable CONFIG_MMU after `make qemu-malta_defconfig`, or I=
 get =

`ERROR: Error: Cannot request SDRAM region for stack`, and no barebox memor=
y =

areas in `iomem` output.  CONFIG_MMU seems to be enabled for ath79 only:

	$ git grep CONFIG_MMU arch/mips/configs/
	arch/mips/configs/ath79_defconfig:CONFIG_MMU=3Dy
	$

Regards,
Peter


> =

> > .bss __rel_start (OVERLAY) was used to optimize RAM size used by
> > barebox. Since .bss and __rel_start overlap, we should clear bss only
> > after __rel_start was used.
> > =

> > There is a choice of moving .bss clear sequence after __rel_start or
> > remove this optimization. Since the use of this optimization is minimal
> > and danger to trap in to similar issue is still high, i prefer to remove
> > this optimization.
> > =

> > Fixes: 1e5aef61fc6a444 ("MIPS: reloc: init bss and cpu")
> > Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> > ---
> >  arch/mips/lib/barebox.lds.S | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > =

> > diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
> > index 693a778980..c954df41f3 100644
> > --- a/arch/mips/lib/barebox.lds.S
> > +++ b/arch/mips/lib/barebox.lds.S
> > @@ -59,7 +59,7 @@ SECTIONS
> >  =

> >  	_end =3D .;
> >  =

> > -	.bss __rel_start (OVERLAY) : {
> > +	.bss : {
> >  		__bss_start =3D .;
> >  		*(.sbss.*)
> >  		*(.bss.*)
> > -- =

> > 2.25.0
> > =

> =

> =

> -- =

> Best regards,
> =A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
