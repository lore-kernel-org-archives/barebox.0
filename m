Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fNGoJ-0006no-Qf
 for barebox@lists.infradead.org; Mon, 28 May 2018 11:59:38 +0000
Date: Mon, 28 May 2018 13:59:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180528115921.4a2mmgdxs3bd4mpb@pengutronix.de>
References: <847290015.313235.1527239993231@mail.vodafone.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <847290015.313235.1527239993231@mail.vodafone.de>
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
Subject: Re: barebox for an i586 board
To: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Cc: barebox@lists.infradead.org

Hi Giorgio,

On Fri, May 25, 2018 at 11:19:53AM +0200, Giorgio Dal Molin wrote:
> Hi,
> 
> I'm trying to build a barebox image for an i586 (Vortex86) based board.
> 
> The config file I'm using was derived from the arch/x86/configs/generic_defconfig
> 
> The build error I see is:
> 
> ...
>   LD      defaultenv/built-in.o
>   GEN     .version
>   CHK     include/generated/compile.h
>   UPD     include/generated/compile.h
>   CC      common/version.o
>   LD      common/built-in.o
>   LD      barebox
> ld: section .bootstrapping VMA [0000000000007e00,000000000000826b] overlaps section .bootsector VMA [0000000000007c00,0000000000007fff]
> make[1]: *** [/tmp/barebox/Makefile:767: barebox] Error 1
> make: *** [Makefile:123: _all] Error 2
> 
> First of all: does barebox really support booting such a 'normal PC'
> without EFI bios ?

Yes, but no. We started support for this scenario, but I haven't heard
of anyone using it for a long time. There is a lot missing and nobody is
working on it. Given that modern X86 hardware has EFI support I don't
think the generic X86 is going anywhere.

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
