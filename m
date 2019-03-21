Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qk1-x734.google.com ([2607:f8b0:4864:20::734])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6sVt-0000C3-9z
 for barebox@lists.infradead.org; Thu, 21 Mar 2019 07:53:22 +0000
Received: by mail-qk1-x734.google.com with SMTP id c20so11006124qkc.10
 for <barebox@lists.infradead.org>; Thu, 21 Mar 2019 00:53:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAD_Pvub19JJgwwkZrNX7iz47f-jib5hiUgE+8Z=2cSf80=YygQ@mail.gmail.com>
 <20190320075215.7j36mofzoewd5qfa@pengutronix.de>
 <CAD_PvuYxnQJT7VVe0DKRZa-VHJN+Rz-tb9KLudtd+My8CBXhLg@mail.gmail.com>
 <20190321073332.b3725avve4p6ascg@pengutronix.de>
In-Reply-To: <20190321073332.b3725avve4p6ascg@pengutronix.de>
From: Lewis Zhou <lewisou@gmail.com>
Date: Thu, 21 Mar 2019 15:53:06 +0800
Message-ID: <CAD_PvubAaFD=zJVrzpjq__F2Qre4XedjE8op_1GAQcf19jYOrg@mail.gmail.com>
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
Subject: Re: selected processor does not support `rev r7,r7'
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Here's the log:

make -f scripts/Makefile.build obj=common

arm-cortex_a8-linux-gnueabihf-gcc -Wp,-MD,common/.memory.o.d
-nostdinc -isystem
/home/lewis/x-tools/arm-cortex_a8-linux-gnueabihf/lib/gcc/arm-cortex_a8-linux-gnueabihf/8.3.0/include
-D__KERNEL__ -D__BAREBOX__ -Iinclude
-I/home/lewis/OpenProj/barebox/dts/include
-I/home/lewis/OpenProj/barebox/arch/arm/include
-I/home/lewis/OpenProj/barebox/arch/arm/include -include
/home/lewis/OpenProj/barebox/include/linux/kconfig.h -fno-builtin
-ffreestanding -D__ARM__ -fno-strict-aliasing -marm -mlittle-endian
-mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7
-march=armv5t -Wa,-march=armv7-a  -msoft-float -mthumb
-Wa,-mimplicit-it=always -Wa,-mno-warn-deprecated
-Iarch/arm/mach-omap/include -DTEXT_BASE=0x0 -fdata-sections
-ffunction-sections -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs
-Werror-implicit-function-declaration -fno-strict-aliasing -fno-common
-Os -pipe -mno-unaligned-access  -fno-stack-protector
-Wno-unused-but-set-variable -Wno-trampolines
-fno-delete-null-pointer-checks -Wdeclaration-after-statement
-Wno-pointer-sign    -D"KBUILD_STR(s)=#s"
-D"KBUILD_BASENAME=KBUILD_STR(memory)"
-D"KBUILD_MODNAME=KBUILD_STR(memory)" -c -o common/memory.o
common/memory.c
{standard input}: Assembler messages:
{standard input}:123: Error: selected processor does not support `rev
r7,r7' in Thumb mode

Kind regards,
Lewis

On Thu, Mar 21, 2019 at 3:33 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Thu, Mar 21, 2019 at 09:03:21AM +0800, Lewis Zhou wrote:
> > Hi Sascha,
> >
> > The toolchain was compiled by crosstool-NG. It used the default config
> > arm-cortex_a8-linux-gnueabi but with the hardware float enabled. So
> > the toolchain was arm-cortex_a8-linux-gnueabihf-.
>
> Could you add V=1 to your make call and post an example gcc call? one is
> enough, not the whole output.
>
> Sascha
>
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
