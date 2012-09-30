Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TILXm-0005Lu-Vv
 for barebox@lists.infradead.org; Sun, 30 Sep 2012 15:35:02 +0000
Received: from mail187.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id C4769104E6B1
 for <barebox@lists.infradead.org>; Sun, 30 Sep 2012 17:41:05 +0200 (CEST)
Date: Sun, 30 Sep 2012 17:32:29 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120930153229.GU26553@game.jcrosoft.org>
References: <1348973437-31132-1-git-send-email-vicencb@gmail.com>
 <1348973437-31132-7-git-send-email-vicencb@gmail.com>
 <20120930140743.GS26553@game.jcrosoft.org>
 <CAAMcf8B0Qif3zVfw44zx5G813fYrMQTfUKi86Kr+JuFm=yf5rQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAMcf8B0Qif3zVfw44zx5G813fYrMQTfUKi86Kr+JuFm=yf5rQ@mail.gmail.com>
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
Subject: Re: [PATCH 6/9] omap4: add usb boot support
To: vj <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On 17:21 Sun 30 Sep     , vj wrote:
>    About the "need more explanation here", see:
>    lists.infradead.org/pipermail/barebox/2012-September/009865.html
>    omap_vector_init is disabled because it breaks usb booting.
>    Seems to be differences between u-boot and barebox. I don't know which
>    behaviour is the correct, but by now disable it as in u-boot.
no explaination in the commit or in the code

we debugging the code we do not re-read the ML we read the code or the history

and Sascha suggest tho use VBAR did you check out

Best Regards,
J.
> 
>    On Sun, Sep 30, 2012 at 4:07 PM, Jean-Christophe PLAGNIOL-VILLARD
>    <plagnioj@jcrosoft.com> wrote:
> 
>      On 04:50 Sun 30 Sep A  A  , vj wrote:
>      > ---
>      > A arch/arm/cpu/cpu.c A  A  A  A  A  A  A  A  A  A  A  A  A  A  A | A 
>      1 +
>      > A arch/arm/mach-omap/Kconfig A  A  A  A  A  A  A  A  A  A  A | A  7 +
>      > A arch/arm/mach-omap/Makefile A  A  A  A  A  A  A  A  A  A  | A  1 +
>      > A arch/arm/mach-omap/include/mach/omap4_rom_usb.h | 142 ++++++++
>      > A arch/arm/mach-omap/omap4_generic.c A  A  A  A  A  A  A | A 13 +
>      > A arch/arm/mach-omap/omap4_rom_usb.c A  A  A  A  A  A  A | 186
>      +++++++++++
>      > A scripts/.gitignore A  A  A  A  A  A  A  A  A  A  A  A  A  A  A | A 
>      1 +
>      > A scripts/Makefile A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A | A 
>      4 +
>      > A scripts/omap4_usbboot.c A  A  A  A  A  A  A  A  A  A  A  A  | 416
>      ++++++++++++++++++++++++
>      > A scripts/usb.h A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  |
>      A 61 ++++
>      > A scripts/usb_linux.c A  A  A  A  A  A  A  A  A  A  A  A  A  A  | 397
>      ++++++++++++++++++++++
>      > A 11 files changed, 1229 insertions(+)
>      > A create mode 100644 arch/arm/mach-omap/include/mach/omap4_rom_usb.h
>      > A create mode 100644 arch/arm/mach-omap/omap4_rom_usb.c
>      > A create mode 100644 scripts/omap4_usbboot.c
>      > A create mode 100644 scripts/usb.h
>      > A create mode 100644 scripts/usb_linux.c
>      >
>      > diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
>      > index 71ef8c0..05343de 100644
>      > --- a/arch/arm/cpu/cpu.c
>      > +++ b/arch/arm/cpu/cpu.c
>      > @@ -89,6 +89,7 @@ void arch_shutdown(void)
>      > A  A  A  A  A  A  A  : "r0", "r1", "r2", "r3", "r6", "r10", "r12",
>      "lr", "cc", "memory"
>      > A  A  A  );
>      > A #endif
>      > + A  A  __asm__ __volatile__ ("cpsid i\n");
>      > A }
>      >
>      > A #ifdef CONFIG_THUMB2_BAREBOX
>      > diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
>      > index d735284..16583cb 100644
>      > --- a/arch/arm/mach-omap/Kconfig
>      > +++ b/arch/arm/mach-omap/Kconfig
>      > @@ -96,6 +96,13 @@ config ARCH_TEXT_BASE
>      > A  A  A  default 0x80e80000 if MACH_OMAP343xSDP
>      > A  A  A  default 0x80e80000 if MACH_BEAGLE
>      >
>      > +config OMAP4_USBBOOT
>      > + A  A  bool "enable booting from USB"
>      > + A  A  default n
>      > + A  A  depends on ARCH_OMAP4 && !MMU
>      > + A  A  help
>      > + A  A  A  Enable this to enable USB booting
>      > +
>      > A config BOARDINFO
>      > A  A  A  default "Texas Instrument's SDP343x" if MACH_OMAP343xSDP
>      > A  A  A  default "Texas Instrument's Beagle" if MACH_BEAGLE
>      > diff --git a/arch/arm/mach-omap/Makefile b/arch/arm/mach-omap/Makefile
>      > index f087f4b..e89f6ed 100644
>      > --- a/arch/arm/mach-omap/Makefile
>      > +++ b/arch/arm/mach-omap/Makefile
>      > @@ -30,4 +30,5 @@ obj-$(CONFIG_OMAP3_CLOCK_CONFIG) += omap3_clock.o
>      > A obj-$(CONFIG_OMAP_GPMC) += gpmc.o devices-gpmc-nand.o
>      > A obj-$(CONFIG_SHELL_NONE) += xload.o
>      > A obj-$(CONFIG_I2C_TWL6030) += omap4_twl6030_mmc.o
>      > +obj-$(CONFIG_OMAP4_USBBOOT) += omap4_rom_usb.o
>      > A obj-y += gpio.o
>      > diff --git a/arch/arm/mach-omap/include/mach/omap4_rom_usb.h
>      b/arch/arm/mach-omap/include/mach/omap4_rom_usb.h
>      > new file mode 100644
>      > index 0000000..b7818df
>      > --- /dev/null
>      > +++ b/arch/arm/mach-omap/include/mach/omap4_rom_usb.h
>      > @@ -0,0 +1,142 @@
>      > +/*
>      > + * Copyright (C) 2010 The Android Open Source Project
>      > + * All rights reserved.
>      > + *
>      > + * Redistribution and use in source and binary forms, with or without
>      > + * modification, are permitted provided that the following conditions
>      > + * are met:
>      > + * A * Redistributions of source code must retain the above copyright
>      > + * A  A notice, this list of conditions and the following disclaimer.
>      > + * A * Redistributions in binary form must reproduce the above
>      copyright
>      > + * A  A notice, this list of conditions and the following disclaimer
>      in
>      > + * A  A the documentation and/or other materials provided with the
>      > + * A  A distribution.
>      > + *
>      > + * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
>      CONTRIBUTORS
>      > + * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
>      > + * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
>      > + * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
>      > + * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
>      INDIRECT,
>      > + * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
>      (INCLUDING,
>      > + * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
>      LOSS
>      > + * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
>      > + * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
>      LIABILITY,
>      > + * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
>      > + * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
>      > + * SUCH DAMAGE.
>      > + */
>      > +
>      > +#ifndef _OMAP4_ROM_USB_H_
>      > +#define _OMAP4_ROM_USB_H_
>      > +
>      > +/* public api */
>      > +#define PUBLIC_API_BASE_4430 A  A  A  A  (0x28400)
>      > +#define PUBLIC_API_BASE_4460 A  A  A  A  (0x30400)
>      > +
>      > +#define PUBLIC_GET_DRIVER_MEM_OFFSET (0x04)
>      > +#define PUBLIC_GET_DRIVER_PER_OFFSET (0x08)
>      > +#define PUBLIC_GET_DEVICE_MEM_OFFSET (0x80)
>      > +#define PUBLIC_GET_DEVICE_PER_OFFSET (0x84)
>      > +
>      > +#define DEVICE_NULL A 0x40
>      > +#define DEVICE_UART1 0x41
>      > +#define DEVICE_UART2 0x42
>      > +#define DEVICE_UART3 0x43
>      > +#define DEVICE_UART4 0x44
>      > +#define DEVICE_USB A  0x45
>      > +#define DEVICE_USBEXT A  A  A  A 0x46
>      > +
>      > +#define XFER_MODE_CPU 0
>      > +#define XFER_MODE_DMA 1
>      > +
>      > +#define STATUS_OKAY A  A  A  A  A 0
>      > +#define STATUS_FAILED A  A  A  A  A  A  A  A 1
>      > +#define STATUS_TIMEOUT A  A  A  A  A  A  A  2
>      > +#define STATUS_BAD_PARAM A  A  3
>      > +#define STATUS_WAITING A  A  A  A  A  A  A  4
>      > +#define STATUS_NO_MEMORY A  A  5
>      > +#define STATUS_INVALID_PTR A  6
>      > +
>      > +/* Memory ROM interface */
>      > +struct read_desc {
>      > + A  A  u32 sector_start;
>      > + A  A  u32 sector_count;
>      > + A  A  void *destination;
>      > +};
>      > +
>      > +struct mem_device {
>      > + A  A  u32 initialized;
>      > + A  A  u8 device_type;
>      > + A  A  u8 trials_count;
>      > + A  A  u32 xip_device;
>      > + A  A  u16 search_size;
>      > + A  A  u32 base_address;
>      > + A  A  u16 hs_toc_mask;
>      > + A  A  u16 gp_toc_mask;
>      > + A  A  void *device_data;
>      > + A  A  u16 *boot_options;
>      > +};
>      > +
>      > +struct mem_driver {
>      > + A  A  int (*init)(struct mem_device *md);
>      > + A  A  int (*read)(struct mem_device *md, struct read_desc *rd);
>      > + A  A  int (*configure)(struct mem_device *md, void *config);
>      > +};
>      > +
>      > +
>      > +/* Peripheral ROM interface */
>      > +struct per_handle {
>      > + A  A  void *set_to_null;
>      > + A  A  void (*callback)(struct per_handle *rh);
>      > + A  A  void *data;
>      > + A  A  u32 length;
>      > + A  A  u16 *options;
>      > + A  A  u32 xfer_mode;
>      > + A  A  u32 device_type;
>      > + A  A  u32 status;
>      > + A  A  u16 hs_toc_mask;
>      > + A  A  u16 gp_toc_mask;
>      > + A  A  u32 config_timeout;
>      > +};
>      > +
>      > +struct per_driver {
>      > + A  A  int (*init)(struct per_handle *rh);
>      > + A  A  int (*read)(struct per_handle *rh);
>      > + A  A  int (*write)(struct per_handle *rh);
>      > + A  A  int (*close)(struct per_handle *rh);
>      > + A  A  int (*config)(struct per_handle *rh, void *x);
>      > +};
>      > +
>      > +#define USB_SETCONFIGDESC_ATTRIBUTES A  A  A (0)
>      > +#define USB_SETCONFIGDESC_MAXPOWER A  A  A  A (1)
>      > +#define USB_SETSUSPEND_CALLBACK A  A  A  A  A  (2)
>      > +struct per_usb_config {
>      > + A  A  u32 configid;
>      > + A  A  u32 value;
>      > +};
>      > +
>      > +#define API(n) ((void *) (*((u32 *) (n))))
>      > +/* ROM API End */
>      > +
>      > +struct omap4_usbboot {
>      > + A  A  struct per_handle dread;
>      > + A  A  struct per_handle dwrite;
>      > + A  A  struct per_driver *io;
>      > +};
>      > +
>      > +int omap4_usbboot_open(void);
>      > +void omap4_usbboot_close(void);
>      > +
>      > +void omap4_usbboot_queue_read(void *data, unsigned len);
>      > +int omap4_usbboot_wait_read(void);
>      > +int omap4_usbboot_is_read_waiting(void);
>      > +int omap4_usbboot_is_read_ok(void);
>      > +
>      > +void omap4_usbboot_queue_write(void *data, unsigned len);
>      > +int omap4_usbboot_wait_write(void);
>      > +
>      > +int omap4_usbboot_read(void *data, unsigned len);
>      > +int omap4_usbboot_write(void *data, unsigned len);
>      > +void omap4_usbboot_puts(const char *s);
>      > +
>      > +#endif
>      > diff --git a/arch/arm/mach-omap/omap4_generic.c
>      b/arch/arm/mach-omap/omap4_generic.c
>      > index 6562268..ee62cf2 100644
>      > --- a/arch/arm/mach-omap/omap4_generic.c
>      > +++ b/arch/arm/mach-omap/omap4_generic.c
>      > @@ -8,6 +8,9 @@
>      > A #include <mach/xload.h>
>      > A #include <mach/gpmc.h>
>      > A #include <mach/gpio.h>
>      > +#ifdef CONFIG_OMAP4_USBBOOT
>      > +#include <mach/omap4_rom_usb.h>
>      > +#endif
>      >
>      > A /*
>      > A  * A The following several lines are taken from U-Boot to support
>      > @@ -457,6 +460,15 @@ static int watchdog_init(void)
>      > A }
>      > A late_initcall(watchdog_init);
>      >
>      > +#ifdef CONFIG_OMAP4_USBBOOT
>      > +static int omap4_usbboot_init(void)
>      > +{
>      > + A  A  omap4_usbboot_open();
>      > + A  A  omap4_usbboot_puts("USB communications initialized\n");
>      > + A  A  return 0;
>      > +}
>      > +postcore_initcall(omap4_usbboot_init);
>      > +#else
>      > A static int omap_vector_init(void)
>      > A {
>      > A  A  A  __asm__ __volatile__ (
>      > @@ -470,6 +482,7 @@ static int omap_vector_init(void)
>      > A  A  A  return 0;
>      > A }
>      > A core_initcall(omap_vector_init);
>      > +#endif
>      need more explanation here
>      >
>      > A #define OMAP4_TRACING_VECTOR3 0x4030d048
>      >
>      > diff --git a/arch/arm/mach-omap/omap4_rom_usb.c
>      b/arch/arm/mach-omap/omap4_rom_usb.c
>      > new file mode 100644
>      > index 0000000..741f2b7
>      > --- /dev/null
>      > +++ b/arch/arm/mach-omap/omap4_rom_usb.c
>      > @@ -0,0 +1,186 @@
>      > +/*
>      > + * This code is based on:
>      > + * git://github.com/swetland/omap4boot.git
>      > + */
>      > +/*
>      > + * Copyright (C) 2010 The Android Open Source Project
>      > + * All rights reserved.
>      > + *
>      > + * Redistribution and use in source and binary forms, with or without
>      > + * modification, are permitted provided that the following conditions
>      > + * are met:
>      > + * A * Redistributions of source code must retain the above copyright
>      > + * A  A notice, this list of conditions and the following disclaimer.
>      > + * A * Redistributions in binary form must reproduce the above
>      copyright
>      > + * A  A notice, this list of conditions and the following disclaimer
>      in
>      > + * A  A the documentation and/or other materials provided with the
>      > + * A  A distribution.
>      > + *
>      > + * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
>      CONTRIBUTORS
>      > + * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
>      > + * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
>      > + * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
>      > + * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
>      INDIRECT,
>      > + * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
>      (INCLUDING,
>      > + * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
>      LOSS
>      > + * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
>      > + * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
>      LIABILITY,
>      > + * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
>      > + * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
>      > + * SUCH DAMAGE.
>      > + */
>      > +
>      > +#include <common.h>
>      > +#include <mach/omap4-silicon.h>
>      > +#include <mach/omap4_rom_usb.h>
>      > +
>      > +struct omap4_usbboot *omap4_usbboot_pdata;
>      > +
>      > +int omap4_usbboot_open(void)
>      > +{
>      > + A  A  int (*rom_get_per_driver)(struct per_driver **io, u32
>      device_type);
>      > + A  A  int (*rom_get_per_device)(struct per_handle **rh);
>      > + A  A  struct per_handle *boot;
>      > + A  A  int n;
>      > + A  A  u32 base;
>      > +
>      > + A  A  if (omap4_revision() >= OMAP4460_ES1_0)
>      > + A  A  A  A  A  A  base = PUBLIC_API_BASE_4460;
>      > + A  A  else
>      > + A  A  A  A  A  A  base = PUBLIC_API_BASE_4430;
>      > +
>      > + A  A  rom_get_per_driver = API(base + PUBLIC_GET_DRIVER_PER_OFFSET);
>      > + A  A  rom_get_per_device = API(base + PUBLIC_GET_DEVICE_PER_OFFSET);
>      > +
>      > + A  A  n = rom_get_per_device(&boot);
>      > + A  A  if (n)
>      > + A  A  A  A  A  A  return n;
>      > +
>      > + A  A  if ((boot->device_type != DEVICE_USB) &&
>      > + A  A  A  A  (boot->device_type != DEVICE_USBEXT))
>      > + A  A  A  A  A  A  return -1;
>      > +
>      > + A  A  omap4_usbboot_pdata = xzalloc(sizeof(struct omap4_usbboot));
>      > + A  A  n = rom_get_per_driver(&omap4_usbboot_pdata->io,
>      boot->device_type);
>      > + A  A  if (n)
>      > + A  A  A  A  A  A  return n;
>      > +
>      > + A  A  omap4_usbboot_pdata->dread.status = -1;
>      > + A  A  omap4_usbboot_pdata->dread.xfer_mode = boot->xfer_mode;
>      > + A  A  omap4_usbboot_pdata->dread.options = boot->options;
>      > + A  A  omap4_usbboot_pdata->dread.device_type = boot->device_type;
>      > +
>      > + A  A  omap4_usbboot_pdata->dwrite.status = -1;
>      > + A  A  omap4_usbboot_pdata->dwrite.xfer_mode = boot->xfer_mode;
>      > + A  A  omap4_usbboot_pdata->dwrite.options = boot->options;
>      > + A  A  omap4_usbboot_pdata->dwrite.device_type = boot->device_type;
>      > + A  A  __asm__ __volatile__ ("cpsie i\n");
>      > + A  A  return 0;
>      > +}
>      > +
>      > +
>      > +static void rom_read_callback(struct per_handle *rh)
>      > +{
>      > + A  A  omap4_usbboot_pdata->dread.status = rh->status;
>      > + A  A  return;
>      > +}
>      > +
>      > +void omap4_usbboot_queue_read(void *data, unsigned len)
>      > +{
>      > + A  A  int n;
>      > + A  A  omap4_usbboot_pdata->dread.data = data;
>      > + A  A  omap4_usbboot_pdata->dread.length = len;
>      > + A  A  omap4_usbboot_pdata->dread.status = STATUS_WAITING;
>      > + A  A  omap4_usbboot_pdata->dread.xfer_mode = 1;
>      > + A  A  omap4_usbboot_pdata->dread.callback = rom_read_callback;
>      > + A  A  n =
>      omap4_usbboot_pdata->io->read(&omap4_usbboot_pdata->dread);
>      > + A  A  if (n)
>      > + A  A  A  A  A  A  omap4_usbboot_pdata->dread.status = n;
>      > +}
>      > +
>      > +int omap4_usbboot_wait_read(void)
>      > +{
>      > + A  A  int ret;
>      > + A  A  while (omap4_usbboot_pdata->dread.status == STATUS_WAITING)
>      > + A  A  A  A  A  A  /* cpu_relax(); */
>      > + A  A  A  A  A  A  barrier();
>      > + A  A  ret = omap4_usbboot_pdata->dread.status;
>      > + A  A  omap4_usbboot_pdata->dread.status = -1;
>      > + A  A  return ret;
>      > +}
>      > +int omap4_usbboot_is_read_waiting(void)
>      > +{
>      > + A  A  barrier();
>      > + A  A  return omap4_usbboot_pdata->dread.status == STATUS_WAITING;
>      > +}
>      > +int omap4_usbboot_is_read_ok(void)
>      > +{
>      > + A  A  barrier();
>      > + A  A  return omap4_usbboot_pdata->dread.status == STATUS_OKAY;
>      > +}
>      > +
>      > +static void rom_write_callback(struct per_handle *rh)
>      > +{
>      > + A  A  omap4_usbboot_pdata->dwrite.status = rh->status;
>      > + A  A  return;
>      > +}
>      > +
>      > +void omap4_usbboot_queue_write(void *data, unsigned len)
>      > +{
>      > + A  A  int n;
>      > + A  A  omap4_usbboot_pdata->dwrite.data = data;
>      > + A  A  omap4_usbboot_pdata->dwrite.length = len;
>      > + A  A  omap4_usbboot_pdata->dwrite.status = STATUS_WAITING;
>      > + A  A  omap4_usbboot_pdata->dwrite.xfer_mode = 1;
>      > + A  A  omap4_usbboot_pdata->dwrite.callback = rom_write_callback;
>      > + A  A  n =
>      omap4_usbboot_pdata->io->write(&omap4_usbboot_pdata->dwrite);
>      > + A  A  if (n)
>      > + A  A  A  A  A  A  omap4_usbboot_pdata->dwrite.status = n;
>      > +}
>      > +
>      > +int omap4_usbboot_wait_write(void)
>      > +{
>      > + A  A  int ret;
>      > + A  A  while (omap4_usbboot_pdata->dwrite.status == STATUS_WAITING)
>      > + A  A  A  A  A  A  /* cpu_relax(); */
>      > + A  A  A  A  A  A  barrier();
>      > + A  A  ret = omap4_usbboot_pdata->dwrite.status;
>      > + A  A  omap4_usbboot_pdata->dwrite.status = -1;
>      > + A  A  return ret;
>      > +}
>      > +
>      > +#define USB_MAX_IO 65536
>      > +int omap4_usbboot_read(void *data, unsigned len)
>      > +{
>      > + A  A  unsigned xfer;
>      > + A  A  unsigned char *x = data;
>      > + A  A  int n;
>      > + A  A  while (len > 0) {
>      > + A  A  A  A  A  A  xfer = (len > USB_MAX_IO) ? USB_MAX_IO : len;
>      > + A  A  A  A  A  A  omap4_usbboot_queue_read(x, xfer);
>      > + A  A  A  A  A  A  n = omap4_usbboot_wait_read();
>      > + A  A  A  A  A  A  if (n)
>      > + A  A  A  A  A  A  A  A  A  A  return n;
>      > + A  A  A  A  A  A  x += xfer;
>      > + A  A  A  A  A  A  len -= xfer;
>      > + A  A  }
>      > + A  A  return 0;
>      > +}
>      > +
>      > +int omap4_usbboot_write(void *data, unsigned len)
>      > +{
>      > + A  A  omap4_usbboot_queue_write(data, len);
>      > + A  A  return omap4_usbboot_wait_write();
>      > +}
>      > +
>      > +void omap4_usbboot_close(void)
>      > +{
>      > + A  A  omap4_usbboot_pdata->io->close(&omap4_usbboot_pdata->dread);
>      > +}
>      > +
>      > +void omap4_usbboot_puts(const char *s)
>      > +{
>      > + A  A  u32 c;
>      > + A  A  while ((c = *s++))
>      > + A  A  A  A  A  A  omap4_usbboot_write(&c, 4);
>      > +}
>      can you put a device driver for this
>      > diff --git a/scripts/.gitignore b/scripts/.gitignore
>      > index 6e63f85..4fb5a1f 100644
>      > --- a/scripts/.gitignore
>      > +++ b/scripts/.gitignore
>      > @@ -5,3 +5,4 @@ kallsyms
>      > A mkimage
>      > A mkublheader
>      > A omap_signGP
>      > +omap4_usbboot
>      > diff --git a/scripts/Makefile b/scripts/Makefile
>      > index 7ca5e29..6c1b113 100644
>      > --- a/scripts/Makefile
>      > +++ b/scripts/Makefile
>      > @@ -4,6 +4,8 @@
>      > A #
>      ---------------------------------------------------------------------------
>      > A # kallsyms: A  A  A Find all symbols in barebox
>      >
>      > +HOSTLDFLAGS A  += -lpthread
>      > +
>      no the -lpthread is for omap4_usbboot target olny
> 
>      is HOSTLOADLIBES_omap4_usbboot
>      and HOSTCFLAGS_omap4_usbboot.o for specifc header and lib
>      > A hostprogs-$(CONFIG_KALLSYMS) A  A  += kallsyms
>      > A hostprogs-y A  A  A  A  A  A  A  A  A  A  A += bin2c
>      > A hostprogs-y A  A  A  A  A  A  A  A  A  A  A += mkimage
>      > @@ -12,6 +14,8 @@ hostprogs-$(CONFIG_ARCH_NETX) A  A += gen_netx_image
>      > A hostprogs-$(CONFIG_ARCH_OMAP) A  A += omap_signGP
>      > A hostprogs-$(CONFIG_ARCH_S5PCxx) A += s5p_cksum
>      > A hostprogs-$(CONFIG_ARCH_DAVINCI) += mkublheader
>      > +hostprogs-$(CONFIG_OMAP4_USBBOOT)+= omap4_usbboot
>      > +omap4_usbboot-objs A  A  A  A  A  A  A  := usb_linux.o
>      omap4_usbboot.o
>      >
>      > A always A  A  A  A  A  A  A  := $(hostprogs-y) $(hostprogs-m)
>      >
>      > diff --git a/scripts/omap4_usbboot.c b/scripts/omap4_usbboot.c
>      > new file mode 100644
>      > index 0000000..aa11759
>      > --- /dev/null
>      > +++ b/scripts/omap4_usbboot.c
>      > @@ -0,0 +1,416 @@
>      > +/*
>      > + * This program is free software; you can redistribute it and/or
>      > + * modify it under the terms of the GNU General Public License
>      > + * version 2 as published by the Free Software Foundation.
>      > + *
>      > + * This program is distributed in the hope that it will be useful,
>      > + * but WITHOUT ANY WARRANTY; without even the implied warranty of
>      > + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. A See the
>      > + * GNU General Public License for more details.
>      > + *
>      > + * You should have received a copy of the GNU General Public License
>      > + * along with this program; if not, write to the Free Software
>      > + * Foundation, Inc., 59 Temple Place, Suite 330, Boston,
>      > + * MA 02111-1307 USA
>      > + */
>      > +
>      > +#include <stdio.h>
>      > +#include <stdlib.h>
>      > +#include <unistd.h>
>      > +#include <sys/stat.h>
>      > +#include <stdint.h>
>      > +#include <fcntl.h>
>      > +#include <string.h>
>      > +#include <sys/mman.h>
>      > +#include <pthread.h>
>      > +#include <termios.h>
>      > +
>      > +#include "usb.h"
>      > +
>      > +#define USBBOOT_FS_MAGIC A  A  0x5562464D
>      > +#define USBBOOT_FS_CMD_OPEN A 0x46530000
>      > +#define USBBOOT_FS_CMD_CLOSE 0x46530001
>      > +#define USBBOOT_FS_CMD_READ A 0x46530002
>      > +#define USBBOOT_FS_CMD_END A  0x4653FFFF
>      > +#define MAX_OPEN_FILES A  A  A  1000
>      > +
>      > +#define RESET A  0
>      > +#define BRIGHT A 1
>      > +#define WHITE A  8
>      > +#define RED A  A  1
>      > +#define BLACK A  0
>      > +#define FORMAT A  A  A  A "%c[%d;%d;%dm"
>      > +#define TARGET_FORMAT 0x1B, BRIGHT, RED+30, BLACK+40
>      > +#define HOST_FORMAT A  0x1B, RESET, WHITE+30, BLACK+40
>      > +#define host_print(fmt, arg...) A  A  A printf(FORMAT fmt FORMAT"\n",
>      \
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  HOST_FORMAT,
>      ##arg, TARGET_FORMAT)
>      > +
>      > +struct thread_vars {
>      > + A  A  struct usb_handle *usb;
>      > + A  A  int hide;
>      > + A  A  struct termios to;
>      > +};
>      > +void *listenerTask(void *argument)
>      > +{
>      > + A  A  struct thread_vars *vars = argument;
>      > + A  A  int c;
>      > + A  A  for (;;) {
>      > + A  A  A  A  A  A  c = getchar();
>      > + A  A  A  A  A  A  if (c == EOF)
>      > + A  A  A  A  A  A  A  A  A  A  return NULL;
>      > + A  A  A  A  A  A  while (vars->hide)
>      > + A  A  A  A  A  A  A  A  A  A  usleep(10000);
>      > + A  A  A  A  A  A  if (usb_write(vars->usb, &c, 4) != 4) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("could not send '%c' to
>      target", c);
>      > + A  A  A  A  A  A  A  A  A  A  tcsetattr(STDIN_FILENO, TCSANOW,
>      &vars->to);
>      > + A  A  A  A  A  A  A  A  A  A  exit(1);
>      > + A  A  A  A  A  A  }
>      > + A  A  }
>      > + A  A  return NULL;
>      > +}
>      > +struct file_data {
>      > + A  A  size_t size;
>      > + A  A  void *data;
>      > +};
>      > +
>      > +int read_asic_id(struct usb_handle *usb)
>      > +{
>      > +#define LINEWIDTH 16
>      > + A  A  const uint32_t msg_getid = 0xF0030003;
>      > + A  A  int i, j, k, ret;
>      > + A  A  uint8_t id[81];
>      > + A  A  char line[LINEWIDTH*3+8];
>      > +
>      > + A  A  printf("reading ASIC ID\n");
>      > + A  A  memset(id , 0xee, sizeof(id));
>      > + A  A  if (usb_write(usb, &msg_getid, sizeof(msg_getid)) !=
>      > + A  A  A  A  A  A  sizeof(msg_getid)
>      > + A  A  ) {
>      > + A  A  A  A  A  A  printf("Could not send msg_getid request\n");
>      > + A  A  A  A  A  A  return -1;
>      > + A  A  }
>      > + A  A  if (usb_read(usb, id, sizeof(id)) != sizeof(id)) {
>      > + A  A  A  A  A  A  printf("Could not read msg_getid answer\n");
>      > + A  A  A  A  A  A  return -1;
>      > + A  A  }
>      > + A  A  for (i = 0; i < sizeof(id); i += LINEWIDTH) {
>      > + A  A  A  A  A  A  sprintf(line, "%02X: ", i);
>      > + A  A  A  A  A  A  for (j = 0; j < LINEWIDTH && j < sizeof(id)-i;
>      j++)
>      > + A  A  A  A  A  A  A  A  A  A  sprintf(line+4+j*3, "%02X ", id[i+j]);
>      > + A  A  A  A  A  A  line[4+j*3+0] = '\n';
>      > + A  A  A  A  A  A  line[4+j*3+1] = 0;
>      > + A  A  A  A  A  A  printf(line);
>      > + A  A  }
>      > + A  A  ret = 0;
>      > + A  A  for (i = 1, j = 0; i < sizeof(id) && j < id[0]; i +=
>      2+id[i+1], j++) {
>      > + A  A  A  A  A  A  if (i+2+id[i+1] > sizeof(id)) {
>      > + A  A  A  A  A  A  A  A  A  A  printf("Truncated subblock\n");
>      > + A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  continue;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  switch (id[i]) {
>      > + A  A  A  A  A  A  case 0x01: /* ID subblock */
>      > + A  A  A  A  A  A  A  A  A  A  if (id[i+1] != 0x05) {
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  printf("Unexpected ID
>      subblock size\n");
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  continue;
>      > + A  A  A  A  A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  A  A  A  A  if (id[i+2] != 0x01)
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  printf("Unexpected fixed
>      value\n");
>      > + A  A  A  A  A  A  A  A  A  A  k = (id[i+3]<<8) | id[i+4];
>      > + A  A  A  A  A  A  A  A  A  A  switch (k) {
>      > + A  A  A  A  A  A  A  A  A  A  case 0x4440:
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  printf("OMAP 4460
>      Device\n");
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  A  A  A  A  default:
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  printf("Unknown
>      Device\n");
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  A  A  A  A  switch (id[i+5]) {
>      > + A  A  A  A  A  A  A  A  A  A  case 0x07:
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  printf("CH enabled (read
>      from eFuse)\n");
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  A  A  A  A  case 0x17:
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  printf("CH disabled (read
>      from eFuse)\n");
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  A  A  A  A  default:
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  printf("Unknown CH
>      setting\n");
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  A  A  A  A  printf("Rom version: %hhu\n",
>      id[i+6]);
>      > + A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  case 0x15: /* Checksum subblock */
>      > + A  A  A  A  A  A  A  A  A  A  if (id[i+1] != 0x09) {
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  printf("Unexpected
>      Checksum subblock size\n");
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  continue;
>      > + A  A  A  A  A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  A  A  A  A  if (id[i+2] != 0x01)
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  printf("Unexpected fixed
>      value\n");
>      > + A  A  A  A  A  A  A  A  A  A  k = (id[i+3]<<24) | (id[i+4]<<16) |
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  (id[i+5]<<8) | id[i+6];
>      > + A  A  A  A  A  A  A  A  A  A  printf("Rom CRC: 0x%08X\n", k);
>      > + A  A  A  A  A  A  A  A  A  A  k = (id[i+7]<<24) | (id[i+8]<<16) |
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  (id[i+9]<<8) | id[i+10];
>      > + A  A  A  A  A  A  A  A  A  A  switch (k) {
>      > + A  A  A  A  A  A  A  A  A  A  case A 0:
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  printf("A GP device\n");
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  A  A  A  A  default:
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  printf("Unknown
>      device\n");
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  }
>      > + A  A  }
>      > + A  A  if (i != sizeof(id) || j != id[0]) {
>      > + A  A  A  A  A  A  printf("Unexpected ASIC ID structure size.\n");
>      > + A  A  A  A  A  A  ret++;
>      > + A  A  }
>      > + A  A  return ret;
>      > +}
>      > +
>      > +int process_file(
>      > + A  A  struct usb_handle *usb, const char *rootfs, struct file_data
>      *fd_vector)
>      > +{
>      > + A  A  uint32_t i, j, pos, size;
>      > + A  A  struct stat s;
>      > + A  A  int fd, ret;
>      > + A  A  char line[256];
>      > +
>      > + A  A  if (usb_read(usb, &i, 4) != 4) {
>      > + A  A  A  A  A  A  host_print("USB error");
>      > + A  A  A  A  A  A  exit(1);
>      > + A  A  }
>      > + A  A  ret = 0;
>      > + A  A  switch (i) {
>      > + A  A  case USBBOOT_FS_CMD_OPEN:
>      > + A  A  A  A  A  A  for (j = 0; rootfs[j]; j++)
>      > + A  A  A  A  A  A  A  A  A  A  line[j] = rootfs[j];
>      > + A  A  A  A  A  A  for (;; j++) {
>      > + A  A  A  A  A  A  A  A  A  A  if (usb_read(usb, &i, 4) != 4) {
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  host_print("USB error");
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  exit(1);
>      > + A  A  A  A  A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  A  A  A  A  if (i == USBBOOT_FS_CMD_END) {
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  line[j] = 0;
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  A  A  A  A  } else if (i > 0xFF) {
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  host_print("Error in
>      filename");
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  line[j] = 0;
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  A  A  A  A  } else
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  line[j] = i;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  for (i = 0; i < MAX_OPEN_FILES &&
>      fd_vector[i].data; i++)
>      > + A  A  A  A  A  A  A  A  A  A  ;
>      > + A  A  A  A  A  A  if (i >= MAX_OPEN_FILES) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("MAX_OPEN_FILES exceeded");
>      > + A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  goto open_error_1;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  fd = open(line, O_RDONLY);
>      > + A  A  A  A  A  A  if (fd < 0) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("cannot open '%s'", line);
>      > + A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  goto open_error_1;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  if (fstat(fd, &s)) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("cannot stat '%s'", line);
>      > + A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  goto open_error_2;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  fd_vector[i].data = mmap(NULL, s.st_size,
>      PROT_READ,
>      > + A  A  A  A  A  A  A  A  A  A  MAP_PRIVATE, fd, 0);
>      > + A  A  A  A  A  A  if (fd_vector[i].data == MAP_FAILED) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("cannot mmap '%s'", line);
>      > + A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  goto open_error_2;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  close(fd);
>      > + A  A  A  A  A  A  fd_vector[i].size = size = s.st_size;
>      > + A  A  A  A  A  A  fd = i;
>      > + A  A  A  A  A  A  goto open_ok;
>      > +
>      > +open_error_2:
>      > + A  A  A  A  A  A  close(fd);
>      > +open_error_1:
>      > + A  A  A  A  A  A  fd_vector[i].size = size = 0;
>      > + A  A  A  A  A  A  fd = -1;
>      > +open_ok:
>      > + A  A  A  A  A  A  if (usb_write(usb, &fd, 4) != 4 ||
>      > + A  A  A  A  A  A  A  A  A  A  usb_write(usb, &size, 4) != 4
>      > + A  A  A  A  A  A  ) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("could not send file size
>      to target");
>      > + A  A  A  A  A  A  A  A  A  A  exit(1);
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  break;
>      > + A  A  case USBBOOT_FS_CMD_CLOSE:
>      > + A  A  A  A  A  A  if (usb_read(usb, &i, 4) != 4) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("USB error");
>      > + A  A  A  A  A  A  A  A  A  A  exit(1);
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  if (i >= MAX_OPEN_FILES || !fd_vector[i].data) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("invalid close index");
>      > + A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  if (usb_read(usb, &j, 4) != 4) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("USB error");
>      > + A  A  A  A  A  A  A  A  A  A  exit(1);
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  if (j != USBBOOT_FS_CMD_END) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("invalid close");
>      > + A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  munmap(fd_vector[i].data, fd_vector[i].size);
>      > + A  A  A  A  A  A  fd_vector[i].data = NULL;
>      > + A  A  A  A  A  A  break;
>      > + A  A  case USBBOOT_FS_CMD_READ:
>      > + A  A  A  A  A  A  if (usb_read(usb, &i, 4) != 4) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("USB error");
>      > + A  A  A  A  A  A  A  A  A  A  exit(1);
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  if (i >= MAX_OPEN_FILES || !fd_vector[i].data) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("invalid read index");
>      > + A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  if (usb_read(usb, &pos, 4) != 4) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("USB error");
>      > + A  A  A  A  A  A  A  A  A  A  exit(1);
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  if (pos >= fd_vector[i].size) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("invalid read pos");
>      > + A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  if (usb_read(usb, &size, 4) != 4) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("USB error");
>      > + A  A  A  A  A  A  A  A  A  A  exit(1);
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  if (pos+size > fd_vector[i].size) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("invalid read size");
>      > + A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  if (usb_read(usb, &j, 4) != 4) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("USB error");
>      > + A  A  A  A  A  A  A  A  A  A  exit(1);
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  if (j != USBBOOT_FS_CMD_END) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("invalid read");
>      > + A  A  A  A  A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  if (usb_write(usb, fd_vector[i].data+pos, size) !=
>      size) {
>      > + A  A  A  A  A  A  A  A  A  A  host_print("could not send file to
>      target");
>      > + A  A  A  A  A  A  A  A  A  A  exit(1);
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  break;
>      > + A  A  case USBBOOT_FS_CMD_END:
>      > + A  A  default:
>      > + A  A  A  A  A  A  host_print("Unknown filesystem command");
>      > + A  A  A  A  A  A  ret++;
>      > + A  A  A  A  A  A  break;
>      > + A  A  }
>      > + A  A  return ret;
>      > +}
>      > +
>      > +int usb_boot(
>      > + A  A  struct usb_handle *usb, void *data, unsigned sz, const char
>      *rootfs)
>      > +{
>      > + A  A  const uint32_t msg_boot A = 0xF0030002;
>      > + A  A  uint32_t msg_size = sz;
>      > + A  A  int i;
>      > + A  A  pthread_t thread;
>      > + A  A  struct thread_vars vars;
>      > + A  A  struct termios tn;
>      > + A  A  struct file_data fd_vector[MAX_OPEN_FILES];
>      > +
>      > + A  A  read_asic_id(usb);
>      > +
>      > + A  A  printf("sending xload to target...\n");
>      > + A  A  usb_write(usb, &msg_boot, sizeof(msg_boot));
>      > + A  A  usb_write(usb, &msg_size, sizeof(msg_size));
>      > + A  A  usb_write(usb, data, sz);
>      > + A  A  munmap(data, msg_size);
>      > + A  A  for (i = 0; i < MAX_OPEN_FILES; i++)
>      > + A  A  A  A  A  A  fd_vector[i].data = NULL;
>      > +
>      > + A  A  vars.usb = usb;
>      > + A  A  vars.hide = 0;
>      > + A  A  tcgetattr(STDIN_FILENO, &vars.to);
>      > + A  A  tn = vars.to;
>      > + A  A  tn.c_lflag &= ~(ICANON | ECHO);
>      > + A  A  printf(FORMAT, TARGET_FORMAT);
>      > + A  A  tcsetattr(STDIN_FILENO, TCSANOW, &tn);
>      > + A  A  if (pthread_create(&thread, NULL, listenerTask, &vars))
>      > + A  A  A  A  A  A  host_print("listenerTask failed");
>      > + A  A  for (;;) {
>      > + A  A  A  A  A  A  if (usb_read(usb, &i, 4) != 4)
>      > + A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  A  A  A  A  if (i == USBBOOT_FS_MAGIC) {
>      > + A  A  A  A  A  A  A  A  A  A  vars.hide = 1;
>      > + A  A  A  A  A  A  A  A  A  A  process_file(usb, rootfs, fd_vector);
>      > + A  A  A  A  A  A  A  A  A  A  vars.hide = 0;
>      > + A  A  A  A  A  A  A  A  A  A  continue;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  printf("%c", i);
>      > + A  A  A  A  A  A  fflush(stdout);
>      > + A  A  }
>      > + A  A  tcsetattr(STDIN_FILENO, TCSANOW, &vars.to);
>      > + A  A  return 0;
>      > +}
>      > +
>      > +int match_omap4_bootloader(struct usb_ifc_info *ifc)
>      > +{
>      > + A  A  if (ifc->dev_vendor != 0x0451)
>      > + A  A  A  A  A  A  return -1;
>      > + A  A  if ((ifc->dev_product != 0xD010) && (ifc->dev_product !=
>      0xD00F))
>      > + A  A  A  A  A  A  return -1;
>      > + A  A  return 0;
>      > +}
>      > +
>      > +int main(int argc, char **argv)
>      > +{
>      > + A  A  void *data;
>      > + A  A  unsigned sz;
>      > + A  A  struct stat s;
>      > + A  A  int fd;
>      > + A  A  struct usb_handle *usb;
>      > + A  A  int once;
>      > +
>      > + A  A  if (argc != 3) {
>      > + A  A  A  A  A  A  printf("usage: %s <xloader> <rootfs>\n", argv[0]);
>      > + A  A  A  A  A  A  return 0;
>      > + A  A  }
>      > + A  A  argv++;
>      > + A  A  fd = open(argv[0], O_RDONLY);
>      > + A  A  if (fd < 0 || fstat(fd, &s)) {
>      > + A  A  A  A  A  A  printf("cannot open '%s'\n", argv[0]);
>      > + A  A  A  A  A  A  return -1;
>      > + A  A  }
>      > + A  A  data = mmap(NULL, s.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
>      > + A  A  if (data == MAP_FAILED) {
>      > + A  A  A  A  A  A  printf("cannot mmap '%s'\n", argv[0]);
>      > + A  A  A  A  A  A  return -1;
>      > + A  A  }
>      > + A  A  sz = s.st_size;
>      > + A  A  close(fd);
>      > + A  A  argv++;
>      > + A  A  printf(FORMAT, HOST_FORMAT);
>      > + A  A  for (once = 1;;) {
>      > + A  A  A  A  A  A  usb = usb_open(match_omap4_bootloader);
>      > + A  A  A  A  A  A  if (usb)
>      > + A  A  A  A  A  A  A  A  A  A  return usb_boot(usb, data, sz,
>      argv[0]);
>      > + A  A  A  A  A  A  if (once) {
>      > + A  A  A  A  A  A  A  A  A  A  once = 0;
>      > + A  A  A  A  A  A  A  A  A  A  printf("waiting for OMAP44xx
>      device...\n");
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  usleep(250000);
>      > + A  A  }
>      > + A  A  return -1;
>      > +}
>      > diff --git a/scripts/usb.h b/scripts/usb.h
>      > new file mode 100644
>      > index 0000000..d50aa6a
>      > --- /dev/null
>      > +++ b/scripts/usb.h
>      > @@ -0,0 +1,61 @@
>      > +/*
>      > + * Copyright (C) 2008 The Android Open Source Project
>      > + * All rights reserved.
>      > + *
>      > + * Redistribution and use in source and binary forms, with or without
>      > + * modification, are permitted provided that the following conditions
>      > + * are met:
>      > + * A * Redistributions of source code must retain the above copyright
>      > + * A  A notice, this list of conditions and the following disclaimer.
>      > + * A * Redistributions in binary form must reproduce the above
>      copyright
>      > + * A  A notice, this list of conditions and the following disclaimer
>      in
>      > + * A  A the documentation and/or other materials provided with the
>      > + * A  A distribution.
>      > + *
>      > + * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
>      CONTRIBUTORS
>      > + * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
>      > + * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
>      > + * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
>      > + * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
>      INDIRECT,
>      > + * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
>      (INCLUDING,
>      > + * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
>      LOSS
>      > + * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
>      > + * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
>      LIABILITY,
>      > + * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
>      > + * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
>      > + * SUCH DAMAGE.
>      > + */
>      > +
>      > +#ifndef _USB_H_
>      > +#define _USB_H_
>      > +
>      > +struct usb_ifc_info {
>      > + A  A  /* from device descriptor */
>      > + A  A  unsigned short dev_vendor;
>      > + A  A  unsigned short dev_product;
>      > +
>      > + A  A  unsigned char dev_class;
>      > + A  A  unsigned char dev_subclass;
>      > + A  A  unsigned char dev_protocol;
>      > +
>      > + A  A  unsigned char ifc_class;
>      > + A  A  unsigned char ifc_subclass;
>      > + A  A  unsigned char ifc_protocol;
>      > +
>      > + A  A  unsigned char has_bulk_in;
>      > + A  A  unsigned char has_bulk_out;
>      > +
>      > + A  A  unsigned char writable;
>      > +
>      > + A  A  char serial_number[256];
>      > +};
>      > +
>      > +typedef int (*ifc_match_func)(struct usb_ifc_info *ifc);
>      > +
>      > +struct usb_handle *usb_open(ifc_match_func callback);
>      > +int usb_close(struct usb_handle *h);
>      > +int usb_read(struct usb_handle *h, void *_data, int len);
>      > +int usb_write(struct usb_handle *h, const void *_data, int len);
>      > +
>      > +
>      > +#endif
>      > diff --git a/scripts/usb_linux.c b/scripts/usb_linux.c
>      > new file mode 100644
>      > index 0000000..43529aa
>      > --- /dev/null
>      > +++ b/scripts/usb_linux.c
>      > @@ -0,0 +1,397 @@
>      > +/*
>      > + * Copyright (C) 2008 The Android Open Source Project
>      > + * All rights reserved.
>      > + *
>      > + * Redistribution and use in source and binary forms, with or without
>      > + * modification, are permitted provided that the following conditions
>      > + * are met:
>      > + * A * Redistributions of source code must retain the above copyright
>      > + * A  A notice, this list of conditions and the following disclaimer.
>      > + * A * Redistributions in binary form must reproduce the above
>      copyright
>      > + * A  A notice, this list of conditions and the following disclaimer
>      in
>      > + * A  A the documentation and/or other materials provided with the
>      > + * A  A distribution.
>      > + *
>      > + * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
>      CONTRIBUTORS
>      > + * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
>      > + * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
>      > + * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
>      > + * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
>      INDIRECT,
>      > + * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
>      (INCLUDING,
>      > + * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
>      LOSS
>      > + * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
>      > + * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
>      LIABILITY,
>      > + * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
>      > + * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
>      > + * SUCH DAMAGE.
>      > + */
>      > +
>      > +#include <stdio.h>
>      > +#include <stdlib.h>
>      > +#include <unistd.h>
>      > +#include <string.h>
>      > +
>      > +#include <sys/ioctl.h>
>      > +#include <sys/types.h>
>      > +#include <dirent.h>
>      > +#include <fcntl.h>
>      > +#include <errno.h>
>      > +#include <pthread.h>
>      > +#include <ctype.h>
>      > +
>      > +#include <linux/usbdevice_fs.h>
>      > +#include <linux/usbdevice_fs.h>
>      > +#include <linux/version.h>
>      > +#include <linux/usb/ch9.h>
>      > +#include <asm/byteorder.h>
>      > +
>      > +#include "usb.h"
>      > +
>      > +#define MAX_RETRIES 5
>      > +
>      > +#ifdef TRACE_USB
>      > +#define DBG1(x...) fprintf(stderr, x)
>      > +#define DBG(x...) fprintf(stderr, x)
>      > +#else
>      > +#define DBG(x...)
>      > +#define DBG1(x...)
>      > +#endif
>      > +
>      > +struct usb_handle {
>      > + A  A  char fname[64];
>      > + A  A  int desc;
>      > + A  A  unsigned char ep_in;
>      > + A  A  unsigned char ep_out;
>      > +};
>      > +
>      > +static inline int badname(const char *name)
>      > +{
>      > + A  A  while (*name) {
>      > + A  A  A  A  A  A  if (!isdigit(*name++))
>      > + A  A  A  A  A  A  A  A  A  A  return 1;
>      > + A  A  }
>      > + A  A  return 0;
>      > +}
>      > +
>      > +static int check(void *_desc, int len, unsigned type, int size)
>      > +{
>      > + A  A  unsigned char *desc = _desc;
>      > +
>      > + A  A  if (len < size)
>      > + A  A  A  A  A  A  return -1;
>      > + A  A  if (desc[0] < size)
>      > + A  A  A  A  A  A  return -1;
>      > + A  A  if (desc[0] > len)
>      > + A  A  A  A  A  A  return -1;
>      > + A  A  if (desc[1] != type)
>      > + A  A  A  A  A  A  return -1;
>      > +
>      > + A  A  return 0;
>      > +}
>      > +
>      > +static int filter_usb_device(int fd, char *ptr, int len, int
>      writable,
>      > + A  A  ifc_match_func callback, int *ept_in_id, int *ept_out_id, int
>      *ifc_id)
>      > +{
>      > + A  A  struct usb_device_descriptor *dev;
>      > + A  A  struct usb_config_descriptor *cfg;
>      > + A  A  struct usb_interface_descriptor *ifc;
>      > + A  A  struct usb_endpoint_descriptor *ept;
>      > + A  A  struct usb_ifc_info info;
>      > +
>      > + A  A  int in, out;
>      > + A  A  unsigned i;
>      > + A  A  unsigned e;
>      > +
>      > + A  A  if (check(ptr, len, USB_DT_DEVICE, USB_DT_DEVICE_SIZE))
>      > + A  A  A  A  A  A  return -1;
>      > + A  A  dev = (void *) ptr;
>      > + A  A  len -= dev->bLength;
>      > + A  A  ptr += dev->bLength;
>      > +
>      > + A  A  if (check(ptr, len, USB_DT_CONFIG, USB_DT_CONFIG_SIZE))
>      > + A  A  A  A  A  A  return -1;
>      > + A  A  cfg = (void *) ptr;
>      > + A  A  len -= cfg->bLength;
>      > + A  A  ptr += cfg->bLength;
>      > +
>      > + A  A  info.dev_vendor = dev->idVendor;
>      > + A  A  info.dev_product = dev->idProduct;
>      > + A  A  info.dev_class = dev->bDeviceClass;
>      > + A  A  info.dev_subclass = dev->bDeviceSubClass;
>      > + A  A  info.dev_protocol = dev->bDeviceProtocol;
>      > + A  A  info.writable = writable;
>      > +
>      > + A  A  /* read device serial number (if there is one) */
>      > + A  A  info.serial_number[0] = 0;
>      > + A  A  if (dev->iSerialNumber) {
>      > + A  A  A  A  A  A  struct usbdevfs_ctrltransfer A ctrl;
>      > + A  A  A  A  A  A  __u16 buffer[128];
>      > + A  A  A  A  A  A  int result;
>      > +
>      > + A  A  A  A  A  A  memset(buffer, 0, sizeof(buffer));
>      > +
>      > + A  A  A  A  A  A  ctrl.bRequestType = USB_DIR_IN|
>      > + A  A  A  A  A  A  A  A  A  A  USB_TYPE_STANDARD|USB_RECIP_DEVICE;
>      > + A  A  A  A  A  A  ctrl.bRequest = USB_REQ_GET_DESCRIPTOR;
>      > + A  A  A  A  A  A  ctrl.wValue = (USB_DT_STRING << 8) |
>      dev->iSerialNumber;
>      > + A  A  A  A  A  A  ctrl.wIndex = 0;
>      > + A  A  A  A  A  A  ctrl.wLength = sizeof(buffer);
>      > + A  A  A  A  A  A  ctrl.data = buffer;
>      > + A  A  A  A  A  A  ctrl.timeout = 50;
>      > +
>      > + A  A  A  A  A  A  result = ioctl(fd, USBDEVFS_CONTROL, &ctrl);
>      > + A  A  A  A  A  A  if (result > 0) {
>      > + A  A  A  A  A  A  A  A  A  A  int i;
>      > + A  A  A  A  A  A  A  A  A  A  /* skip first word, and copy the rest
>      to the serial
>      > + A  A  A  A  A  A  A  A  A  A  string, changing shorts to bytes. */
>      > + A  A  A  A  A  A  A  A  A  A  result /= 2;
>      > + A  A  A  A  A  A  A  A  A  A  for (i = 1; i < result; i++)
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  info.serial_number[i - 1]
>      = buffer[i];
>      > + A  A  A  A  A  A  A  A  A  A  info.serial_number[i - 1] = 0;
>      > + A  A  A  A  A  A  }
>      > + A  A  }
>      > +
>      > + A  A  for (i = 0; i < cfg->bNumInterfaces; i++) {
>      > + A  A  A  A  A  A  if (check(ptr, len, USB_DT_INTERFACE,
>      USB_DT_INTERFACE_SIZE))
>      > + A  A  A  A  A  A  A  A  A  A  return -1;
>      > + A  A  A  A  A  A  ifc = (void *) ptr;
>      > + A  A  A  A  A  A  len -= ifc->bLength;
>      > + A  A  A  A  A  A  ptr += ifc->bLength;
>      > +
>      > + A  A  A  A  A  A  in = -1;
>      > + A  A  A  A  A  A  out = -1;
>      > + A  A  A  A  A  A  info.ifc_class = ifc->bInterfaceClass;
>      > + A  A  A  A  A  A  info.ifc_subclass = ifc->bInterfaceSubClass;
>      > + A  A  A  A  A  A  info.ifc_protocol = ifc->bInterfaceProtocol;
>      > +
>      > + A  A  A  A  A  A  for (e = 0; e < ifc->bNumEndpoints; e++) {
>      > + A  A  A  A  A  A  A  A  A  A  if (check(ptr, len, USB_DT_ENDPOINT,
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  USB_DT_ENDPOINT_SIZE)
>      > + A  A  A  A  A  A  A  A  A  A  )
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  return -1;
>      > + A  A  A  A  A  A  A  A  A  A  ept = (void *) ptr;
>      > + A  A  A  A  A  A  A  A  A  A  len -= ept->bLength;
>      > + A  A  A  A  A  A  A  A  A  A  ptr += ept->bLength;
>      > +
>      > + A  A  A  A  A  A  A  A  A  A  if ((ept->bmAttributes & 0x03) !=
>      0x02)
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  continue;
>      > +
>      > + A  A  A  A  A  A  A  A  A  A  if (ept->bEndpointAddress & 0x80)
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  in =
>      ept->bEndpointAddress;
>      > + A  A  A  A  A  A  A  A  A  A  else
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  out =
>      ept->bEndpointAddress;
>      > + A  A  A  A  A  A  }
>      > +
>      > + A  A  A  A  A  A  info.has_bulk_in = (in != -1);
>      > + A  A  A  A  A  A  info.has_bulk_out = (out != -1);
>      > +
>      > + A  A  A  A  A  A  if (callback(&info) == 0) {
>      > + A  A  A  A  A  A  A  A  A  A  *ept_in_id = in;
>      > + A  A  A  A  A  A  A  A  A  A  *ept_out_id = out;
>      > + A  A  A  A  A  A  A  A  A  A  *ifc_id = ifc->bInterfaceNumber;
>      > + A  A  A  A  A  A  A  A  A  A  return 0;
>      > + A  A  A  A  A  A  }
>      > + A  A  }
>      > +
>      > + A  A  return -1;
>      > +}
>      > +
>      > +static struct usb_handle *find_usb_device(
>      > + A  A  const char *base, ifc_match_func callback)
>      > +{
>      > + A  A  struct usb_handle *usb = 0;
>      > + A  A  char busname[64], devname[64];
>      > + A  A  char desc[1024];
>      > + A  A  int n, in, out, ifc;
>      > +
>      > + A  A  DIR *busdir, *devdir;
>      > + A  A  struct dirent *de;
>      > + A  A  int fd;
>      > + A  A  int writable;
>      > +
>      > + A  A  busdir = opendir(base);
>      > + A  A  if (busdir == 0)
>      > + A  A  A  A  A  A  return 0;
>      > +
>      > + A  A  while ((de = readdir(busdir)) && (usb == 0)) {
>      > + A  A  A  A  A  A  if (badname(de->d_name))
>      > + A  A  A  A  A  A  A  A  A  A  continue;
>      > +
>      > + A  A  A  A  A  A  sprintf(busname, "%s/%s", base, de->d_name);
>      > + A  A  A  A  A  A  devdir = opendir(busname);
>      > + A  A  A  A  A  A  if (devdir == 0)
>      > + A  A  A  A  A  A  A  A  A  A  continue;
>      > +
>      > + A  A  A  A  A  A  /* DBG("[ scanning %s ]\n", busname); */
>      > + A  A  A  A  A  A  while ((de = readdir(devdir)) && (usb == 0)) {
>      > +
>      > + A  A  A  A  A  A  A  A  A  A  if (badname(de->d_name))
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  continue;
>      > + A  A  A  A  A  A  A  A  A  A  sprintf(devname, "%s/%s", busname,
>      de->d_name);
>      > +
>      > + A  A  A  A  A  A  A  A  A  A  /* DBG("[ scanning %s ]\n", devname);
>      */
>      > + A  A  A  A  A  A  A  A  A  A  writable = 1;
>      > + A  A  A  A  A  A  A  A  A  A  fd = open(devname, O_RDWR);
>      > + A  A  A  A  A  A  A  A  A  A  if (fd < 0) {
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  /* Check if we have
>      read-only access,
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  so we can give a helpful
>      diagnostic
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  like "adb devices" does.
>      */
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  writable = 0;
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  fd = open(devname,
>      O_RDONLY);
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  if (fd < 0)
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  continue;
>      > + A  A  A  A  A  A  A  A  A  A  }
>      > +
>      > + A  A  A  A  A  A  A  A  A  A  n = read(fd, desc, sizeof(desc));
>      > +
>      > + A  A  A  A  A  A  A  A  A  A  if (filter_usb_device(fd, desc, n,
>      writable,
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  callback, &in, &out, &ifc)
>      == 0
>      > + A  A  A  A  A  A  A  A  A  A  ) {
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  usb = calloc(1,
>      sizeof(struct usb_handle));
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  strcpy(usb->fname,
>      devname);
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  usb->ep_in = in;
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  usb->ep_out = out;
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  usb->desc = fd;
>      > +
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  n = ioctl(fd,
>      USBDEVFS_CLAIMINTERFACE, &ifc);
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  if (n != 0) {
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  close(fd);
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  free(usb);
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  usb = 0;
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  continue;
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  A  A  A  A  } else
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  close(fd);
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  closedir(devdir);
>      > + A  A  }
>      > + A  A  closedir(busdir);
>      > +
>      > + A  A  return usb;
>      > +}
>      > +
>      > +int usb_write(struct usb_handle *h, const void *_data, int len)
>      > +{
>      > + A  A  unsigned char *data = (unsigned char *) _data;
>      > + A  A  unsigned count = 0;
>      > + A  A  struct usbdevfs_bulktransfer bulk;
>      > + A  A  int n;
>      > +
>      > + A  A  if (h->ep_out == 0)
>      > + A  A  A  A  A  A  return -1;
>      > +
>      > + A  A  if (len == 0) {
>      > + A  A  A  A  A  A  bulk.ep = h->ep_out;
>      > + A  A  A  A  A  A  bulk.len = 0;
>      > + A  A  A  A  A  A  bulk.data = data;
>      > + A  A  A  A  A  A  bulk.timeout = 0;
>      > +
>      > + A  A  A  A  A  A  n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
>      > + A  A  A  A  A  A  if (n != 0) {
>      > + A  A  A  A  A  A  A  A  A  A  fprintf(stderr, "ERROR: n = %d, errno
>      = %d (%s)\n",
>      > + A  A  A  A  A  A  A  A  A  A  n, errno, strerror(errno));
>      > + A  A  A  A  A  A  A  A  A  A  return -1;
>      > + A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  return 0;
>      > + A  A  }
>      > +
>      > + A  A  while (len > 0) {
>      > + A  A  A  A  A  A  int xfer;
>      > + A  A  A  A  A  A  xfer = (len > 4096) ? 4096 : len;
>      > +
>      > + A  A  A  A  A  A  bulk.ep = h->ep_out;
>      > + A  A  A  A  A  A  bulk.len = xfer;
>      > + A  A  A  A  A  A  bulk.data = data;
>      > + A  A  A  A  A  A  bulk.timeout = 0;
>      > +
>      > + A  A  A  A  A  A  n = ioctl(h->desc, USBDEVFS_BULK, &bulk);
>      > + A  A  A  A  A  A  if (n != xfer) {
>      > + A  A  A  A  A  A  A  A  A  A  DBG("ERROR: n = %d, errno = %d
>      (%s)\n",
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  n, errno,
>      strerror(errno));
>      > + A  A  A  A  A  A  A  A  A  A  return -1;
>      > + A  A  A  A  A  A  }
>      > +
>      > + A  A  A  A  A  A  count += xfer;
>      > + A  A  A  A  A  A  len -= xfer;
>      > + A  A  A  A  A  A  data += xfer;
>      > + A  A  }
>      > +
>      > + A  A  return count;
>      > +}
>      > +
>      > +int usb_read(struct usb_handle *h, void *_data, int len)
>      > +{
>      > + A  A  unsigned char *data = (unsigned char *) _data;
>      > + A  A  unsigned count = 0;
>      > + A  A  struct usbdevfs_bulktransfer bulk;
>      > + A  A  int n, retry;
>      > +
>      > + A  A  if (h->ep_in == 0)
>      > + A  A  A  A  A  A  return -1;
>      > +
>      > + A  A  while (len > 0) {
>      > + A  A  A  A  A  A  int xfer = (len > 4096) ? 4096 : len;
>      > +
>      > + A  A  A  A  A  A  bulk.ep = h->ep_in;
>      > + A  A  A  A  A  A  bulk.len = xfer;
>      > + A  A  A  A  A  A  bulk.data = data;
>      > + A  A  A  A  A  A  bulk.timeout = 0;
>      > + A  A  A  A  A  A  retry = 0;
>      > +
>      > + A  A  A  A  A  A  do {
>      > + A  A  A  A  A  A  A  A  A  A  DBG("[ usb read %d fd = %d],
>      fname=%s\n",
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  xfer, h->desc, h->fname);
>      > + A  A  A  A  A  A  A  A  A  A  n = ioctl(h->desc, USBDEVFS_BULK,
>      &bulk);
>      > + A  A  A  A  A  A  A  A  A  A  DBG("[ usb read %d ] = %d, fname=%s,
>      Retry %d\n",
>      > + A  A  A  A  A  A  A  A  A  A  xfer, n, h->fname, retry);
>      > +
>      > + A  A  A  A  A  A  A  A  A  A  if (n < 0) {
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  DBG1("ERROR: n = %d, errno
>      = %d (%s)\n",
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  n, errno,
>      strerror(errno));
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  if (++retry > MAX_RETRIES)
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  A  return -1;
>      > + A  A  A  A  A  A  A  A  A  A  A  A  A  A  sleep(1);
>      > + A  A  A  A  A  A  A  A  A  A  }
>      > + A  A  A  A  A  A  } while (n < 0);
>      > +
>      > + A  A  A  A  A  A  count += n;
>      > + A  A  A  A  A  A  len -= n;
>      > + A  A  A  A  A  A  data += n;
>      > +
>      > + A  A  A  A  A  A  if (n < xfer)
>      > + A  A  A  A  A  A  A  A  A  A  break;
>      > + A  A  }
>      > +
>      > + A  A  return count;
>      > +}
>      > +
>      > +void usb_kick(struct usb_handle *h)
>      > +{
>      > + A  A  int fd;
>      > +
>      > + A  A  fd = h->desc;
>      > + A  A  h->desc = -1;
>      > + A  A  if (fd >= 0) {
>      > + A  A  A  A  A  A  close(fd);
>      > + A  A  A  A  A  A  DBG("[ usb closed %d ]\n", fd);
>      > + A  A  }
>      > +}
>      > +
>      > +int usb_close(struct usb_handle *h)
>      > +{
>      > + A  A  int fd;
>      > +
>      > + A  A  fd = h->desc;
>      > + A  A  h->desc = -1;
>      > + A  A  if (fd >= 0) {
>      > + A  A  A  A  A  A  close(fd);
>      > + A  A  A  A  A  A  DBG("[ usb closed %d ]\n", fd);
>      > + A  A  }
>      > +
>      > + A  A  return 0;
>      > +}
>      > +
>      > +struct usb_handle *usb_open(ifc_match_func callback)
>      > +{
>      > + A  A  return find_usb_device("/dev/bus/usb", callback);
>      > +}
>      > --
>      > 1.7.12.1
>      >
>      >
>      > _______________________________________________
>      > barebox mailing list
>      > barebox@lists.infradead.org
>      > http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
