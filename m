Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGtvB-0000hS-6q
 for barebox@lists.infradead.org; Tue, 13 Dec 2016 20:43:34 +0000
Received: by mail-lf0-x241.google.com with SMTP id p100so4826479lfg.2
 for <barebox@lists.infradead.org>; Tue, 13 Dec 2016 12:43:11 -0800 (PST)
Date: Tue, 13 Dec 2016 23:48:49 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20161213234849.0204a5537c12767ea2b1de41@gmail.com>
In-Reply-To: <CABYiri8yCVdtXtg7SN3OOW3h2X-bdtgJsr3VircCo-4fLTGg6Q@mail.gmail.com>
References: <20161212010146.18667-1-antonynpavlov@gmail.com>
 <20161212010146.18667-3-antonynpavlov@gmail.com>
 <CABYiri8yCVdtXtg7SN3OOW3h2X-bdtgJsr3VircCo-4fLTGg6Q@mail.gmail.com>
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
Subject: Re: [RFC v3 2/2] Add initial RISC-V architecture support
To: Andrey Korolyov <andrey@xdel.ru>
Cc: barebox@lists.infradead.org

On Tue, 13 Dec 2016 20:02:41 +0300
Andrey Korolyov <andrey@xdel.ru> wrote:

> > +CONFIG_TEXT_BASE=3D0x80000000
> > +CONFIG_MEMORY_LAYOUT_FIXED=3Dy
> > +CONFIG_STACK_BASE=3D0x807f0000
> > +CONFIG_STACK_SIZE=3D0x10000
> > +CONFIG_MALLOC_BASE=3D0x80800000
> =

> Due to changed offsets in e300/u500 configurations (as compared to v2-
> qemu config) linkage fails with binutils-2.25.1 and gcc-5.3.0:
> =

> arch/riscv/boot/built-in.o: In function `main_entry':
> /build/barebox/arch/riscv/boot/main_entry.c:34:(.text+0x0): relocation
> truncated to fit: R_RISCV_HI20 against symbol `__bss_start' defined in
> .bss section in barebox
> Makefile:756: recipe for target 'barebox' failed

You can fix the problem by explicitly selecting the 'Medium/Anywhere' gcc c=
ode model,
e.g.

--- a/arch/riscv/Makefile
+++ b/arch/riscv/Makefile
@@ -2,7 +2,7 @@ CPPFLAGS +=3D -fno-strict-aliasing
 =

 cflags-y +=3D -fno-pic -pipe
 cflags-y +=3D -Wall -Wmissing-prototypes -Wstrict-prototypes \
-	-Wno-uninitialized -Wno-format -Wno-main
+	-Wno-uninitialized -Wno-format -Wno-main -mcmodel=3Dmedany
 =

 LDFLAGS +=3D $(ldflags-y)
 LDFLAGS_barebox +=3D -nostdlib


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
