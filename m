Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gozDW-0007Dr-0D
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 23:24:28 +0000
Received: by mail-wm1-x341.google.com with SMTP id d15so592102wmb.3
 for <barebox@lists.infradead.org>; Wed, 30 Jan 2019 15:24:23 -0800 (PST)
MIME-Version: 1.0
References: <cover.419382c8daad35fe16e2722dfdf83304674a066b.1548760200.git-series.r.czerwinski@pengutronix.de>
 <d85fd6ff3a46012e532ee5b1f568ff1d5b3afe5a.1548760200.git-series.r.czerwinski@pengutronix.de>
 <CAHQ1cqH01_01H-+wgur4HEYfSaJWg_pFuGTK+6Wiw8wMxHDRug@mail.gmail.com>
 <1548832584.25432.13.camel@pengutronix.de>
In-Reply-To: <1548832584.25432.13.camel@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 30 Jan 2019 15:24:10 -0800
Message-ID: <CAHQ1cqE_jNWoz0kjP2g_JtVcJNo4GOg0ajKgjGfTn9NRNPFj8Q@mail.gmail.com>
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
Subject: Re: [PATCH 1/1] ARM: Initial OP-TEE support
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Tue, Jan 29, 2019 at 11:16 PM Rouven Czerwinski
<r.czerwinski@pengutronix.de> wrote:
>
> On Tue, 2019-01-29 at 14:35 -0800, Andrey Smirnov wrote:
> > On Tue, Jan 29, 2019 at 3:11 AM Rouven Czerwinski
> > <r.czerwinski@pengutronix.de> wrote:
> > >
> > > From: Sascha Hauer <s.hauer@xxxxxxxxxxxxxx>
> > >
> > > This adds initial support for OP-TEE, see https://www.op-tee.org/
> > >
> > > barebox starts in secure mode as usual. When booting a kernel
> > > the bootm code also loads the optee_os binary. Instead of jumping
> > > into the kernel barebox jumps into the optee_os binary and puts
> > > the kernel execution address into the lr register. OP-TEE then
> > > jumps into the kernel in nonsecure mode.
> > >
> > > The optee_os binary is passed with the -t option to bootm or
> > > with global.bootm.tee.
> > >
> > > Optionally OP-TEE can be compiled into barebox using the builtin
> > > firmware
> > > feature. Enable the Kconfig option and place or link your tee
> > > binary as
> > > optee.bin into the firmware directory.
> > >
> > > The amount of SDRAM which is kept free for OP-TEE is configurable.
> > >
> > > This patch was tested on a i.MX6 Nitrogen6x board.
> > >
> > > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > > Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> > > ---
> > >  arch/arm/cpu/Makefile              |   2 +-
> > >  arch/arm/cpu/start-kernel-optee.S  |  14 ++++-
> > >  arch/arm/cpu/start.c               |   3 +-
> > >  arch/arm/include/asm/armlinux.h    |   2 +-
> > >  arch/arm/include/asm/barebox-arm.h |   9 ++-
> > >  arch/arm/lib32/armlinux.c          |  10 ++-
> > >  arch/arm/lib32/bootm.c             | 109
> > > +++++++++++++++++++++++++++++-
> > >  arch/arm/lib32/bootu.c             |   2 +-
> > >  arch/arm/lib32/bootz.c             |   2 +-
> > >  commands/bootm.c                   |  11 ++-
> > >  common/Kconfig                     |  33 +++++++++-
> > >  common/bootm.c                     |   6 ++-
> > >  firmware/Kconfig                   |   3 +-
> > >  firmware/Makefile                  |   2 +-
> > >  include/bootm.h                    |   3 +-
> > >  include/tee/optee.h                |  30 ++++++++-
> > >  16 files changed, 234 insertions(+), 7 deletions(-)
> > >  create mode 100644 arch/arm/cpu/start-kernel-optee.S
> > >  create mode 100644 include/tee/optee.h
> > >
> > > diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
> > > index a35db43..e6e74e0 100644
> > > --- a/arch/arm/cpu/Makefile
> > > +++ b/arch/arm/cpu/Makefile
> > > @@ -12,6 +12,8 @@ obj-y += start.o entry.o
> > >
> > >  obj-pbl-y += setupc$(S64).o cache$(S64).o
> > >
> > > +obj-$(CONFIG_BOOTM_OPTEE) += start-kernel-optee.o
> > > +
> > >  #
> > >  # Any variants can be called as start-armxyz.S
> > >  #
> > > diff --git a/arch/arm/cpu/start-kernel-optee.S
> > > b/arch/arm/cpu/start-kernel-optee.S
> > > new file mode 100644
> > > index 0000000..ce5ac17
> > > --- /dev/null
> > > +++ b/arch/arm/cpu/start-kernel-optee.S
> > > @@ -0,0 +1,14 @@
> > > +#include <linux/linkage.h>
> > > +
> > > +ENTRY(start_kernel_optee)
> > > +        /*
> > > +         * r0 = optee
> > > +         * r1 = kernel
> > > +         * r2 = oftree
> > > +         */
> > > +         mov r4, r0
> > > +         mov r0, #0
> > > +         mov lr, r1
> > > +         mov r1, #0
> > > +         bx r4
> > > +ENDPROC(start_kernel_optee)
> > > diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
> > > index 768fa9e..e78a820 100644
> > > --- a/arch/arm/cpu/start.c
> > > +++ b/arch/arm/cpu/start.c
> > > @@ -226,6 +226,9 @@ __noreturn void barebox_non_pbl_start(unsigned
> > > long membase,
> > >
> > >         mem_malloc_init((void *)malloc_start, (void *)malloc_end -
> > > 1);
> > >
> > > +       if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
> > > +               of_add_reserve_entry(endmem -
> > > CONFIG_BOOTM_OPTEE_SIZE, endmem - 1);
> > > +
> > >         pr_debug("starting barebox...\n");
> > >
> > >         start_barebox();
> > > diff --git a/arch/arm/include/asm/armlinux.h
> > > b/arch/arm/include/asm/armlinux.h
> > > index 135f11b..6af9896 100644
> > > --- a/arch/arm/include/asm/armlinux.h
> > > +++ b/arch/arm/include/asm/armlinux.h
> > > @@ -40,6 +40,6 @@ struct image_data;
> > >
> > >  void start_linux(void *adr, int swap, unsigned long
> > > initrd_address,
> > >                  unsigned long initrd_size, void *oftree,
> > > -                enum arm_security_state);
> > > +                enum arm_security_state, void *optee);
> > >
> > >  #endif /* __ARCH_ARMLINUX_H */
> > > diff --git a/arch/arm/include/asm/barebox-arm.h
> > > b/arch/arm/include/asm/barebox-arm.h
> > > index e065b47..95765f9 100644
> > > --- a/arch/arm/include/asm/barebox-arm.h
> > > +++ b/arch/arm/include/asm/barebox-arm.h
> > > @@ -109,6 +109,15 @@ void *barebox_arm_boot_dtb(void);
> > >  static inline unsigned long arm_mem_stack_top(unsigned long
> > > membase,
> > >                                               unsigned long endmem)
> > >  {
> > > +       /*
> > > +        * FIXME:
> > > +        * OP-TEE expects to be executed somewhere at the end of
> > > RAM.
> > > +        * Since we normally occupy all RAM at the end, move
> > > ourselves
> > > +        * a bit lower.
> > > +        */
> > > +       if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
> > > +               return endmem - CONFIG_BOOTM_OPTEE_SIZE - SZ_64K;
> >
> > You can probably change it to:
> >
> > if (IS_ENABLED(CONFIG_BOOTM_OPTEE))
> >     endmem -= CONFIG_BOOTM_OPTEE_SIZE;
> >
> > to avoid hard-coding SZ_64K in two places
> >
> sensible, will fix.
>
> > > +
> > >         return endmem - SZ_64K;
> > >  }
> > >
> > > diff --git a/arch/arm/lib32/armlinux.c b/arch/arm/lib32/armlinux.c
> > > index c970f02..a1e3375 100644
> > > --- a/arch/arm/lib32/armlinux.c
> > > +++ b/arch/arm/lib32/armlinux.c
> > > @@ -258,9 +258,11 @@ static void setup_tags(unsigned long
> > > initrd_address,
> > >
> > >  }
> > >
> > > +void start_kernel_optee(void *optee, void *kernel, void *oftree);
> > > +
> > >  void start_linux(void *adr, int swap, unsigned long
> > > initrd_address,
> > >                  unsigned long initrd_size, void *oftree,
> > > -                enum arm_security_state state)
> > > +                enum arm_security_state state, void *optee)
> > >  {
> > >         void (*kernel)(int zero, int arch, void *params) = adr;
> > >         void *params = NULL;
> > > @@ -294,5 +296,9 @@ void start_linux(void *adr, int swap, unsigned
> > > long initrd_address,
> > >                 __asm__ __volatile__("mcr p15, 0, %0, c1, c0" ::
> > > "r" (reg));
> > >         }
> > >
> > > -       kernel(0, architecture, params);
> > > +       if (optee) {
> > > +               start_kernel_optee(optee, kernel, oftree);
> > > +       } else {
> > > +               kernel(0, architecture, params);
> > > +       }
> >
> > Just out of curiosity, can we return back to this function in
> > non-secure mode and just do:
> >
> > if (optee)
> >     optee();
> > kernel(0, architecture, params);
> >
> > ?
> I don't quite get your intention here. We can't start OP-TEE in non-
> secure mode and at least currently OP-TEE starts without returning back
> to barebox.
>

AFAICT the reason start_kernel_optee() exists is to initialize LR with
desired return address and facilitate starting kernel without
returning to Barebox. What I am trying to figure out is why of if the
"without returning" part is important. Can the OP-TEE start sequence
be modified to just execute OP-TEE, return back to the original caller
and then jump to kernel in a separate step? IOW, can
start_kernel_optee() be dropped and OP-TEE initialized via a regular
C-call?

> >
> > >  }
> > > diff --git a/arch/arm/lib32/bootm.c b/arch/arm/lib32/bootm.c
> > > index 4cf570e..69bf5bb 100644
> > > --- a/arch/arm/lib32/bootm.c
> > > +++ b/arch/arm/lib32/bootm.c
> > > @@ -4,6 +4,7 @@
> > >  #include <command.h>
> > >  #include <driver.h>
> > >  #include <environment.h>
> > > +#include <firmware.h>
> > >  #include <image.h>
> > >  #include <init.h>
> > >  #include <fs.h>
> > > @@ -19,6 +20,7 @@
> > >  #include <binfmt.h>
> > >  #include <restart.h>
> > >  #include <globalvar.h>
> > > +#include <tee/optee.h>
> > >
> > >  #include <asm/byteorder.h>
> > >  #include <asm/setup.h>
> > > @@ -133,11 +135,96 @@ static int get_kernel_addresses(size_t
> > > image_size,
> > >         return 0;
> > >  }
> > >
> > > +static int optee_verify_header_request_region(struct image_data
> > > *data, struct optee_header *hdr)
> > > +{
> > > +       int ret;
> >
> > This function uses "ret" in some really superfluous way. I'd consider
> > just dropping "ret".
> yes, will fix.
>
> >
> > > +
> > > +       if (hdr->magic != OPTEE_MAGIC) {
> > > +               printf("Invalid header magic 0x%08x, expected
> > > 0x%08x\n",
> > > +                      hdr->magic, OPTEE_MAGIC);
> > > +               ret = -EINVAL;
> > > +               return ret;
> > > +       }
> > > +
> > > +       if (hdr->arch != OPTEE_ARCH_ARM32 || hdr-
> > > >init_load_addr_hi) {
> > > +               printf("Only 32bit supported\n");
> > > +               ret = -EINVAL;
> > > +               return ret;
> > > +       }
> > > +
> > > +       data->tee_res = request_sdram_region("TEE", hdr-
> > > >init_load_addr_lo, hdr->init_size);
> > > +       if (!data->tee_res) {
> > > +               ret = -EBUSY;
> >
> > Underlying call to __request_region() in request_sdram_region() can
> > also return -EINVAL if, for example, requested region is too big. I
> > don't think hard-coding -EBUSY, really adds any useful info here.
> will fix.
>
> > > +               printf("Cannot request SDRAM region 0x%08x-0x%08x:
> > > %s\n",
> > > +                      hdr->init_load_addr_lo, hdr-
> > > >init_load_addr_lo + hdr->init_size - 1,
> > > +                      strerror(-ret));
> > > +       }
> > > +
> > > +       ret = 0;
> > > +       return ret;
> > > +}
> > > +
> > > +static int bootm_load_tee_from_firmware(struct image_data *data)
> > > +{
> > > +       int ret;
> > > +
> > > +       u8 *optee;
> > > +       size_t optee_size;
> > > +
> > > +       struct optee_header hdr;
> > > +
> > > +       get_builtin_firmware(optee_bin, &optee, &optee_size);
> > > +
> > > +       memcpy(optee, &hdr, sizeof(hdr));
> > > +
> > > +       ret = optee_verify_header_request_region(data, &hdr);
> > > +       if (ret < 0)
> > > +               return ret;
> > > +
> > > +       memcpy(optee, (void *)data->tee_res->start, hdr.init_size);
> > > +
> > > +       printf("Copied optee binary to 0x%08x, size 0x%08x\n",
> > > data->tee_res->start, hdr.init_size);
> > > +
> > > +       ret = 0;
> > > +       return ret;
> > > +}
> >
> > What if we instead do:
> >
> > get_builtin_firmware(optee_bin, &optee, &optee_size);
> > add_mem_device("optee", optee, optee_size, 0);
> >
> > and then handle that case via "/dev/optee" and
> > bootm_load_tee_from_file()? Is there any reason it wouldn't work?
> Thats a good idea to expose the idea and simplify the tee loading code.
>
> > Moreso, if that can be done we should consider just providing an API
> > to handle built-in firmware case and delegating that job to
> > individual
> > board files, so that we have the freedom of having per-board version
> > of OP-TEE firmware.
> The idea here was to not include the OP-TEE binary into the barebox
> upstream repository and only provide the option to include optee for
> production devices.
> I can't think of a use case where we want to include OP-TEE into an
> upstream barebox, since the features for OP-TEE (included early TAs,
> memory size,...) are quite specific for the use case.
>

Even if OP-TEE blob is never shipped in upstream repo, it seems that
it is entirely possible to have a use-case where user would have two+
boards of the same CPU architecture requiring different OP-TEE blobs.
Or is it a scenario that just doesn't exist in real-life?

What I am trying to say is that right now there's a central place
where get_builtin_firmware() is called that, besides hard-coding a
single OP-TEE binary, also requires a Kconfig option to be optional.
It seems that providing a simple macro like say:

#define export_builtin_firmware(fw, name) \
do { \
const u8 *__blob; \
size_t __size; \
get_builtin_firmware(fw, &__blob, &__size); \
add_mem_device(name, __blob, __size, 0); \
} while (0)

and leaving the job of calling that to individual board code will
allow you to drop extra Kconfig code and support multi or single
built-in OP-TEE builds.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
