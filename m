Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ww0-f41.google.com ([74.125.82.41])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rnalt-0008Kr-0p
 for barebox@lists.infradead.org; Wed, 18 Jan 2012 19:02:09 +0000
Received: by wgbdr12 with SMTP id dr12so4557194wgb.0
 for <barebox@lists.infradead.org>; Wed, 18 Jan 2012 11:02:06 -0800 (PST)
MIME-Version: 1.0
Date: Wed, 18 Jan 2012 23:02:06 +0400
Message-ID: <CAA4bVAFwebYGAq5dB+0CkS3nEc3P5poFAphdw4vZTNNMUkTsmQ@mail.gmail.com>
From: Antony Pavlov <antonynpavlov@gmail.com>
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
Subject: git pull failed: CONFLICT
To: barebox <barebox@lists.infradead.org>

Hi!

As usual as usual I tried to pull next branch from
git://git.pengutronix.de/git/barebox, but got error message.

$ git checkout next$ git pullremote: Counting objects: 287,
done.remote: Compressing objects: 100% (121/121), done.remote: Total
193 (delta 164), reused 85 (delta 67)Receiving objects: 100%
(193/193), 22.10 KiB, done.Resolving deltas: 100% (164/164), completed
with 69 local objects.From git://git.pengutronix.de/git/barebox=A0+
5c6b5d4...5f77a0a next =A0 =A0 =A0 -> origin/next =A0(forced update)=A0+
f4a3223...841b071 work/omap3 -> origin/work/omap3 =A0(forced update)=A0+
5c50a9a...0233427 work/thumb2 -> origin/work/thumb2 =A0(forced
update)Auto-merging common/KconfigCONFLICT (content): Merge conflict
in common/KconfigRemoving arch/arm/mach-omap/omap3_platform.SRemoving
arch/arm/mach-omap/omap3_clock_core.SRemoving
arch/arm/mach-omap/include/mach/board.hRemoving
arch/arm/boards/phycard-a-l1/lowlevel.cAuto-merging MakefileCONFLICT
(content): Merge conflict in MakefileAutomatic merge failed; fix
conflicts and then commit the result.
$ git diffdiff --cc Makefileindex a61138e,5cf49da..0000000---
a/Makefile+++ b/Makefile@@@ -659,13 -669,7 +669,17 @@@
OBJCOPYFLAGS_barebox.bin =3D -O binar=A0=A0=A0 barebox.bin: barebox FORCE
=A0 $(call if_changed,objcopy)++<<<<<<< HEAD=A0+ =A0 =A0 =A0@size=3D`stat -=
c%s
$@`; \=A0+ =A0 =A0 =A0max_size=3D`printf "%d" $(CONFIG_BAREBOX_MAX_IMAGE_SI=
ZE)`;
\=A0+ =A0 =A0 =A0if [ $$size -gt $$max_size ] ; \=A0+ =A0 =A0 =A0then \=A0+
echo "$@ size $$size > of the maximum size $$max_size";=A0=A0+
=A0exit 1 ; \=A0+ =A0 =A0 =A0fi++=3D=3D=3D=3D=3D=3D=3D+ =A0 =A0 =A0 $(call
cmd,check_file_size,$(CONFIG_BAREBOX_MAX_IMAGE_SIZE))++>>>>>>>
5f77a0a812ee44389cd2921e28ee534df9994601=A0=A0=A0 ifdef CONFIG_X86
barebox.S: bareboxdiff --cc common/Kconfigindex
1b47664,8089061..0000000--- a/common/Kconfig+++ b/common/Kconfig@@@
-110,7 -110,6 +110,10 @@@ config BAREBOX_MAX_IMAGE_SIZ=A0 =A0 =A0 =A0 defau=
lt
0xffffffff=A0 =A0 =A0 =A0 help=A0 =A0 =A0 =A0 =A0 Define the maximum size of
barebox++<<<<<<< HEAD=A0+ =A0 =A0 =A0 =A0If 0x0 the size will not been
check++=3D=3D=3D=3D=3D=3D=3D++>>>>>>> 5f77a0a812ee44389cd2921e28ee534df9994=
601
config HAVE_CONFIGURABLE_MEMORY_LAYOUT=A0 =A0 =A0 =A0 bool
-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
