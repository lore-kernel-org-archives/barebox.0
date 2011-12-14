Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Ralub-0003Y4-HJ
 for barebox@lists.infradead.org; Wed, 14 Dec 2011 10:18:11 +0000
Date: Wed, 14 Dec 2011 11:17:49 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111214101749.GB27267@pengutronix.de>
References: <CAJfOKBws5V3VmfnW0eXZkgR+TgAo4_ZpSviy6pLF61fevpG7DQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJfOKBws5V3VmfnW0eXZkgR+TgAo4_ZpSviy6pLF61fevpG7DQ@mail.gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Linker question
To: Franck JULLIEN <franck.jullien@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

Hi Franck,

On Wed, Dec 14, 2011 at 12:14:08AM +0100, Franck JULLIEN wrote:
> Hi,
> 
> I'm doing some tests with the openrisc processor. As I'm building
> barebox I have a question
> related to the linking of barebox.
> 
> In order to get uint64 arithmetic functions, I need to add "-L $(shell
> dirname `$(CC) $(CFLAGS) -print-libgcc-file-name`) -lgcc"
> to the final link (only way ? found this in uboot).
> 
> However, if I do this using LDFLAGS_barebox I get :
> 
> /opt/crosstool/or32/or32-elf/bin/or32-elf-ld  -Map barebox.map -L
> /opt/crosstool/or32/or32-elf-1.0rc1/bin/../lib/gcc/or32-elf/4.5.1-or32-1.0rc4
> -lgcc -o barebox -T arch/openrisc/cpu/barebox.lds  --start-group
> common/built-in.o  drivers/built-in.o  commands/built-in.o
> lib/built-in.o  crypto/built-in.o  net/built-in.o  fs/built-in.o
> arch/openrisc/boards/generic/built-in.o  arch/openrisc/lib/built-in.o
> arch/openrisc/cpu/built-in.o --end-group
> 
> And it doesn't work. It works if "-L
> /opt/crosstool/or32/or32-elf-1.0rc1/bin/../lib/gcc/or32-elf/4.5.1-or32-1.0rc4
> -lgcc" is at the end of the command line:
> 
> /opt/crosstool/or32/or32-elf/bin/or32-elf-ld -Map barebox.map -o
> barebox -T arch/openrisc/cpu/barebox.lds --start-group
> common/built-in.o  drivers/built-in.o  commands/built-in.o
> lib/built-in.o  crypto/built-in.o  net/built-in.o  fs/built-in.o
> arch/openrisc/boards/generic/built-in.o  arch/openrisc/lib/built-in.o
> arch/openrisc/cpu/built-in.o --end-group -L
> /opt/crosstool/or32/or32-elf-1.0rc1/bin/../lib/gcc/or32-elf/4.5.1-or32-1.0rc4
> -lgcc
> 
> Any idea on why this is happening ?
> 
> The only way I found to fix this is to move LDFLAGS_barebox in the
> main Makefile:
> 
> -      cmd_barebox__ ?= $(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
> +      cmd_barebox__ ?= $(LD) $(LDFLAGS)  -o $@ \
>        -T $(barebox-lds) $(barebox-head)                         \
> -      --start-group $(barebox-common) --end-group                  \
> +      --start-group $(barebox-common) --end-group $(LDFLAGS_barebox)
>                \
>        $(filter-out $(barebox-lds) $(barebox-common) FORCE ,$^)
> 
> What do you think about this problem ?

The kernel currently does it the same way for openrisc. The other
architectures have there own implementation of the 64bit arithmetix
functions inside the kernel (and barebox) which is IMO cleaner. Maybe
you can grab them from the gcc source code and use them in barebox
instead.

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
