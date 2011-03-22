Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q1tjM-0003Ft-Le
	for barebox@lists.infradead.org; Tue, 22 Mar 2011 05:02:11 +0000
Received: by yxh35 with SMTP id 35so2944054yxh.36
	for <barebox@lists.infradead.org>; Mon, 21 Mar 2011 22:02:07 -0700 (PDT)
MIME-Version: 1.0
Date: Tue, 22 Mar 2011 01:02:06 -0400
Message-ID: <AANLkTime_ymhX6RZoyYnA6T-6EszDoXV67meqpyCtWic@mail.gmail.com>
From: Jon Ringle <jon@ringle.org>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============1001053337=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: scripts/mod/sumversion built by CC?
To: barebox@lists.infradead.org

--===============1001053337==
Content-Type: multipart/alternative; boundary=0016e646057c562efb049f0b25a3

--0016e646057c562efb049f0b25a3
Content-Type: text/plain; charset=ISO-8859-1

When I have CONFIG_DEFAULT_ENVIRONMENT=y and try to build barebox, I see
HOSTCC scripts/mod/sumversion.o
then later I see it trying to build with CC and fails.

I don't think that its supposed to try to build sumversion.o with the cross
compiler toolchain.

Jon

make -f Makefile ARCH=arm
CROSS_COMPILE=/opt/crosstool-ng-1.9.0/arm-1136j-eabi/gcc-4.4.5-newlib-1.18.0-binutils-2.20.1/bin/arm-1136j-eabi-
make[1]: Entering directory `/home/ringlej/git/barebox'
make[2]: `include/generated/mach-types.h' is up to date.
  CHK     include/generated/version.h
  CHK     include/generated/utsrelease.h
  SYMLINK include/config.h -> arch/arm/boards/isc3//config.h
  HOSTCC  scripts/mod/sumversion.o
  HOSTLD  scripts/mod/modpost
  CC      lib/ctype.o
  CC      lib/rbtree.o
  CC      lib/display_options.o
  CC      lib/string.o
  CC      lib/vsprintf.o
  CC      lib/div64.o
  CC      lib/misc.o
  CC      lib/driver.o
  CC      lib/bus.o
  CC      lib/parameter.o
  CC      lib/xfuncs.o
  CC      lib/getopt.o
  CC      lib/readkey.o
  CC      lib/kfifo.o
  CC      lib/libbb.o
  CC      lib/libgen.o
  CC      lib/stringlist.o
  CC      lib/recursive_action.o
  CC      lib/make_directory.o
  CC      lib/bzlib.o
  CC      lib/bzlib_crctable.o
  CC      lib/bzlib_decompress.o
  CC      lib/bzlib_huffman.o
  CC      lib/bzlib_randtable.o
  CC      lib/crc32.o
  CC      lib/readline.o
  CC      lib/glob.o
  CC      lib/notifier.o
  CC      lib/copy_file.o
  CC      lib/random.o
  CC      lib/show_progress.o
  CC      lib/process_escape_sequence.o
  LD      lib/built-in.o
  CC      fs/ramfs.o
  CC      fs/devfs.o
  CC      fs/fs.o
  LD      fs/built-in.o
  CC      /home/ringlej/git/barebox/fs/fs.o
  CC      /home/ringlej/git/barebox/fs/devfs.o
  CC      /home/ringlej/git/barebox/fs/ramfs.o
  CC      /home/ringlej/git/barebox/lib/rbtree.o
  CC      /home/ringlej/git/barebox/lib/libbb.o
  CC      /home/ringlej/git/barebox/lib/recursive_action.o
  CC      /home/ringlej/git/barebox/lib/libgen.o
  CC      /home/ringlej/git/barebox/lib/div64.o
  CC      /home/ringlej/git/barebox/lib/getopt.o
  CC      /home/ringlej/git/barebox/lib/notifier.o
  CC      /home/ringlej/git/barebox/lib/readline.o
  CC      /home/ringlej/git/barebox/lib/readline_simple.o
  CC      /home/ringlej/git/barebox/lib/bus.o
  CC      /home/ringlej/git/barebox/lib/readkey.o
  CC      /home/ringlej/git/barebox/lib/random.o
  CC      /home/ringlej/git/barebox/lib/bzlib.o
  CC      /home/ringlej/git/barebox/lib/kfifo.o
  CC      /home/ringlej/git/barebox/lib/stringlist.o
  CC      /home/ringlej/git/barebox/lib/ctype.o
  CC      /home/ringlej/git/barebox/lib/process_escape_sequence.o
  CC      /home/ringlej/git/barebox/lib/driver.o
  CC      /home/ringlej/git/barebox/lib/misc.o
  CC      /home/ringlej/git/barebox/lib/bzlib_crctable.o
  CC      /home/ringlej/git/barebox/lib/copy_file.o
  CC      /home/ringlej/git/barebox/lib/string.o
  CC      /home/ringlej/git/barebox/lib/bzlib_randtable.o
  CC      /home/ringlej/git/barebox/lib/glob.o
  CC      /home/ringlej/git/barebox/lib/vsprintf.o
  CC      /home/ringlej/git/barebox/lib/show_progress.o
  CC      /home/ringlej/git/barebox/lib/crc32.o
  CC      /home/ringlej/git/barebox/lib/make_directory.o
  CC      /home/ringlej/git/barebox/lib/bzlib_huffman.o
  CC      /home/ringlej/git/barebox/lib/parameter.o
  CC      /home/ringlej/git/barebox/lib/display_options.o
  CC      /home/ringlej/git/barebox/lib/bzlib_decompress.o
  CC      /home/ringlej/git/barebox/lib/xfuncs.o
  CC      /home/ringlej/git/barebox/scripts/mod/sumversion.o
/home/ringlej/git/barebox/scripts/mod/sumversion.c:1:24: error:
netinet/in.h: No such file or directory
/home/ringlej/git/barebox/scripts/mod/sumversion.c:5:20: error: stdint.h: No
such file or directory
/home/ringlej/git/barebox/scripts/mod/sumversion.c:7:19: error: ctype.h: No
such file or directory
/home/ringlej/git/barebox/scripts/mod/sumversion.c:10:20: error: limits.h:
No such file or directory
In file included from /home/ringlej/git/barebox/scripts/mod/sumversion.c:11:
/home/ringlej/git/barebox/scripts/mod/modpost.h:5:23: error: sys/types.h: No
such file or directory
/home/ringlej/git/barebox/scripts/mod/modpost.h:6:22: error: sys/stat.h: No
such file or directory
/home/ringlej/git/barebox/scripts/mod/modpost.h:7:22: error: sys/mman.h: No
such file or directory
/home/ringlej/git/barebox/scripts/mod/modpost.h:9:20: error: unistd.h: No
such file or directory
/home/ringlej/git/barebox/scripts/mod/modpost.h:21:1: warning: "ELF_ST_BIND"
redefined
In file included from /home/ringlej/git/barebox/scripts/mod/modpost.h:10,
                 from /home/ringlej/git/barebox/scripts/mod/sumversion.c:11:
include/elf.h:119:1: warning: this is the location of the previous
definition
In file included from /home/ringlej/git/barebox/scripts/mod/sumversion.c:11:
/home/ringlej/git/barebox/scripts/mod/modpost.h:22:1: warning: "ELF_ST_TYPE"
redefined
In file included from /home/ringlej/git/barebox/scripts/mod/modpost.h:10,
                 from /home/ringlej/git/barebox/scripts/mod/sumversion.c:11:
include/elf.h:120:1: warning: this is the location of the previous
definition
In file included from /home/ringlej/git/barebox/scripts/mod/sumversion.c:11:
/home/ringlej/git/barebox/scripts/mod/modpost.h:122: error: expected
specifier-qualifier-list before 'Elf32_Section'
/home/ringlej/git/barebox/scripts/mod/sumversion.c: In function
'le32_to_cpu_array':
/home/ringlej/git/barebox/scripts/mod/sumversion.c:75: warning: implicit
declaration of function 'ntohl'
/home/ringlej/git/barebox/scripts/mod/sumversion.c: In function
'cpu_to_le32_array':
/home/ringlej/git/barebox/scripts/mod/sumversion.c:83: warning: implicit
declaration of function 'htonl'
/home/ringlej/git/barebox/scripts/mod/sumversion.c: In function
'parse_file':
/home/ringlej/git/barebox/scripts/mod/sumversion.c:273: warning: implicit
declaration of function 'isspace'
/home/ringlej/git/barebox/scripts/mod/sumversion.c: In function
'parse_source_files':
/home/ringlej/git/barebox/scripts/mod/sumversion.c:303: warning: implicit
declaration of function 'malloc'
/home/ringlej/git/barebox/scripts/mod/sumversion.c:303: warning: passing
argument 1 of 'do_nofail' makes pointer from integer without a cast
/home/ringlej/git/barebox/scripts/mod/modpost.h:89: note: expected 'void *'
but argument is of type 'int'
/home/ringlej/git/barebox/scripts/mod/sumversion.c:314: warning: passing
argument 1 of 'do_nofail' makes pointer from integer without a cast
/home/ringlej/git/barebox/scripts/mod/modpost.h:89: note: expected 'void *'
but argument is of type 'int'
/home/ringlej/git/barebox/scripts/mod/sumversion.c:372: warning: implicit
declaration of function 'free'
/home/ringlej/git/barebox/scripts/mod/sumversion.c: In function
'get_src_version':
/home/ringlej/git/barebox/scripts/mod/sumversion.c:385: error: 'PATH_MAX'
undeclared (first use in this function)
/home/ringlej/git/barebox/scripts/mod/sumversion.c:385: error: (Each
undeclared identifier is reported only once
/home/ringlej/git/barebox/scripts/mod/sumversion.c:385: error: for each
function it appears in.)
/home/ringlej/git/barebox/scripts/mod/sumversion.c:386: warning: implicit
declaration of function 'getenv'
/home/ringlej/git/barebox/scripts/mod/sumversion.c:386: warning:
initialization makes pointer from integer without a cast
/home/ringlej/git/barebox/scripts/mod/sumversion.c:385: warning: unused
variable 'filelist'
/home/ringlej/git/barebox/scripts/mod/sumversion.c: In function
'write_version':
/home/ringlej/git/barebox/scripts/mod/sumversion.c:437: warning: implicit
declaration of function 'open'
/home/ringlej/git/barebox/scripts/mod/sumversion.c:444: warning: implicit
declaration of function 'lseek'
/home/ringlej/git/barebox/scripts/mod/sumversion.c:444: error: 'SEEK_SET'
undeclared (first use in this function)
/home/ringlej/git/barebox/scripts/mod/sumversion.c:450: warning: implicit
declaration of function 'write'
/home/ringlej/git/barebox/scripts/mod/sumversion.c:456: warning: implicit
declaration of function 'close'
make[2]: *** [/home/ringlej/git/barebox/scripts/mod/sumversion.o] Error 1
make[2]: *** Waiting for unfinished jobs....
make[1]: *** [common] Error 2
make[1]: Leaving directory `/home/ringlej/git/barebox'
make: *** [all] Error 2

--0016e646057c562efb049f0b25a3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

When I have CONFIG_DEFAULT_ENVIRONMENT=3Dy and try to build barebox, I see<=
div>HOSTCC scripts/mod/sumversion.o</div><div>then later I see it trying to=
 build with CC and fails.=A0</div><div><br></div><div>I don&#39;t think tha=
t its supposed to try to build sumversion.o with the cross compiler toolcha=
in.</div>
<div><br></div><div>Jon<br><div><br></div><div><div>make -f Makefile ARCH=
=3Darm CROSS_COMPILE=3D/opt/crosstool-ng-1.9.0/arm-1136j-eabi/gcc-4.4.5-new=
lib-1.18.0-binutils-2.20.1/bin/arm-1136j-eabi-=A0</div><div>make[1]: Enteri=
ng directory `/home/ringlej/git/barebox&#39;</div>
<div>make[2]: `include/generated/mach-types.h&#39; is up to date.</div><div=
>=A0=A0CHK =A0 =A0 include/generated/version.h</div><div>=A0=A0CHK =A0 =A0 =
include/generated/utsrelease.h</div><div>=A0=A0SYMLINK include/config.h -&g=
t; arch/arm/boards/isc3//config.h</div>
<div>=A0=A0HOSTCC =A0scripts/mod/sumversion.o</div><div>=A0=A0HOSTLD =A0scr=
ipts/mod/modpost</div><div>=A0=A0CC =A0 =A0 =A0lib/ctype.o</div><div>=A0=A0=
CC =A0 =A0 =A0lib/rbtree.o</div><div>=A0=A0CC =A0 =A0 =A0lib/display_option=
s.o</div><div>=A0=A0CC =A0 =A0 =A0lib/string.o</div>
<div>=A0=A0CC =A0 =A0 =A0lib/vsprintf.o</div><div>=A0=A0CC =A0 =A0 =A0lib/d=
iv64.o</div><div>=A0=A0CC =A0 =A0 =A0lib/misc.o</div><div>=A0=A0CC =A0 =A0 =
=A0lib/driver.o</div><div>=A0=A0CC =A0 =A0 =A0lib/bus.o</div><div>=A0=A0CC =
=A0 =A0 =A0lib/parameter.o</div><div>=A0=A0CC =A0 =A0 =A0lib/xfuncs.o</div>
<div>=A0=A0CC =A0 =A0 =A0lib/getopt.o</div><div>=A0=A0CC =A0 =A0 =A0lib/rea=
dkey.o</div><div>=A0=A0CC =A0 =A0 =A0lib/kfifo.o</div><div>=A0=A0CC =A0 =A0=
 =A0lib/libbb.o</div><div>=A0=A0CC =A0 =A0 =A0lib/libgen.o</div><div>=A0=A0=
CC =A0 =A0 =A0lib/stringlist.o</div><div>=A0=A0CC =A0 =A0 =A0lib/recursive_=
action.o</div>
<div>=A0=A0CC =A0 =A0 =A0lib/make_directory.o</div><div>=A0=A0CC =A0 =A0 =
=A0lib/bzlib.o</div><div>=A0=A0CC =A0 =A0 =A0lib/bzlib_crctable.o</div><div=
>=A0=A0CC =A0 =A0 =A0lib/bzlib_decompress.o</div><div>=A0=A0CC =A0 =A0 =A0l=
ib/bzlib_huffman.o</div><div>=A0=A0CC =A0 =A0 =A0lib/bzlib_randtable.o</div=
>
<div>=A0=A0CC =A0 =A0 =A0lib/crc32.o</div><div>=A0=A0CC =A0 =A0 =A0lib/read=
line.o</div><div>=A0=A0CC =A0 =A0 =A0lib/glob.o</div><div>=A0=A0CC =A0 =A0 =
=A0lib/notifier.o</div><div>=A0=A0CC =A0 =A0 =A0lib/copy_file.o</div><div>=
=A0=A0CC =A0 =A0 =A0lib/random.o</div><div>=A0=A0CC =A0 =A0 =A0lib/show_pro=
gress.o</div>
<div>=A0=A0CC =A0 =A0 =A0lib/process_escape_sequence.o</div><div>=A0=A0LD =
=A0 =A0 =A0lib/built-in.o</div><div>=A0=A0CC =A0 =A0 =A0fs/ramfs.o</div><di=
v>=A0=A0CC =A0 =A0 =A0fs/devfs.o</div><div>=A0=A0CC =A0 =A0 =A0fs/fs.o</div=
><div>=A0=A0LD =A0 =A0 =A0fs/built-in.o</div><div>=A0=A0CC =A0 =A0 =A0/home=
/ringlej/git/barebox/fs/fs.o</div>
<div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/fs/devfs.o</div><div>=A0=
=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/fs/ramfs.o</div><div>=A0=A0CC =
=A0 =A0 =A0/home/ringlej/git/barebox/lib/rbtree.o</div><div>=A0=A0CC =A0 =
=A0 =A0/home/ringlej/git/barebox/lib/libbb.o</div>
<div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/recursive_action.o</=
div><div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/libgen.o</div><d=
iv>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/div64.o</div><div>=A0=
=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/getopt.o</div>
<div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/notifier.o</div><div=
>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/readline.o</div><div>=A0=
=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/readline_simple.o</div><div>=
=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/bus.o</div>
<div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/readkey.o</div><div>=
=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/random.o</div><div>=A0=A0=
CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/bzlib.o</div><div>=A0=A0CC =A0 =
=A0 =A0/home/ringlej/git/barebox/lib/kfifo.o</div>
<div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/stringlist.o</div><d=
iv>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/ctype.o</div><div>=A0=
=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/process_escape_sequence.o</d=
iv><div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/driver.o</div>
<div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/misc.o</div><div>=A0=
=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/bzlib_crctable.o</div><div>=
=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/copy_file.o</div><div>=A0=
=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/string.o</div>
<div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/bzlib_randtable.o</d=
iv><div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/glob.o</div><div>=
=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/vsprintf.o</div><div>=A0=
=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/show_progress.o</div>
<div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/crc32.o</div><div>=
=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/make_directory.o</div><di=
v>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/bzlib_huffman.o</div><d=
iv>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/parameter.o</div>
<div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/display_options.o</d=
iv><div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/bzlib_decompress.=
o</div><div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/lib/xfuncs.o</div=
><div>=A0=A0CC =A0 =A0 =A0/home/ringlej/git/barebox/scripts/mod/sumversion.=
o</div>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c:1:24: error: netine=
t/in.h: No such file or directory</div><div>/home/ringlej/git/barebox/scrip=
ts/mod/sumversion.c:5:20: error: stdint.h: No such file or directory</div>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c:7:19: error: ctype.=
h: No such file or directory</div><div>/home/ringlej/git/barebox/scripts/mo=
d/sumversion.c:10:20: error: limits.h: No such file or directory</div><div>
In file included from /home/ringlej/git/barebox/scripts/mod/sumversion.c:11=
:</div><div>/home/ringlej/git/barebox/scripts/mod/modpost.h:5:23: error: sy=
s/types.h: No such file or directory</div><div>/home/ringlej/git/barebox/sc=
ripts/mod/modpost.h:6:22: error: sys/stat.h: No such file or directory</div=
>
<div>/home/ringlej/git/barebox/scripts/mod/modpost.h:7:22: error: sys/mman.=
h: No such file or directory</div><div>/home/ringlej/git/barebox/scripts/mo=
d/modpost.h:9:20: error: unistd.h: No such file or directory</div><div>
/home/ringlej/git/barebox/scripts/mod/modpost.h:21:1: warning: &quot;ELF_ST=
_BIND&quot; redefined</div><div>In file included from /home/ringlej/git/bar=
ebox/scripts/mod/modpost.h:10,</div><div>=A0=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0=
 from /home/ringlej/git/barebox/scripts/mod/sumversion.c:11:</div>
<div>include/elf.h:119:1: warning: this is the location of the previous def=
inition</div><div>In file included from /home/ringlej/git/barebox/scripts/m=
od/sumversion.c:11:</div><div>/home/ringlej/git/barebox/scripts/mod/modpost=
.h:22:1: warning: &quot;ELF_ST_TYPE&quot; redefined</div>
<div>In file included from /home/ringlej/git/barebox/scripts/mod/modpost.h:=
10,</div><div>=A0=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 from /home/ringlej/git/bar=
ebox/scripts/mod/sumversion.c:11:</div><div>include/elf.h:120:1: warning: t=
his is the location of the previous definition</div>
<div>In file included from /home/ringlej/git/barebox/scripts/mod/sumversion=
.c:11:</div><div>/home/ringlej/git/barebox/scripts/mod/modpost.h:122: error=
: expected specifier-qualifier-list before &#39;Elf32_Section&#39;</div>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c: In function &#39;l=
e32_to_cpu_array&#39;:</div><div>/home/ringlej/git/barebox/scripts/mod/sumv=
ersion.c:75: warning: implicit declaration of function &#39;ntohl&#39;</div=
>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c: In function &#39;c=
pu_to_le32_array&#39;:</div><div>/home/ringlej/git/barebox/scripts/mod/sumv=
ersion.c:83: warning: implicit declaration of function &#39;htonl&#39;</div=
>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c: In function &#39;p=
arse_file&#39;:</div><div>/home/ringlej/git/barebox/scripts/mod/sumversion.=
c:273: warning: implicit declaration of function &#39;isspace&#39;</div>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c: In function &#39;p=
arse_source_files&#39;:</div><div>/home/ringlej/git/barebox/scripts/mod/sum=
version.c:303: warning: implicit declaration of function &#39;malloc&#39;</=
div>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c:303: warning: passi=
ng argument 1 of &#39;do_nofail&#39; makes pointer from integer without a c=
ast</div><div>/home/ringlej/git/barebox/scripts/mod/modpost.h:89: note: exp=
ected &#39;void *&#39; but argument is of type &#39;int&#39;</div>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c:314: warning: passi=
ng argument 1 of &#39;do_nofail&#39; makes pointer from integer without a c=
ast</div><div>/home/ringlej/git/barebox/scripts/mod/modpost.h:89: note: exp=
ected &#39;void *&#39; but argument is of type &#39;int&#39;</div>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c:372: warning: impli=
cit declaration of function &#39;free&#39;</div><div>/home/ringlej/git/bare=
box/scripts/mod/sumversion.c: In function &#39;get_src_version&#39;:</div>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c:385: error: &#39;PA=
TH_MAX&#39; undeclared (first use in this function)</div><div>/home/ringlej=
/git/barebox/scripts/mod/sumversion.c:385: error: (Each undeclared identifi=
er is reported only once</div>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c:385: error: for eac=
h function it appears in.)</div><div>/home/ringlej/git/barebox/scripts/mod/=
sumversion.c:386: warning: implicit declaration of function &#39;getenv&#39=
;</div>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c:386: warning: initi=
alization makes pointer from integer without a cast</div><div>/home/ringlej=
/git/barebox/scripts/mod/sumversion.c:385: warning: unused variable &#39;fi=
lelist&#39;</div>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c: In function &#39;w=
rite_version&#39;:</div><div>/home/ringlej/git/barebox/scripts/mod/sumversi=
on.c:437: warning: implicit declaration of function &#39;open&#39;</div>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c:444: warning: impli=
cit declaration of function &#39;lseek&#39;</div><div>/home/ringlej/git/bar=
ebox/scripts/mod/sumversion.c:444: error: &#39;SEEK_SET&#39; undeclared (fi=
rst use in this function)</div>
<div>/home/ringlej/git/barebox/scripts/mod/sumversion.c:450: warning: impli=
cit declaration of function &#39;write&#39;</div><div>/home/ringlej/git/bar=
ebox/scripts/mod/sumversion.c:456: warning: implicit declaration of functio=
n &#39;close&#39;</div>
<div>make[2]: *** [/home/ringlej/git/barebox/scripts/mod/sumversion.o] Erro=
r 1</div><div>make[2]: *** Waiting for unfinished jobs....</div><div>make[1=
]: *** [common] Error 2</div><div>make[1]: Leaving directory `/home/ringlej=
/git/barebox&#39;</div>
<div>make: *** [all] Error 2</div></div><div><br></div></div>

--0016e646057c562efb049f0b25a3--


--===============1001053337==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============1001053337==--
