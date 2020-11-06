Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-eopbgr750097.outbound.protection.outlook.com
 ([40.107.75.97] helo=NAM02-BL2-obe.outbound.protection.outlook.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kaySp-0001jR-2l
 for barebox@lists.infradead.org; Fri, 06 Nov 2020 09:55:42 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Fri, 6 Nov 2020 09:55:18 +0000
Message-ID: <MN2PR16MB31356A4AC88A8C2A4A3D5E3491ED0@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <MN2PR16MB3135009790C9E05DD2D996BB91170@MN2PR16MB3135.namprd16.prod.outlook.com>
 <20201102131343.eez2qi4pxq56gfo6@pengutronix.de>
In-Reply-To: <20201102131343.eez2qi4pxq56gfo6@pengutronix.de>
Content-Language: en-US
MIME-Version: 1.0
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
Subject: RE: bareboxenv-target
To: Roland Hieber <rhi@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

We derived out recipe for barebox from the barebox layer.
We may have broken something in there.

> -----Original Message-----
> From: Roland Hieber [mailto:rhi@pengutronix.de]
> Sent: 02 November 2020 13:14
> To: Barbier, Renaud <renaud.barbier@abaco.com>
> Cc: barebox@lists.infradead.org
> Subject: Re: bareboxenv-target
> 
> 
> 
> [**EXTERNAL SOURCE**]:Please verify the source before clicking link or
> opening attachment.
> 
> On Wed, Oct 28, 2020 at 11:09:18AM +0000, Barbier, Renaud wrote:
> > I am building bareboxenv-target for a  cortex-A9 board (not present
> upstream) with gcc 9.3.0 and got this error:
> >
> > arm-oe-linux-gnueabi-gcc -Wp,-MMD,scripts/.bareboxenv-target.d -Wall -
> Wmissing-prototypes -Wstrict-prototypes -O2 -fomit-frame-pointer -
> std=gnu89  -I /mnt/projects/all/openware-
> core/home/renaud/sandbox/bootloader/barebox-rebase/scripts/include
> -o scripts/bareboxenv-target scripts/bareboxenv-target.c
> > In file included from scripts/bareboxenv-target.c:1:
> > scripts/bareboxenv.c:17:10: fatal error: stdio.h: No such file or directory
> >    17 | #include <stdio.h>
> >       |          ^~~~~~~~~
> >
> >
> > It looks like sysroot is missing as when I add to scripts/Makefile:
> > ifdef SDKTARGETSYSROOT
> >     userccflags += --sysroot=$(SDKTARGETSYSROOT)
> > endif
> >
> > It builds.
> >
> > Not much came out from search on google but one thread that refers to
> this problem when building with Yocto.
> >
> > Could it it be related to  how our toolchain got build?
> 
> Which toolchain were you using? IIRC, the Yocto SDK builds don't set a
> valid SYSROOT during the build, and patch it in through a compile option
> when calling the compiler.
> 
>  - Roland
> 
> --
> Roland Hieber, Pengutronix e.K.          | r.hieber@pengutronix.de     |
> Steuerwalder Str. 21                     |
> https://nam11.safelinks.protection.outlook.com/?url=https%3A%2F%2Fww
> w.pengutronix.de%2F&amp;data=04%7C01%7Crenaud.barbier%40abaco.co
> m%7Caf3bfcf353684c3ae9ae08d87f312089%7Ce6f27451899d4d0db8fa88baaf
> a551a7%7C0%7C0%7C637399196270355233%7CUnknown%7CTWFpbGZsb3d8
> eyJWIjoiMC4wLjAwMDAiLCJQIjoiV2luMzIiLCJBTiI6Ik1haWwiLCJXVCI6Mn0%3
> D%7C2000&amp;sdata=%2BdontmtYoJ%2BsS1%2FkGternIF%2FOdHe1h2QaV
> hQPE%2BbNeY%3D&amp;reserved=0 |
> 31137 Hildesheim, Germany                | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686         | Fax:   +49-5121-206917-5555 |
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
