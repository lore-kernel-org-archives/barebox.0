Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WXcEh-00069B-K7
 for barebox@lists.infradead.org; Tue, 08 Apr 2014 20:03:12 +0000
Date: Tue, 8 Apr 2014 22:02:48 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140408200248.GE27055@pengutronix.de>
References: <CAOpc7mEpS4sSB0f8uYhJZDRVyJFL8BYWccBOPsN-N82Jc6iB1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mEpS4sSB0f8uYhJZDRVyJFL8BYWccBOPsN-N82Jc6iB1w@mail.gmail.com>
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
Subject: Re: Confusion about memory layout
To: Holger Schurig <holgerschurig@gmail.com>
Cc: barebox@lists.infradead.org

Hi Holger,

On Tue, Apr 08, 2014 at 08:51:45AM +0200, Holger Schurig wrote:
> Hi,
> 
> I'm trying to get barebox running via usb-download. Unfortunately, the
> verify step failed (see log below). This made me think about my memory
> layout, but I'm a bit helpless here.
> 
> If I look at arch/arm/mach-imx/Kconfig, I see that several i.MX boards
> define different CONFIG_ARCH_TEXT_BASE. Why?
> 
> default 0x4fc00000 if MACH_MX6Q_ARM2
> default 0x4fc00000 if MACH_SABRELITE
> ... some other also, but look at this:
> default 0x17800000 if MACH_SABRESD
> 
> And why specify most x4fc0_0000 ?  Doesn't the physical memory map of
> DDR3 start at x1000_0000 or 0x8000_0000, depending on mapping ?

On i.MX6 SDRAM starts at 0x10000000. The above memory locations are near
the end of SDRAM of the corresponding board.
(Note CONFIG_ARCH_TEXT_BASE is only used if CONFIG_RELOCATABLE is not
set. With CONFIG_RELOCATABLE barebox will relocate itself near the end
of SDRAM automatically.)

> 
> 
> Similarly: the "loadaddr" statement in various *.imxcfg files are also
> different:
> 
> loadaddr 0x00907000
> loadaddr 0x10000000
> loadaddr 0x20000000

The loadaddr is where the ROM loads the binary. barebox will copy itself
to a suitable address during runtime, so the loadaddr doesn't really
matter. the suitable address is either CONFIG_ARCH_TEXT_BASE or near the
end of SDRAM, depending on CONFIG_RELOCATABLE. Most boards load
somewhere to SDRAM. The DMO board loads to SRAM because it does SDRAM setup
in code instead of the DCD header.

> 
> I'd have expected that all will be loaded at 0x1000_0000, the start of DDR RAM?
> 
> 00000400: 402000d1 10001000 00000000 00000000  00000000 10000400
> 00000000 00000000
> 10000400: 400000d1 10000000 00000000 00000000  00040000 10001000
> 00ff0000 00000000
> 
> 00000420: 10000000 0003d000 00000000 400803d2  040403cc 68400c02
> ffffffff 6c400c02
> 10000420: 10200000 00030400 00000000 40080000  040003cc 6840d000
> ff00ffff 6c4003d2

Does your SDRAM setup work? This looks like bitflips. Try using SRAM
(0x00907000) as loadaddr, do you get verify errors aswell? You might
have to disable options until the image fits into SRAM (256k - 0x7000).

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
