Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [217.70.178.89] (helo=slow3-v.mail.gandi.net)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NRujw-0008Dq-St
	for barebox@lists.infradead.org; Mon, 04 Jan 2010 21:45:33 +0000
Received: from relay1-d.mail.gandi.net (relay1-d.mail.gandi.net
	[217.70.183.193])
	by slow3-v.mail.gandi.net (Postfix) with ESMTP id E54CE87802
	for <barebox@lists.infradead.org>; Mon,  4 Jan 2010 22:15:25 +0100 (CET)
Date: Mon, 4 Jan 2010 22:10:37 +0100
From: Matthias Kaehlcke <matthias@kaehlcke.net>
Message-ID: <20100104211037.GD19855@darwin>
References: <20100101194822.GR5093@darwin> <4B3E5CCD.60400@eukrea.com>
	<20100101214826.GS5093@darwin>
	<20100104120758.GC4976@pengutronix.de>
	<20100104192153.GA30824@darwin>
	<20100104201311.GN17262@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100104201311.GN17262@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: confusion about relocation (ARM)
To: Robert Schwebel <r.schwebel@pengutronix.de>
Cc: barebox@lists.infradead.org

El Mon, Jan 04, 2010 at 09:13:11PM +0100 Robert Schwebel ha dit:

> On Mon, Jan 04, 2010 at 08:21:53PM +0100, Matthias Kaehlcke wrote:
> > after getting compiler errors when using a config file created from
> > scratch,
> =

> Can you reproduce that and send us the offending config file? Looks like
> a bug somewhere.

the first problem i faced was the Makefile complaining about an empty
default environment path, though CONFIG_DEFAULT_ENVIRONMENT is not defined:

# CONFIG_DEFAULT_ENVIRONMENT is not set

matze@darwin:/tmp/barebox-2009.12.0$ make
Makefile:1274: *** default environment path empty.  Stop.

this one was easy to work around by commenting the offending section
in the Makefile

reproducing it is as easy as "make ARCH=3Dsandbox menuconfig;
<exit_and_save>; make" from a clean environment

i wasn't able to solve or work around the next one:

make[1]: `arch/arm/include/asm/mach-types.h' is up to date.
  CHK     include/linux/version.h
  CHK     include/linux/utsrelease.h
  SYMLINK include/config.h -> board/at91sam9260ek/config.h
  CC      scripts/mod/empty.o
  MKELF   scripts/mod/elfconfig.h
  HOSTCC  scripts/mod/modpost.o
  HOSTCC  scripts/mod/sumversion.o
  HOSTLD  scripts/mod/modpost
  CC      /tmp/barebox-2009.12.0/scripts/mod/empty.o
  CC      /tmp/barebox-2009.12.0/scripts/mod/modpost.o
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:14:19: error: ctype.h: No such=
 file or directory
In file included from /tmp/barebox-2009.12.0/scripts/mod/modpost.c:15:
/tmp/barebox-2009.12.0/scripts/mod/modpost.h:2:20: error: stdlib.h: No such=
 file or directory
/tmp/barebox-2009.12.0/scripts/mod/modpost.h:5:23: error: sys/types.h: No s=
uch file or directory
/tmp/barebox-2009.12.0/scripts/mod/modpost.h:6:22: error: sys/stat.h: No su=
ch file or directory
/tmp/barebox-2009.12.0/scripts/mod/modpost.h:7:22: error: sys/mman.h: No su=
ch file or directory
/tmp/barebox-2009.12.0/scripts/mod/modpost.h:9:20: error: unistd.h: No such=
 file or directory
/tmp/barebox-2009.12.0/scripts/mod/modpost.h:21:1: warning: "ELF_ST_BIND" r=
edefined
In file included from /tmp/barebox-2009.12.0/scripts/mod/modpost.h:10,
                 from /tmp/barebox-2009.12.0/scripts/mod/modpost.c:15:
include/elf.h:119:1: warning: this is the location of the previous definiti=
on
In file included from /tmp/barebox-2009.12.0/scripts/mod/modpost.c:15:
/tmp/barebox-2009.12.0/scripts/mod/modpost.h:22:1: warning: "ELF_ST_TYPE" r=
edefined
In file included from /tmp/barebox-2009.12.0/scripts/mod/modpost.h:10,
                 from /tmp/barebox-2009.12.0/scripts/mod/modpost.c:15:
include/elf.h:120:1: warning: this is the location of the previous definiti=
on
In file included from /tmp/barebox-2009.12.0/scripts/mod/modpost.c:15:
/tmp/barebox-2009.12.0/scripts/mod/modpost.h:122: error: expected specifier=
-qualifier-list before 'Elf32_Section'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'fatal':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:57: warning: implicit declarat=
ion of function 'vfprintf'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:60: warning: implicit declarat=
ion of function 'exit'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'new_module':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:125: warning: implicit declara=
tion of function 'malloc'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:125: warning: passing argument=
 1 of 'do_nofail' makes pointer from integer without a cast
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'alloc_symbol':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:184: warning: passing argument=
 1 of 'do_nofail' makes pointer from integer without a cast
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: At top level:
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:252: error: expected declarati=
on specifiers or '...' before 'Elf32_Section'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'export_from_sec':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:254: error: 'sec' undeclared (=
first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:254: error: (Each undeclared i=
dentifier is reported only once
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:254: error: for each function =
it appears in.)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:254: error: 'struct elf_info' =
has no member named 'export_sec'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:256: error: 'struct elf_info' =
has no member named 'export_unused_sec'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:258: error: 'struct elf_info' =
has no member named 'export_gpl_sec'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:260: error: 'struct elf_info' =
has no member named 'export_unused_gpl_sec'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:262: error: 'struct elf_info' =
has no member named 'export_gpl_future_sec'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'grab_file':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:307: error: storage size of 's=
t' isn't known
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:311: warning: implicit declara=
tion of function 'open'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:312: warning: implicit declara=
tion of function 'fstat'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:316: warning: implicit declara=
tion of function 'mmap'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:316: error: 'PROT_READ' undecl=
ared (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:316: error: 'PROT_WRITE' undec=
lared (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:316: error: 'MAP_PRIVATE' unde=
clared (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:316: warning: assignment makes=
 pointer from integer without a cast
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:317: warning: implicit declara=
tion of function 'close'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:319: error: 'MAP_FAILED' undec=
lared (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:307: warning: unused variable =
'st'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'get_next_line':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:339: warning: implicit declara=
tion of function 'isspace'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'release_file':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:361: warning: implicit declara=
tion of function 'munmap'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'parse_elf':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:373: warning: implicit declara=
tion of function 'perror'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:420: error: 'struct elf_info' =
has no member named 'modinfo'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:421: error: 'struct elf_info' =
has no member named 'modinfo_len'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:423: error: 'struct elf_info' =
has no member named 'export_sec'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:425: error: 'struct elf_info' =
has no member named 'export_unused_sec'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:427: error: 'struct elf_info' =
has no member named 'export_gpl_sec'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:429: error: 'struct elf_info' =
has no member named 'export_unused_gpl_sec'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:431: error: 'struct elf_info' =
has no member named 'export_gpl_future_sec'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:439: error: 'struct elf_info' =
has no member named 'strtab'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'handle_modversio=
ns':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:467: error: too many arguments=
 to function 'export_from_sec'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:483: warning: implicit declara=
tion of function 'ELF32_ST_BIND'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'find_elf_symbol':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:733: warning: implicit declara=
tion of function 'ELF32_ST_TYPE'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'is_valid_name':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:758: error: 'struct elf_info' =
has no member named 'strtab'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'warn_sec_mismatc=
h':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:837: error: 'struct elf_info' =
has no member named 'strtab'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:838: error: 'struct elf_info' =
has no member named 'strtab'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:843: error: 'struct elf_info' =
has no member named 'strtab'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:851: error: 'struct elf_info' =
has no member named 'strtab'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:852: error: 'struct elf_info' =
has no member named 'strtab'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:858: error: 'struct elf_info' =
has no member named 'strtab'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:864: error: 'struct elf_info' =
has no member named 'strtab'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'addend_386_rel':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:888: error: 'R_386_32' undecla=
red (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:891: error: 'R_386_PC32' undec=
lared (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'addend_mips_rel':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:927: error: 'R_MIPS_HI16' unde=
clared (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:931: error: 'R_MIPS_LO16' unde=
clared (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:934: error: 'R_MIPS_26' undecl=
ared (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:937: error: 'R_MIPS_32' undecl=
ared (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'check_sec_ref':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1039: error: 'EM_386' undeclar=
ed (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1047: error: 'EM_MIPS' undecla=
red (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'read_symbols':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1258: error: 'struct elf_info'=
 has no member named 'modinfo'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1258: error: 'struct elf_info'=
 has no member named 'modinfo_len'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1266: error: 'struct elf_info'=
 has no member named 'modinfo'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1266: error: 'struct elf_info'=
 has no member named 'modinfo_len'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1270: error: 'struct elf_info'=
 has no member named 'strtab'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1279: error: 'struct elf_info'=
 has no member named 'modinfo'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1279: error: 'struct elf_info'=
 has no member named 'modinfo_len'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1281: error: 'struct elf_info'=
 has no member named 'modinfo'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'buf_write':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1320: warning: implicit declar=
ation of function 'realloc'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1320: warning: assignment make=
s pointer from integer without a cast
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'write_if_changed=
':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1511: error: 'FILE' undeclared=
 (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1511: error: 'file' undeclared=
 (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1512: error: storage size of '=
st' isn't known
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1512: warning: ISO C90 forbids=
 mixed declarations and code
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1514: warning: implicit declar=
ation of function 'fopen'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1518: warning: implicit declar=
ation of function 'fileno'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1524: warning: passing argumen=
t 1 of 'do_nofail' makes pointer from integer without a cast
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1525: warning: implicit declar=
ation of function 'fread'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1531: warning: implicit declar=
ation of function 'free'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1532: warning: implicit declar=
ation of function 'fclose'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1545: warning: implicit declar=
ation of function 'fwrite'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1512: warning: unused variable=
 'st'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'read_dump':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1581: warning: implicit declar=
ation of function 'strtoul'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c: In function 'main':
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1645: warning: implicit declar=
ation of function 'getopt'
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1648: error: 'optarg' undeclar=
ed (first use in this function)
/tmp/barebox-2009.12.0/scripts/mod/modpost.c:1676: error: 'optind' undeclar=
ed (first use in this function)
make[1]: *** [/tmp/barebox-2009.12.0/scripts/mod/modpost.o] Error 1
make: *** [common] Error 2

to reproduce from a clean environment:

make ARCH=3Darm menuconfig
<exit_and_save>
make ARCH=3Darm CROSS_COMPILE=3D<your_prefix>

-- =

Matthias Kaehlcke
Embedded Linux Developer
Barcelona

    Yo soy como soy y t=FA eres como eres, construyamos un mundo donde yo
    pueda ser sin dejar de ser yo, donde t=FA puedas ser sin dejar de ser
    t=FA, y donde ni yo ni t=FA obliguemos al otro a ser como yo o como t=
=FA
                                                                 .''`.
    using free software / Debian GNU/Linux | http://debian.org  : :'  :
                                                                `. `'`
gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
