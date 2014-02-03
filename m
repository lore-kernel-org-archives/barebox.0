Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-f193.google.com ([209.85.160.193])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WAGIS-0003Wo-4A
 for barebox@lists.infradead.org; Mon, 03 Feb 2014 09:58:32 +0000
Received: by mail-yk0-f193.google.com with SMTP id q9so7624513ykb.0
 for <barebox@lists.infradead.org>; Mon, 03 Feb 2014 01:58:06 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CAKRNOGz68GEnwU_qEu28xJHBuDsaird4qnepB6rHv48EGdMBOw@mail.gmail.com>
References: <1391159170-17686-1-git-send-email-freesilicon@gmail.com>
 <20140203081224.GE16215@pengutronix.de>
 <CAKRNOGz68GEnwU_qEu28xJHBuDsaird4qnepB6rHv48EGdMBOw@mail.gmail.com>
Date: Mon, 3 Feb 2014 10:58:06 +0100
Message-ID: <CAKRNOGzSYsEz-jKE19EjY3gw72usbDhBcMCB6k_Zn=zR_kwwqA@mail.gmail.com>
From: David Vincent <freesilicon@gmail.com>
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
Subject: Fwd: [PATCH] Load PBL into SRAM
To: Sascha Hauer <s.hauer@pengutronix.de>, barebox@lists.infradead.org

2014-02-03 Sascha Hauer <s.hauer@pengutronix.de>:

> On Fri, Jan 31, 2014 at 10:06:10AM +0100, David Vincent wrote:
> > This allows to load all the lowlevel init code, including the
> > uncompressor, inside SRAM and not just the bare init part. This is
> > useful when pbl is used as a first-stage bootloader but is loaded by an
> > external firmware.
>
> Just to make sure I understand this correctly: The patch does not make a
> code change, all it does is to check that the binary does not get too
> big, right?


Exactly, just like BAREBOX_MAX_BARE_INIT_SIZE but for the whole
prebootlader code (lowlevel + uncompressor + caches (?) + etc...) not
just functions marked as __bare_init.

>
> > +config BAREBOX_MAX_PBL_SIZE
> > +     depends on PBL_IMAGE && LOAD_PBL_SRAM
> > +     prompt "Maximum pre-bootloader size"
> > +     hex
> > +     default 0xffffffff
> > +     help
> > +       Define the maximum size of pbl
> > +       this will allow your pbl to fit in SRAM as example
> > +       ARCH can overwrite it via ARCH_BAREBOX_MAX_PBL_SIZE
>
> I stumble upon this 'allow', maybe better something like:
>
> On some hardware the ROM code can load the pbl into SRAM, but not the
> whole image. This option specifies how big the pbl may get.


I copied the definition from BAREBOX_MAX_BARE_INIT_SIZE as it shares
the same goal, but if you find it clearer that way, I can resubmit the
patch with that definition, it is up to you !

>
>
> What do you think?
>
> Sascha


David

>
>
> > +
> > +
> >  config BAREBOX_MAX_BARE_INIT_SIZE
> > -     prompt "Maximum bare_init size"
> > +     prompt "Maximum bare_init size" if !LOAD_PBL_SRAM
> >       hex
> > +     range 0x0 BAREBOX_MAX_PBL_SIZE if LOAD_PBL_SRAM
> > +     default BAREBOX_MAX_PBL_SIZE if LOAD_PBL_SRAM
> >       default 0xffffffff
> >       help
> >         Define the maximum size of bare_init
> > -       this will allow your bare_init will fit in SRAM as example
> > +       this will allow your bare_init to fit in SRAM as example
> >         ARCH can overwrite it via ARCH_BAREBOX_MAX_BARE_INIT_SIZE
> >
> >  config HAVE_CONFIGURABLE_MEMORY_LAYOUT
> > diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
> > index 6d3a69e..10b0885 100644
> > --- a/include/asm-generic/barebox.lds.h
> > +++ b/include/asm-generic/barebox.lds.h
> > @@ -60,10 +60,22 @@ CONFIG_ARCH_BAREBOX_MAX_BARE_INIT_SIZE < CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
> >  #define MAX_BARE_INIT_SIZE CONFIG_BAREBOX_MAX_BARE_INIT_SIZE
> >  #endif
> >
> > +#if defined(CONFIG_ARCH_BAREBOX_MAX_PBL_SIZE) && \
> > +CONFIG_ARCH_BAREBOX_MAX_PBL_SIZE < CONFIG_BAREBOX_MAX_PBL_SIZE
> > +#define MAX_PBL_SIZE CONFIG_ARCH_BAREBOX_MAX_PBL_SIZE
> > +#else
> > +#define MAX_PBL_SIZE CONFIG_BAREBOX_MAX_PBL_SIZE
> > +#endif
> > +
> >  #include <linux/stringify.h>
> >  /* use 2 ASSERT because ld can not accept '"size" "10"' format */
> >  #define BAREBOX_BARE_INIT_SIZE                                       \
> >       _barebox_bare_init_size = __bare_init_end - _text;      \
> >       ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, "Barebox bare_init size > ") \
> > -     ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, __stringify(MAX_BARE_INIT_SIZE)) \
> > +     ASSERT(_barebox_bare_init_size < MAX_BARE_INIT_SIZE, __stringify(MAX_BARE_INIT_SIZE))
> >
> > +#define BAREBOX_PBL_SIZE                                     \
> > +     _barebox_pbl_size = __bss_start - _text;                \
> > +     ASSERT(MAX_BARE_INIT_SIZE <= MAX_PBL_SIZE, "bare_init cannot be bigger than pbl") \
> > +     ASSERT(_barebox_pbl_size < MAX_PBL_SIZE, "Barebox pbl size > ") \
> > +     ASSERT(_barebox_pbl_size < MAX_PBL_SIZE, __stringify(MAX_PBL_SIZE))
> > diff --git a/pbl/Kconfig b/pbl/Kconfig
> > index dc31357..1edc2d1 100644
> > --- a/pbl/Kconfig
> > +++ b/pbl/Kconfig
> > @@ -34,6 +34,13 @@ config PBL_FORCE_PIGGYDATA_COPY
> >
> >  if PBL_IMAGE
> >
> > +config LOAD_PBL_SRAM
> > +     bool "Load pbl in SRAM"
> > +     help
> > +       Load the whole content of the pbl binary into SRAM. This is useful if you
> > +       use the pbl as a first stage bootloader but cannot load the whole binary
> > +       at the same time.
> > +
> >  config PBL_RELOCATABLE
> >       depends on ARM
> >       bool "relocatable pbl image"
> > --
> > 1.7.10.4
> >
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox
> >
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
