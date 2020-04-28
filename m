Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTPXj-0004Rm-M7
 for barebox@lists.infradead.org; Tue, 28 Apr 2020 12:40:57 +0000
Received: by mail-lf1-x144.google.com with SMTP id m2so16737678lfo.6
 for <barebox@lists.infradead.org>; Tue, 28 Apr 2020 05:40:53 -0700 (PDT)
Date: Tue, 28 Apr 2020 15:40:50 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200428154050.961a724bb7e80d6ca712dad7@gmail.com>
In-Reply-To: <422912487.17009323.1587639977653.JavaMail.zimbra@kalray.eu>
References: <20200423081712.4022-1-cleger@kalray.eu>
 <20200423132055.eb6f2d1918b736c92c026d69@gmail.com>
 <422912487.17009323.1587639977653.JavaMail.zimbra@kalray.eu>
Mime-Version: 1.0
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
Subject: Re: [PATCH v2 0/6] elf: add better bootm support
To: =?ISO-8859-1?Q?Cl=E9ment?= Leger <cleger@kalray.eu>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, 23 Apr 2020 13:06:17 +0200 (CEST)
Cl=E9ment Leger <cleger@kalray.eu> wrote:

> Hi Antony,
> =

> ----- On 23 Apr, 2020, at 12:20, Antony Pavlov antonynpavlov@gmail.com wr=
ote:
> =

> > On Thu, 23 Apr 2020 10:17:05 +0200
> > Clement Leger <cleger@kalray.eu> wrote:
> > =

> > Hi, Clement
> > =

> > Just FYI. On MIPS barebox I use out-of-tree kexec-based ELF loader.
> > =

> > This efforts started in 2012 (sic!):
> > http://lists.infradead.org/pipermail/barebox/2012-December/011771.html
> > =

> > Alas! kexec patches are not mainlined still.
> > =

> > public kexec patches are available in my github repo, e.g.
> > https://github.com/frantony/barebox/commits/20170319.mips-malta-elf-lin=
ux
> > =

> > If your are interested in using kexec-style ELF loading I can prepare
> > patches on top of latest barebox master.
> =

> If I understand correctly, the main advantage is to be able to load some =
code
> over the currently running code by using some sort of "relocation" right ?

Yes, you are right.

> Currently, on KVX, we load Linux in the beginning of the DDR and barebox =
is
> at DDR base + 256Mo so we don't have overlapping. But I bet that if we
> had that it would be useful.

On MIPS the situation is just the same: on start barebox relocates itself
to the top of memory (thank to 2019 Oleksij's patchseries)
so linux kernel and barebox overlaping is unlikely. So kexec-style ELF
loading was actual on MIPS before 2019.


> Anyway, even if we don't need it right now, that's a really nice feature !
> =

> From what I see from your commit, I think a part of it could be integrate=
d in
> the existing  elf parser (in elf_request_region) and add the segment
> information in elf_section struct (the name is not really meaningful
> since it stores the elf segments :D). And then a bootm option would allow
> setting an "offset" at which will be loaded the elf waiting to be relocat=
ed
> and then call the arch assembly code to do the relocation and boot ?
> =

> BTW, it makes me realize that currently, the elf is loaded when doing the
> elf_open and not it would probably be better to do it in bootm_load_os as
> for other file format. This would allow to open the elf file only in the
> first time and load it later and could probably help you to integrate
> kexec (ie load elf file only) and then do some kexec magic with the elf
> struct.
> Tell me if you think other improvements can be made.

First of all I have to check your v3 patchseries on MIPS.
The main problem of my kexec elf load patchseries that it was tested only o=
n MIPS.




> Regards,
> =

> Cl=E9ment
> =

> > =

> >> Currently, when booting an elf file using "bootm /dev/mtdx", bootm will
> >> simply pass the file to the bootm and the read done on it will read the
> >> entire flash partition. This series starts by some cleanup and then ad=
d an
> >> elf_open function to load the elf file size only based on the elf head=
er.
> >> A special handling for the elf file is also added in bootm data to all=
ow
> >> using directly the elf file structure. Finally the mips bootm is modif=
ied
> >> to use bootm elf loading capability.
> >> =

> >> Changes v1 -> v2
> >>  - Add BOOTM_ELF config to select elf support and add checks in code
> >>  - Add an elf_get_mem_size function to avoid computing elf size in boo=
tm.c
> >>  - Use xmalloc and read_full in elf_open instead of xzalloc/read
> >>  - Fix data->elf NULL reset
> >>  - Remove elf struct entirely from mips bootm code
> >> =

> >> Clement Leger (6):
> >>   common: elf: add computation of elf boundaries
> >>   common: elf: fix warning on 32 bits architectures
> >>   common: elf: split init to be reused from other function
> >>   common: elf: add elf_open and elf_close
> >>   common: bootm: add support for elf file loading
> >>   mips: lib: bootm: use bootm elf loading capabilities
> >> =

> >>  arch/mips/lib/bootm.c |  27 +++--------
> >>  common/Kconfig        |   8 ++++
> >>  common/bootm.c        |  30 ++++++++++++
> >>  common/elf.c          | 107 ++++++++++++++++++++++++++++++++++++++++--
> >>  include/bootm.h       |   3 ++
> >>  include/elf.h         |  14 ++++++
> >>  6 files changed, 164 insertions(+), 25 deletions(-)
> >> =

> >> --
> >> 2.17.1
> >> =

> >> =

> >> _______________________________________________
> >> barebox mailing list
> >> barebox@lists.infradead.org
> >> http://lists.infradead.org/mailman/listinfo/barebox
> > =

> > =

> > --
> > Best regards,
> > =A0 Antony Pavlov


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
