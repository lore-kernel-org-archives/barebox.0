Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TgDsi-0002Lr-6l
 for barebox@lists.infradead.org; Wed, 05 Dec 2012 12:15:17 +0000
Date: Wed, 5 Dec 2012 13:15:13 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121205121513.GG10369@pengutronix.de>
References: <1354622569-7673-1-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <1354622569-7673-2-git-send-email-enrico.scholz@sigma-chemnitz.de>
 <20121205104627.GD10369@pengutronix.de>
 <ly8v9c3f95.fsf@ensc-virt.intern.sigma-chemnitz.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <ly8v9c3f95.fsf@ensc-virt.intern.sigma-chemnitz.de>
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
Subject: Re: [PATCH 2/2] OMAP: disable unaligned access when building the IFT
To: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Cc: barebox@lists.infradead.org

On Wed, Dec 05, 2012 at 12:33:26PM +0100, Enrico Scholz wrote:
> Sascha Hauer <s.hauer@pengutronix.de> writes:
> 
> >>  config OMAP_BUILD_IFT
> >>  	prompt "build ift binary"
> >> +	select ARM_NOUNALIGNED
> >
> > This needs more investigation. Coupling this to OMAP_BUILD_IFT does
> > not seem to be correct. Unaligned accesses work for cached memory once
> > the MMU is enabled,
> 
> It depends on the type of accessed memory.  E.g.
> 
> OMAP4 SDRAM
> | :/ md -w 0x80000001+2
> | 80000001: 0000                                               ..

Haven't tested this on OMAP4, but on OMAP3 I get the same alignment trap
when the MMU is disabled, so SRAM is no different from SDRAM.

> 
> OMAP4 SRAM
> | :/ md -w 0x40300000+2
> | 40300000: 9001                                               
> | 
> | :/ md -w 0x40300001+2
> | alignment fault at address 0x40300001
> | pc : [<8f02a684>]    lr : [<8f02a654>]
> 
> I guess, the OMAP4 SRAM is strongly ordered memory which does not allow
> unaligned access.
> 
> Similar problems might arise when accessing device memory unaligned.
> But this should not be an issue because such operations are usually
> expressed explicitly with readX() + writeX() macros.

Yes, everything else is a bug.

> 
> 
> Coupling the -mno-unaligned-access to the TEXT_BASE and the used processor
> might be a better solution.

No, unaligned accesses are handled by the cache. They won't work when
the MMU is disabled, but barebox has to work with MMU disabled.

> But I have only a very limited overview about
> all the possible variants, so I decided to:
> 
> 1. make it configurable
> 
> 2. enable it for known cases (OMAP4 IFT is such a case because it is
>    usually executed in SRAM)
> 
> 
> > it won't work with MMU disabled though. 
> 
> no; unaligned access works on ARMv6+ without MMU too.

I can't confirm this:

i.MX53 (Cortex-A8):

barebox@Freescale i.MX53 LOCO:/ cpuinfo 
implementer: ARM
architecture: v7
cache: no cache
Control register: W P D L I DT IT U XP 
barebox@Freescale i.MX53 LOCO:/ md 0x70000001
<hangs>

OMAP3 beagle:

barebox@Texas Instrument's Beagle:/ cpuinfo 
implementer: ARM
architecture: v7
cache: no cache
Control register: W P D L Z I DT IT U XP 
barebox@Texas Instrument's Beagle:/ md 0x80000001
data abort
pc : [<87e1cf38>]    lr : [<87e1cf15>]
sp : 85dff8e0  ip : 00000000  fp : 00000000
r10: ffffffff  r9 : 00000000  r8 : 85e03a10
r7 : 00000004  r6 : 85e03a10  r5 : 80000001  r4 : 00000100
r3 : 00000020  r2 : 00000002  r1 : 00000004  r0 : 00000040

i.MX35 (ARM-V6):

barebox@Phytec phyCORE-i.MX35:/ cpuinfo 
implementer: ARM
architecture: v6
I-cache: 16384 bytes (linelen = 32)
D-cache: 16384 bytes (linelen = 32)
Control register: W P D L Z I RR DT IT FI U 
barebox@Phytec phyCORE-i.MX35:/ md 0x80000001
80000001: feea0000 feeaffff feeaffff feeaffff ................
80000011: feeaffff feeaffff feeaffff 62eaffff ...............b
80000021: 62657261 0000786f 0087e000 0000045d arebox......]...
80000031: 1fe10f30 d3e3c330 03e38330 10e129f0 0...0...0....)..
80000041: 8eee113f 05e3c33d 01e3c330 01e38335 ?...=...0...5...
80000051: 02e3833a 10e3c330 00ee013f 95e3a030 :...0...?...0...

On Armv6 this indeed works.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
