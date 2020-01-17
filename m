Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout03.rmx.de ([94.199.88.101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isOHO-0005fX-AB
 for barebox@lists.infradead.org; Fri, 17 Jan 2020 09:51:06 +0000
Received: from kdin02.retarus.com (unknown [172.19.17.49])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mailout03.rmx.de (Postfix) with ESMTPS id 47zbsk089kzlcBT
 for <barebox@lists.infradead.org>; Fri, 17 Jan 2020 10:50:50 +0100 (CET)
Received: from ppmail.arri.de (unknown [217.111.95.7])
 (using TLSv1 with cipher AES128-SHA (128/128 bits))
 (No client certificate requested)
 by kdin02.retarus.com (Postfix) with ESMTPS id 47zbsg1pJwz2TTNL
 for <barebox@lists.infradead.org>; Fri, 17 Jan 2020 10:50:47 +0100 (CET)
From: Christian Eggers <ceggers@arri.de>
Date: Fri, 17 Jan 2020 10:50:13 +0100
Message-ID: <20200117095013.31379-1-ceggers@arri.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============8280825614273118690=="
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] lds: Fix alignment of initcall table
To: barebox@lists.infradead.org
Cc: Christian Eggers <ceggers@arri.de>, ceggers@gmx.de

--===============8280825614273118690==
Content-Type: text/plain
Content-Transfer-Encoding: quoted-printable

Depending on the preceding *(.rodata*) sections, the contents of the
RO_DATA_SECTION macro may be unaligned.

In my case, the initcall table was unaligned, because the preceding
.rodata ended with the defaultenv when CONFIG_KALLSYMS was set to N.

                0x00000000000b0a00      0x1c2 arch/arm/lib32/built-in.o
 .rodata.unwind_get_byte.str1.1
                0x00000000000b0bc2       0x1e arch/arm/lib32/built-in.o
 .rodata.default_environment
                0x00000000000b0be0       0x1d defaultenv/built-in.o
 .rodata.defaultenv_add_base.part.0.str1.1
                0x00000000000b0bfd       0x35 defaultenv/built-in.o
 .rodata.defaultenv_load.str1.1
                0x00000000000b0c32       0x2b defaultenv/built-in.o
                                         0x36 (size before relaxing)
                0x00000000000b0c5d       <--- oops
                 __barebox_initcalls_start =3D .
 *(.initcall.0)

Tested on i.MX6 (ARM v7).

Fixes: c5d38e9201 ("lds: Add and use RO_DATA_SECTION macro")
Signed-off-by: Christian Eggers <ceggers@arri.de>
---
 arch/arm/lib32/barebox.lds.S           | 1 +
 arch/arm/lib64/barebox.lds.S           | 1 +
 arch/mips/lib/barebox.lds.S            | 1 +
 arch/nios2/cpu/barebox.lds.S           | 1 +
 arch/openrisc/cpu/barebox.lds.S        | 1 +
 arch/ppc/boards/pcm030/barebox.lds.S   | 1 +
 arch/riscv/lib/barebox.lds.S           | 1 +
 arch/x86/mach-efi/elf_ia32_efi.lds.S   | 1 +
 arch/x86/mach-efi/elf_x86_64_efi.lds.S | 1 +
 9 files changed, 9 insertions(+)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index c479e02e9..e08833d22 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -57,6 +57,7 @@ SECTIONS
        . =3D ALIGN(4);
        .rodata : {
                *(.rodata*)
+               . =3D ALIGN(4);
                RO_DATA_SECTION
        }

diff --git a/arch/arm/lib64/barebox.lds.S b/arch/arm/lib64/barebox.lds.S
index cf6ef1889..f361c7c55 100644
--- a/arch/arm/lib64/barebox.lds.S
+++ b/arch/arm/lib64/barebox.lds.S
@@ -55,6 +55,7 @@ SECTIONS
        . =3D ALIGN(4);
        .rodata : {
                *(.rodata*)
+               . =3D ALIGN(4);
                RO_DATA_SECTION
        }

diff --git a/arch/mips/lib/barebox.lds.S b/arch/mips/lib/barebox.lds.S
index e96c3bf6e..331fb0e83 100644
--- a/arch/mips/lib/barebox.lds.S
+++ b/arch/mips/lib/barebox.lds.S
@@ -32,6 +32,7 @@ SECTIONS
        . =3D ALIGN(4);
        .rodata : {
                *(.rodata*)
+               . =3D ALIGN(4);
                RO_DATA_SECTION
        }

diff --git a/arch/nios2/cpu/barebox.lds.S b/arch/nios2/cpu/barebox.lds.S
index 8d82aa59e..c7a6626d2 100644
--- a/arch/nios2/cpu/barebox.lds.S
+++ b/arch/nios2/cpu/barebox.lds.S
@@ -51,6 +51,7 @@ SECTIONS

        .rodata : {
                *(.rodata*)
+               . =3D ALIGN(4);
                RO_DATA_SECTION
        }

diff --git a/arch/openrisc/cpu/barebox.lds.S b/arch/openrisc/cpu/barebox.ld=
s.S
index adb0c22f8..da48c35e5 100644
--- a/arch/openrisc/cpu/barebox.lds.S
+++ b/arch/openrisc/cpu/barebox.lds.S
@@ -49,6 +49,7 @@ SECTIONS
                *(.rodata);
                *(.rodata.*)
                *(.bbenv.rodata.*)
+               . =3D ALIGN(4);
                RO_DATA_SECTION
        } > ram

diff --git a/arch/ppc/boards/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/=
barebox.lds.S
index 6c91ed625..051a94058 100644
--- a/arch/ppc/boards/pcm030/barebox.lds.S
+++ b/arch/ppc/boards/pcm030/barebox.lds.S
@@ -38,6 +38,7 @@ SECTIONS
     *(.rodata*)
     *(.rodata1*)
     *(.rodata.str1.4)
+    . =3D ALIGN(16);
     RO_DATA_SECTION
   }

diff --git a/arch/riscv/lib/barebox.lds.S b/arch/riscv/lib/barebox.lds.S
index 5149f8ce2..6e6641043 100644
--- a/arch/riscv/lib/barebox.lds.S
+++ b/arch/riscv/lib/barebox.lds.S
@@ -32,6 +32,7 @@ SECTIONS
        . =3D ALIGN(8);
        .rodata : {
                *(.rodata*)
+               . =3D ALIGN(8);
                RO_DATA_SECTION
        }

diff --git a/arch/x86/mach-efi/elf_ia32_efi.lds.S b/arch/x86/mach-efi/elf_i=
a32_efi.lds.S
index 18ddf1780..2232b8d86 100644
--- a/arch/x86/mach-efi/elf_ia32_efi.lds.S
+++ b/arch/x86/mach-efi/elf_ia32_efi.lds.S
@@ -35,6 +35,7 @@ SECTIONS

        .data : {
                *(.rodata*)
+               . =3D ALIGN(4096);
                RO_DATA_SECTION
                *(.data)
                *(.data1)
diff --git a/arch/x86/mach-efi/elf_x86_64_efi.lds.S b/arch/x86/mach-efi/elf=
_x86_64_efi.lds.S
index 40a942503..0d42e6ddd 100644
--- a/arch/x86/mach-efi/elf_x86_64_efi.lds.S
+++ b/arch/x86/mach-efi/elf_x86_64_efi.lds.S
@@ -38,6 +38,7 @@ SECTIONS

        .data : {
                *(.rodata*)
+               . =3D ALIGN(4096);
                RO_DATA_SECTION
                *(.got.plt)
                *(.got)
--
2.16.4

________________________________
 [http://assets.arri.com/media/sign/2019-12-13a-ARRI-E-mail-Signatur-Parkst=
adt.jpg] <https://www.google.com/maps/place/Herbert-Bayer-Stra%C3%9Fe+10,+8=
0807+M%C3%BCnchen/data=3D!4m2!3m1!1s0x479e74379489f045:0x4bbf0c7a9e893d66?s=
a=3DX&ved=3D2ahUKEwjjvdSlh8TmAhWIp4sKHe3vDlQQ8gEwAHoECAsQAQ>

Get all the latest information from www.arri.com<https://www.arri.com/>, Fa=
cebook<https://www.facebook.com/TeamARRI>, Twitter<https://twitter.com/ARRI=
Channel>, Instagram<https://instagram.com/arri> and YouTube<https://www.you=
tube.com/user/ARRIChannel>.

Arnold & Richter Cine Technik GmbH & Co. Betriebs KG
Sitz: M=FCnchen - Registergericht: Amtsgericht M=FCnchen - Handelsregistern=
ummer: HRA 57918
Pers=F6nlich haftender Gesellschafter: Arnold & Richter Cine Technik GmbH
Sitz: M=FCnchen - Registergericht: Amtsgericht M=FCnchen - Handelsregistern=
ummer: HRB 54477
Gesch=E4ftsf=FChrer: Dr. Michael Neuh=E4user; Stephan Schenk; Walter Trauni=
nger; Markus Zeiler


--===============8280825614273118690==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============8280825614273118690==--
