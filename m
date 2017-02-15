Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cdzGV-0001Ox-VW
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 13:05:02 +0000
Date: Wed, 15 Feb 2017 14:04:37 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170215130437.6i63aa6g76btkld2@pengutronix.de>
References: <20170210095655.GA25859@mail.ovh.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170210095655.GA25859@mail.ovh.net>
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
Subject: Re: [PATCH 0/9] EFI: drop arch efi
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Hi Jean-Christophe,

On Fri, Feb 10, 2017 at 10:56:55AM +0100, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Today the EFI is build as an other ARCH when in fact it's just a boot mode
> 
> so move it back to arch/x86 for the spicific x86 part and the common
> to common and driver
> 
> The following changes since commit 55d29525146dcd280987dfd565bfd34f08858fb3:
> 
>   ata: ide-sff: don't call free for ide_port in error path (2017-01-18 12:01:38 +0100)
> 
> are available in the git repository at:
> 
>   git://git.jcrosoft.org/barebox.git
> 
> for you to fetch changes up to 3e07e7f43bcfb5160cc6104f06535f147222570b:
> 
>   efi: bus: add firmware vendor and resision and tables info (2017-02-09 17:13:41 +0800)
> 
> ----------------------------------------------------------------
> Jean-Christophe PLAGNIOL-VILLARD (9):
>       efi: move block io driver to driver/block
>       efi: move clocksource out of arch
>       efi: move bus driver to driver/efi
>       efi: move debug_ll.h to include/efi
>       efi: move startup and payload to common/efi
>       x86: move bios bootup code to arch/x86/bios
>       efi: move x86 efi boot support to x86 arch
>       ARCH: efi: Finally drop it as now we can build efi bootup from x86
>       efi: bus: add firmware vendor and resision and tables info

Some problems found with this series:

- bisectability breaks in 3/9:

drivers/built-in.o: In function `efi_driver_register':
/home/sha/dude/barebox/barebox-test/include/efi/efi-device.h:38: undefined reference to `efi_bus'
fs/built-in.o: In function `efi_driver_register':
/home/sha/dude/barebox/barebox-test/include/efi/efi-device.h:38: undefined reference to `efi_bus'
arch/efi/efi/built-in.o: In function `efi_execute_image':
/home/sha/dude/barebox/barebox-test/arch/efi/efi/efi-image.c:162: undefined reference to `efi_connect_all'
/home/sha/dude/barebox/barebox-test/arch/efi/efi/efi-image.c:163: undefined reference to `efi_register_devices'
Makefile:756: recipe for target 'barebox' failed
make: *** [barebox] Error 1

- The end result won't compile:

arch/x86/Makefile:88: *** recipe commences before first target.  Stop.

With this one fixed we get:

In file included from common/efi/env-efi.bbenv.S:1:0:
include/asm-generic/barebox.lds.h:12:30: fatal error: mach/barebox.lds.h: No such file or directory
 #include <mach/barebox.lds.h>

I think you can squash most of the patches together, maybe leaving 6/9
and 9/9 as separate patches. The rest is probably hard to keep separated
while maintaining bisectability

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
