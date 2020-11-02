Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZZeb-0007sg-0N
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 13:13:49 +0000
Date: Mon, 2 Nov 2020 14:13:43 +0100
From: Roland Hieber <rhi@pengutronix.de>
Message-ID: <20201102131343.eez2qi4pxq56gfo6@pengutronix.de>
References: <MN2PR16MB3135009790C9E05DD2D996BB91170@MN2PR16MB3135.namprd16.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <MN2PR16MB3135009790C9E05DD2D996BB91170@MN2PR16MB3135.namprd16.prod.outlook.com>
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
Subject: Re: bareboxenv-target
To: "Barbier, Renaud" <renaud.barbier@abaco.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, Oct 28, 2020 at 11:09:18AM +0000, Barbier, Renaud wrote:
> I am building bareboxenv-target for a  cortex-A9 board (not present upstream) with gcc 9.3.0 and got this error:
> 
> arm-oe-linux-gnueabi-gcc -Wp,-MMD,scripts/.bareboxenv-target.d -Wall -Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu89  -I /mnt/projects/all/openware-core/home/renaud/sandbox/bootloader/barebox-rebase/scripts/include      -o scripts/bareboxenv-target scripts/bareboxenv-target.c
> In file included from scripts/bareboxenv-target.c:1:
> scripts/bareboxenv.c:17:10: fatal error: stdio.h: No such file or directory
>    17 | #include <stdio.h>
>       |          ^~~~~~~~~
> 
> 
> It looks like sysroot is missing as when I add to scripts/Makefile:
> ifdef SDKTARGETSYSROOT
>     userccflags += --sysroot=$(SDKTARGETSYSROOT)
> endif
> 
> It builds.
> 
> Not much came out from search on google but one thread that refers to this problem when building with Yocto.
> 
> Could it it be related to  how our toolchain got build?

Which toolchain were you using? IIRC, the Yocto SDK builds don't set a
valid SYSROOT during the build, and patch it in through a compile option
when calling the compiler.

 - Roland

-- 
Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
Steuerwalder Str. 21                     | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
