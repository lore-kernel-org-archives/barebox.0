Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-gy0-f177.google.com ([209.85.160.177])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qhydx-0004k8-LU
	for barebox@lists.infradead.org; Sat, 16 Jul 2011 06:46:31 +0000
Received: by gyh4 with SMTP id 4so911589gyh.36
	for <barebox@lists.infradead.org>; Fri, 15 Jul 2011 23:46:22 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <6F2524F76379064FB8CB9CEE698D56DA8D40E67E80@IN-MSG-01.amer.actel.com>
References: <AcwkMvQr2IoEFQV9To6jK9T6RQPvyABX9l1w>
	<6F2524F76379064FB8CB9CEE698D56DA8D40E67E80@IN-MSG-01.amer.actel.com>
From: Vikram Narayanan <vikram186@gmail.com>
Date: Sat, 16 Jul 2011 12:15:52 +0530
Message-ID: <CAHwEkO0EQFn+zBfKnry7R+H7g4tTiGzFLejz+n=Poj4KO47pZQ@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: sandbox build failing on redhat host
To: "Murthy, Ramana" <Ramana.Murthy@microsemi.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Jun 8, 2011 at 9:46 AM, Murthy, Ramana
<Ramana.Murthy@microsemi.com> wrote:
> Hi All,
>
>
>
> Can somebody please help me on this. I know sandbox is not priority. But
> this helps me to progress to create a new port.

Please post your .config file.
Which version of barebox you are using?

-
Vikram
>
> Best Regards,
>
> N.S.S.R.Murthy,
>
> Ph # +91-40-67303600, Extn =96 3731,
>
> Mobile # +91-9959677780.
>
>
>
> From: Murthy, Ramana
> Sent: Monday, June 06, 2011 3:48 PM
> To: 'barebox@lists.infradead.org'
> Subject: sandbox build failing on redhat host
>
>
>
> Hi All,
>
>
>
> I am trying to build barebox with ARCH =3D sandbox. My make menuconfig is
> successful.
>
> But the actual build is throwing below errors. As I understand, the errors
> are because offt_build.c that includes <asm/barebox.h>. But in case of
> ARCH=3Dsandbox,the arch/sandbox/inlcude/asm/barebox.h contains nothing. Is
> itsupposed to compile ft_build.c in case of sandbox?
>
> =A0CHK =A0 =A0 include/generated/version.h
> =A0CHK =A0 =A0 include/generated/utsrelease.h
> =A0SYMLINK include/config.h -> arch/sandbox/board//config.h
> =A0CC =A0 =A0 =A0scripts/mod/empty.o
> =A0HOSTCC =A0scripts/mod/mk_elfconfig
> =A0MKELF =A0 scripts/mod/elfconfig.h
> =A0HOSTCC =A0scripts/mod/modpost.o
> =A0HOSTCC =A0scripts/mod/sumversion.o
> =A0HOSTLD =A0scripts/mod/modpost
> =A0HOSTCC =A0scripts/bin2c
> =A0HOSTCC =A0scripts/mkimage
> =A0HOSTCC =A0scripts/bareboxenv
> =A0CC =A0 =A0 =A0common/hush.o
> =A0CC =A0 =A0 =A0common/date.o
> =A0CC =A0 =A0 =A0common/ft_build.o
> In file included from common/ft_build.c:33:
> include/ft_build.h:59: error: syntax error before "bd_t"
> include/ft_build.h:59: warning: function declaration isn't a prototype
> include/ft_build.h:65: error: syntax error before "bd_t"
> include/ft_build.h:65: warning: function declaration isn't a prototype
> include/ft_build.h:66: error: syntax error before "bd_t"
> include/ft_build.h:66: warning: function declaration isn't a prototype
> include/ft_build.h:67: error: syntax error before "bd_t"
> include/ft_build.h:67: warning: function declaration isn't a prototype
> common/ft_build.c:458: error: syntax error before "bd_t"
> common/ft_build.c:459: warning: function declaration isn't a prototype
> common/ft_build.c: In function `ft_setup':
> common/ft_build.c:477: error: `blob' undeclared (first use in this functi=
on)
> common/ft_build.c:477: error: (Each undeclared identifier is reported only
> once
> common/ft_build.c:477: error: for each function it appears in.)
> common/ft_build.c:477: error: `bd' undeclared (first use in this function)
> common/ft_build.c:488: error: `initrd_start' undeclared (first use in
> this function)
> common/ft_build.c:488: error: `initrd_end' undeclared (first use in
> this function)
> common/ft_build.c:460: warning: unused variable `p'
> common/ft_build.c:461: warning: unused variable `len'
> common/ft_build.c:463: warning: unused variable `clock'
> make[1]: *** [common/ft_build.o] Error 1
> make: *** [common] Error 2
>
>
>
> Best Regards,
>
> N.S.S.R.Murthy,
>
> Ph # +91-40-67303600, Extn =96 3731,
>
> Mobile # +91-9959677780.
>
>
>
> ________________________________
> The information contained in or attached to this email may be subject to =
the
> Export Administration Regulations (EAR), administered by the U.S. Departm=
ent
> of Commerce, or the International Traffic in Arms Regulations (ITAR),
> administered by the U.S. Department of State, and may require an export
> license from the Commerce or State Department prior to its export. An exp=
ort
> can include a release or disclosure to a foreign national inside or outsi=
de
> the United States. Include this notice with any reproduced portion of this
> information.
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
>
>

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
