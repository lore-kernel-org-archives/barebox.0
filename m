Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1OqTEG-0001Gs-Vt
	for barebox@lists.infradead.org; Tue, 31 Aug 2010 15:58:35 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 31 Aug 2010 17:45:26 +0200
References: <4C7CD898.9040902@coresystems.de>
In-Reply-To: <4C7CD898.9040902@coresystems.de>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201008311745.27052.jbe@pengutronix.de>
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
Subject: Re: barebox on x86
To: barebox@lists.infradead.org

Hi Stefan,

Stefan Reinauer wrote:
> here's some initial work on getting barebox working on x86 (again?).
>
> The patch is very ugly, and it makes some assumptions on me using
> Darwin/Mac OS X to compile barebox.
> What kind of becomes clear though, is that there is no clear distinction
> between which set of headers are used for the user space utilities and
> which set of headers are used for the barebox binary. I think that's the
> reason why barebox features an include/linux directory which seems to
> duplicate about half of what Linux usually has in there, but more than
> barebox uses (or should use, ftm).
>
> With the attached patch I get as far as the linking stage.
>
> > i386-elf-ld -Map barebox.map -o barebox -T arch/x86/lib/barebox.lds
>
> --start-group common/built-in.o drivers/built-in.o commands/built-in.o
> lib/built-in.o net/built-in.o fs/built-in.o
> arch/x86/boards/x86_generic/built-in.o arch/x86/mach-i386/built-in.o
> arch/x86/lib/built-in.o arch/x86/boot/built-in.o --end-group
>
> When I define CONFIG_X86_HDBOOT
> I get:
>
> i386-elf-ld: barebox section `.initcall.8' will not fit in region `mbr'
> i386-elf-ld: section .initcall.8 loaded at
> [0000000000000400,000000000000040b] overlaps section .bootstrapping
> loaded at [0000000000000400,00000000000008e7]
> i386-elf-ld: region `mbr' overflowed by 12 bytes

-> MBR -> 16 Bit boot loader.

> If I choose "native", I get
>
> arch/x86/lib/barebox.lds:124: nonconstant expression for load base

The 'native' case is not finished yet. It does not use any 16 bit code nor 
BIOS calls. But need adaptions to get some vital information about the system 
(for example memory size).

> Since barebox is not really specialized in doing complex hardware
> initialization like it's needed on x86 machines, and coreboot is not
> really specialized in providing any kind of user interface I would like
> to work on making barebox available as a coreboot payload. For that I
> need to produce an ELF file that does no BIOS calls because coreboot is
> not a BIOS or UEFI but only does the most necessary hardware
> initialization on x86 systems.

The 'native' case is the correct direction to get it work with coreboot.

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
