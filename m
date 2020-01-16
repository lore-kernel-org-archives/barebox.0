Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is1MK-0005dp-8F
 for barebox@lists.infradead.org; Thu, 16 Jan 2020 09:22:40 +0000
Date: Thu, 16 Jan 2020 10:22:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200116092234.tbsesmtu7s7dwxp6@pengutronix.de>
References: <20200115102650.11739-1-cleger@kalray.eu>
 <20200116082547.l6ba2wcsrne7mozb@pengutronix.de>
 <1952699039.12511906.1579164821437.JavaMail.zimbra@kalray.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1952699039.12511906.1579164821437.JavaMail.zimbra@kalray.eu>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/5] Add support for Kalray k1c core
To: =?iso-8859-15?Q?Cl=E9ment?= Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Jan 16, 2020 at 09:53:41AM +0100, Cl=E9ment Leger wrote:
> Hi Sasha
> =

> ----- On 16 Jan, 2020, at 09:25, Sascha Hauer s.hauer@pengutronix.de wrot=
e:
> =

> > Hi Clement,
> > =

> > On Wed, Jan 15, 2020 at 11:26:45AM +0100, Clement Leger wrote:
> >> Kalray k1c core is embedded in Kalray Coolidge SoC. This core has the
> >> following features:
> >>  - 32/64 bits
> >>  - 6-issue VLIW architecture
> >>  - 64 x 64bits general purpose registers
> >>  - SIMD instructions
> >>  - little-endian
> >> =

> >> This port is a 64 bits one and allows to boot up to a barebox prompt o=
n a k200
> >> board. k1c support for clocksource and watchdog is also part of this p=
ort.
> >> =

> >> In order to build a usable toolchain, build scripts are provided at the
> >> following address: https://github.com/kalray/build-scripts.
> >> =

> >> Kalray uses FOSS which is available at https://github.com/kalray
> >> =

> >> Clement Leger (5):
> >>   k1c: Initial Kalray Coolidge (k1c) architecture support
> >>   k1c: Add processor definitions
> >>   k1c: Add support for device tree
> >>   clocksource: k1c: Add k1c clocksource support
> >>   watchdog: k1c: Add k1c watchdog support
> > =

> > From a first look this is all pretty straight forward, looks good ;)
> > =

> > barebox is entered at 0x0. According to the linker script and the device
> > tree you have 4MiB of SRAM there, right?
> =

> Indeed, you are right, currently, with this setup the processor boots
> at address 0x0.
> Currently, this is used since the JTAG loader can only start an elf
> at address 0 (temporary limitation). The FSBL (First Stage boot loader)
> can however load the elf file at any address.
> =

> I have a patch to locate all the barebox code in SDRAM which is used
> by the FSBL (see below) to load barebox in SDRAM.
> =

> I can probably contribute this version if you prefer. Moreover, this will
> be the final usage so better get it ok right now.
> =

> For your information about SoC memory map, the SDRAM is located at
> 0x100000000 and span on 64G, Additionally, 4G are mirrored at
> 0x80000000 for 32 bits compatibility.
> =

> > =

> > I don't see any SDRAM setup code in this series, nevertheless it is
> > used. How is SDRAM setup done? Is it done in ROM or is it some board
> > specific binary that runs before barebox?
> =

> This is done using ROM code which runs before barebox. Boot flow is the
> following:
> - Processor boots in NOR SPI (XIP)
> - Execute ROM FSBL (First Stage Bootloader) which initialize needed
>   peripherals (DDR, PCIe, etc)
> - Load SSBL (second stage bootloader) which is barebox ELF file in our ca=
se.
>  - .dtb ELF section is patched by this bootloader using the device tree
>    flashed into the board SPI NOR.
> - Then jumps to barebox.
> =

> So the version I sent you is a bit different since it allow to have a
> builtin DTB. I wanted to be more standard with existing architecture.
> =

> In our version, we have an empty .dtb section (which is of fixed size 24K=
).
> And the tools to load elf files (either the FSBL or JTAG tools) are
> flashing the right dtb (either from flash for FSBL or by board detection
> with JTAG) into the .dtb section.
> =

> Tell me if you want me to stay the "standard" way with builtin DTB or if
> I can go with our way (fixed size .dtb section patched dynamically).

Well, patching the barebox binary with a device tree is not very
standard at all ;)

How about just passing the dtb as a pointer to barebox? You are probably
passing the device tree to linux as well, right? Maybe you can reuse
your Kernel calling convention for barebox? That way it wouldn't matter
if a started image is barebox or linux, it's both the same.

> =

> > =

> > Generally it seems that the board code is not very well separated from
> > the SoC code. Ideally barebox startup is like:
> > =

> > - The entry point is board specific
> > - in this board specific code everything is done that is needed for a
> >  properly running SoC with SDRAM enabled. This may require some helper
> >  functions to be shared between boards
> > - the entry code jumps to the generic code, passing a pointer to
> >  the device tree and if necessary SDRAM base/size
> > =

> > With this setup we can build barebox images for multiple boards (or
> > multiple configurations of boards) in one go. As a developer you can
> > test on multiple boards without having to recompile. For a compile
> > tester it reduces the number of configurations to build (faster
> > results). For an integrator it reduces the number of barebox receipts to
> > keep track of.  Overall it's worth implementing such a scheme.
> =

> Actually, due to the fact we use device tree from the scratch, we don't
> have any board specific code. Almost everything is probed from the device
> tree. So we always have only one barebox binary which runs on multiple =

> boards and the .dtb section is patched dynamically.

Ok, that's good news. With that your barebox startup is just fine and
you don't need any multi image builds, at least as long as you do not
integrate the first stage loader into barebox ;)

Regards,
 Sascha

-- =

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
