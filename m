Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vc0-f182.google.com ([209.85.220.182])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VoDGl-00058H-UH
 for barebox@lists.infradead.org; Wed, 04 Dec 2013 14:17:40 +0000
Received: by mail-vc0-f182.google.com with SMTP id lc6so11691402vcb.27
 for <barebox@lists.infradead.org>; Wed, 04 Dec 2013 06:17:13 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20131203112515.GK24559@pengutronix.de>
References: <CANvTkNaK9f0dviyowuSspx2yuKQem3tvwMo_2ig0rZ6s0Oq0Lw@mail.gmail.com>
 <CANvTkNaxQS489FzWdyozrKnXHeACd5PnCB05GVgMqm82-jBGPg@mail.gmail.com>
 <20131202091320.GF24559@pengutronix.de>
 <CANvTkNa710tfGW0=xeLwg-Qrb3YccoKui7d6zWMnio5e4CSZGg@mail.gmail.com>
 <20131203112515.GK24559@pengutronix.de>
Date: Wed, 4 Dec 2013 22:17:13 +0800
Message-ID: <CANvTkNbJJPEhWdx+Pc1ufk+8rQc4Xzq5pBb02E3axtFLCRnhSA@mail.gmail.com>
From: Kevin Du Huanpeng <u74147@gmail.com>
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
Subject: Re: [Makefile bug] make barebox.s : dead loop
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi, I tested it. works.
1. save the patch to file named x86.patch
2. git apply x86.patch
3. export ARCH=x86
4. make generic_defconfig
5. make
[ no error]
6. make barebox.s
7. endless loop again.
- - - - - -
  CHK     include/generated/compile.h
  CHK     include/generated/version.h
  CHK     include/generated/utsrelease.h
  CHK     include/generated/compile.h
^Cmake[23]: *** [barebox.s] Interrupt
make[22]: *** [barebox.s] Interrupt
make[21]: *** [barebox.s] Interrupt
make[20]: *** [barebox.s] Interrupt
make[19]: *** [barebox.s] Interrupt
make[18]: *** [barebox.s] Interrupt
make[17]: *** [barebox.s] Interrupt
make[16]: *** [barebox.s] Interrupt
make[15]: *** [barebox.s] Interrupt
make[14]: *** [barebox.s] Interrupt
make[13]: *** [barebox.s] Interrupt
make[12]: *** [barebox.s] Interrupt
make[11]: *** [barebox.s] Interrupt
make[10]: *** [barebox.s] Interrupt
- - - -
8. edit Makefile
ifdef CONFIG_X86
-barebox.S : barebox
+barebox.S barebox.s: barebox
ifdef CONFIG_X86_HDBOOT
9. [no error]

2013/12/3 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Kevin,
>
> On Mon, Dec 02, 2013 at 08:27:39PM +0800, Kevin Du Huanpeng wrote:
>>
>>   LD      arch/x86/boot/built-in.o
>>   GEN     .version
>>   CHK     include/generated/compile.h
>>   UPD     include/generated/compile.h
>>   CC      common/version.o
>>   LD      common/built-in.o
>>   LD      barebox
>> ld: section .eh_frame loaded at [000000000001605c,000000000001f01b]
>> overlaps section .barebox_initcalls loaded at
>> [000000000001605c,00000000000160b7]
>> make: *** [barebox] Error 1
>> dev@bogon:~/wr720n/bug.dis/x86$
>
> Same here. Could you try the following patch? It resolves this for me
> and the resulting image works with qemu.
>
> Sascha
>
> 8<-------------------------------------------------------
>
> From 5be365b6b36372466f88815b97d38bc203c6e183 Mon Sep 17 00:00:00 2001
> From: Sascha Hauer <s.hauer@pengutronix.de>
> Date: Tue, 3 Dec 2013 12:20:56 +0100
> Subject: [PATCH] x86: Fix linker script
>
> Do not load sections to specific addresses. This fixes linking which otherwise
> fails with newer toolchains with:
>
> /opt/OSELAS.Toolchain-2012.12.1/i586-unknown-linux-gnu/gcc-4.7.2-glibc-2.16.0-binutils-2.22-kernel-3.6-sanitized/bin/i586-unknown-linux-gnu-ld: section .eh_frame loaded at [0000000000015fb4,000000000001b0bf] overlaps section .barebox_initcalls loaded at [0000000000015fb4,000000000001600f]
>
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  arch/x86/lib/barebox.lds.S | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
>
> diff --git a/arch/x86/lib/barebox.lds.S b/arch/x86/lib/barebox.lds.S
> index 05d0f77..83e991c 100644
> --- a/arch/x86/lib/barebox.lds.S
> +++ b/arch/x86/lib/barebox.lds.S
> @@ -137,7 +137,7 @@ SECTIONS
>  #endif
>
>         /* the main barebox part (32 bit) */
> -       .text : AT ( LOADADDR(.bootstrapping) + SIZEOF(.bootstrapping) ) {
> +       .text :  {
>                 /* do not align here! It may fails with the LOADADDR! */
>                 _stext = .;
>                 _text = .;
> @@ -154,38 +154,38 @@ SECTIONS
>         BAREBOX_BARE_INIT_SIZE
>
>         _sdata = .;
> -       .data : AT ( LOADADDR(.text) + SIZEOF(.text) ) {
> +       .data :  {
>                 *(.data*)
>                 . = ALIGN(4);
>         } > barebox
>
> -       .got : AT ( LOADADDR(.data) + SIZEOF (.data) ) {
> +       .got :  {
>                 *(.got*)
>                 . = ALIGN(4);
>         } > barebox
>
> -       .barebox_cmd : AT ( LOADADDR(.got) + SIZEOF (.got) ) {
> +       .barebox_cmd : {
>                 __barebox_cmd_start = .;
>                 BAREBOX_CMDS
>                 __barebox_cmd_end = .;
>                 . = ALIGN(4);
>         } > barebox
>
> -       .barebox_magicvars : AT ( LOADADDR(.barebox_cmd) + SIZEOF (.barebox_cmd) ) {
> +       .barebox_magicvars : {
>                 __barebox_magicvar_start = .;
>                 BAREBOX_MAGICVARS
>                 __barebox_magicvar_end = .;
>                 . = ALIGN(4);
>         } > barebox
>
> -       .barebox_initcalls : AT ( LOADADDR(.barebox_magicvars) + SIZEOF (.barebox_magicvars) ) {
> +       .barebox_initcalls : {
>                 __barebox_initcalls_start = .;
>                 INITCALLS
>                 __barebox_initcalls_end = .;
>                 . = ALIGN(4);
>         } > barebox
>
> -       .__usymtab : AT ( LOADADDR(.barebox_initcalls) + SIZEOF (.barebox_initcalls) ) {
> +       .__usymtab : {
>                 __usymtab_start = .;
>                 BAREBOX_SYMS
>                 __usymtab_end = .;
> --
> 1.8.4.3
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
