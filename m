Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sruj9-0008Hj-Sn
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 17:41:29 +0000
Date: Thu, 19 Jul 2012 19:41:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120719174125.GC30009@pengutronix.de>
References: <1342685582-13244-1-git-send-email-s.hauer@pengutronix.de>
 <1342685582-13244-10-git-send-email-s.hauer@pengutronix.de>
 <20120719170845.GA3303@sig21.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120719170845.GA3303@sig21.net>
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
Subject: Re: [PATCH 9/9] Add compressed image support
To: Johannes Stezenbach <js@sig21.net>
Cc: barebox@lists.infradead.org

On Thu, Jul 19, 2012 at 07:08:45PM +0200, Johannes Stezenbach wrote:
> Hi,
> 
> On Thu, Jul 19, 2012 at 10:13:02AM +0200, Sascha Hauer wrote:
> > --- a/Makefile
> > +++ b/Makefile
> ...
> > +ifdef CONFIG_IMAGE_COMPRESSION_LZO
> > +barebox: piggy.lzo.o
> > +	@echo "  LD     " $@
> > +	$(Q)$(LD) $(LDFLAGS) $(LDFLAGS_barebox) -o $@ \
> > +		-T $(barebox-compressed-lds) $(barebox-compressed) \
> > +		--start-group $(barebox-common) piggy.lzo.o --end-group
> > +else
> 
> Where is barebox-compressed set?
> 
> I tried it and it fails to link:
> 
>   LD      arch/arm/lib/built-in.o
>   LD      barebox-uncompressed
>   SYSMAP  System.map
>   OBJCOPY barebox-uncompressed.bin
>   LZO     barebox-uncompressed.bin.lzo
>   CC      piggy.lzo.o
>   LD      barebox
> common/built-in.o: In function `start_barebox':
> .../barebox/common/startup.c:154: undefined reference to `__barebox_initcalls_start'
> .../barebox/common/startup.c:154: undefined reference to `__barebox_initcalls_end'
> 
> $ make V=1
> ...
>   LD      barebox
> arm-linux-ld -EL  -Map barebox.map -static --gc-sections -o barebox \
>                 -T arch/arm/lib/barebox-compressed.lds  \
>                 --start-group  common/built-in.o  drivers/built-in.o  commands/built-in.o  lib/built-in.o  crypto/built-in.o  net/built-in.o  fs/built-in.o  arch/arm/boards/foo/built-in.o  arch/arm/mach-foo/built-in.o  arch/arm/lib/built-in.o  arch/arm/cpu/built-in.o piggy.lzo.o --end-group
> 
> 
> It shouldn't link all the -built-in.o into the uncompressor, should it?
> Or is it supposed to work via --gc-sections trick?

Yes, it works using --gc-sections. Are you building a defconfig or a
custom one? If the error above is correct start_barebox is referenced
from the decompressor code. This should not happen.

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
