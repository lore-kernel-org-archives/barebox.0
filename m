Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h6siP-0005yz-N1
 for barebox@lists.infradead.org; Thu, 21 Mar 2019 08:06:20 +0000
Date: Thu, 21 Mar 2019 09:06:14 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190321080614.jmpycfyetz4rugui@pengutronix.de>
References: <CAD_Pvub19JJgwwkZrNX7iz47f-jib5hiUgE+8Z=2cSf80=YygQ@mail.gmail.com>
 <20190320075215.7j36mofzoewd5qfa@pengutronix.de>
 <CAD_PvuYxnQJT7VVe0DKRZa-VHJN+Rz-tb9KLudtd+My8CBXhLg@mail.gmail.com>
 <20190321073332.b3725avve4p6ascg@pengutronix.de>
 <CAD_PvubAaFD=zJVrzpjq__F2Qre4XedjE8op_1GAQcf19jYOrg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAD_PvubAaFD=zJVrzpjq__F2Qre4XedjE8op_1GAQcf19jYOrg@mail.gmail.com>
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
To: Lewis Zhou <lewisou@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Mar 21, 2019 at 03:53:06PM +0800, Lewis Zhou wrote:
> Hi Sascha,
> 
> Here's the log:
> 
> make -f scripts/Makefile.build obj=common
> 
> arm-cortex_a8-linux-gnueabihf-gcc -Wp,-MD,common/.memory.o.d
> -nostdinc -isystem
> /home/lewis/x-tools/arm-cortex_a8-linux-gnueabihf/lib/gcc/arm-cortex_a8-linux-gnueabihf/8.3.0/include
> -D__KERNEL__ -D__BAREBOX__ -Iinclude
> -I/home/lewis/OpenProj/barebox/dts/include
> -I/home/lewis/OpenProj/barebox/arch/arm/include
> -I/home/lewis/OpenProj/barebox/arch/arm/include -include
> /home/lewis/OpenProj/barebox/include/linux/kconfig.h -fno-builtin
> -ffreestanding -D__ARM__ -fno-strict-aliasing -marm -mlittle-endian
> -mabi=aapcs-linux -mno-thumb-interwork -D__LINUX_ARM_ARCH__=7
> -march=armv5t -Wa,-march=armv7-a  -msoft-float -mthumb

-march=armv5t -Wa,-march=armv7-a shouldn't be here. It comes from this
line in arch/arm/Makefile:

arch-$(CONFIG_CPU_32v7)		:=-D__LINUX_ARM_ARCH__=7 $(call cc-option,-march=armv7-a,-march=armv5t -Wa$(comma)-march=armv7-a)

This means the build process will use "-march=armv7-a" when the compiler
supports it. Apparently it does not, so it will fall back to
"-march=armv5t -Wa,-march=armv7-a". armv5t doesn't support thumb2 code,
only thumb and as it seems thumb does not support the "rev" instruction.

Your compiler should really support "-march=armv7-a". If it doesn't I
really think there is something wrong with it.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
