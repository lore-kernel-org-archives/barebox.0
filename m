Delivery-date: Fri, 02 Apr 2021 10:15:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSExc-00082E-DS
	for lore@lore.pengutronix.de; Fri, 02 Apr 2021 10:15:20 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lSExb-0000iF-6y
	for lore@pengutronix.de; Fri, 02 Apr 2021 10:15:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:Message-Id:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BnRsmG4TEOz3KemRHxoJ/VErx1PvcoNNubQNbZHW8qI=; b=hxuwC/pj1jdHue9zIcUGk9ewV
	Avaev6967b3M4dp79qRDtOYqIU7noim9bj3E0KJyNySWXOMt5YRl95/WNdPkiw/VBvJjm8M7ZfSQK
	LM+aAUzBPE7MzNqUvA97j7vVpuSSpicBHqgxKe5nqZqxdOj8tf5eyT5ywWKFi5kgMDdN9cbVPqVxw
	wledlF2EftuFAhki71QUb3ivNHmoCB1Y8Pod2D+KygBq04/9YW9ONFfWGMPuWQ4/qryApoC9woC2d
	mrEbDHH5JKIWRFQXFsEBPB6xgSXE9jS4jb+OcAmr8fBp0Ca51vMQ79IIFrwkD7R3cvlqMfc7ApfNt
	uq6/kfPMw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lSEwL-00CGmo-Sp; Fri, 02 Apr 2021 08:14:02 +0000
Received: from mail-lj1-x231.google.com ([2a00:1450:4864:20::231])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lSEwD-00CGmJ-Hl
 for barebox@lists.infradead.org; Fri, 02 Apr 2021 08:13:55 +0000
Received: by mail-lj1-x231.google.com with SMTP id u9so4839648ljd.11
 for <barebox@lists.infradead.org>; Fri, 02 Apr 2021 01:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=iXMUle9k/W5BP3wq8710pSwIoxACqXTahRzQEkCud74=;
 b=eQQOU4trP3PdqcKbllX6UKX/C2QcoGxusHcgKmJKEPMVMi3519eAdmChud1bfwEbiI
 cmZOqI3FUID9e9xBYgwxp9RTMSGjVZlCy0Yqk3AwDLKNe8fA8FGBn862vvbkFHmNy9+a
 MBu3D9+sUrkZZyfV9IlXbGNyLeoSA7eI0eHr2zKw5ny/jsllGRNediLg9UaZbtA0eNYl
 5hEzq///Dcqni3h9HvKfgZGjwfXuIyrqSWn212Z3dPYUh6i7iDE7KRzTr38nDh23Y8Nb
 2oC+OkbI9oowkaK/ATfHc+WqFshYHbmuMP0B22gUcYv7oHzATJvWcdBPYv/mfEh0x21m
 ZzBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=iXMUle9k/W5BP3wq8710pSwIoxACqXTahRzQEkCud74=;
 b=cXJfQHXs9jRf/UmZGA5Kiif6fVRnOEUnA1yjUVGW2E+vQAOz4os4k0qTh5bpUAC7++
 5EdKooiGFtIOZu8Du5JFwSSXdUA3TPIqNXdBNHMaPKvNGOyBUY/f5eoZQDC1ywn1rY/9
 hInSLHgKiaPfyp6bvhXK8BaiFYXnlBy7jntlsmTI9SqWNY8lU5NQaXcXi3/QW/Bs6eXw
 crEztvFQfd1yD6lr3qMorcYOQVC3MfEbWrvvTOsnNPRa+6WcdwqwmnrGxrbZ15e7TS97
 3d1NGpeNg3LCAeaTnlKM9VNWVlW7YjD+DCqBpwgTcSibxiYDy8KY8pD1sXIA6I/UDtux
 7bfg==
X-Gm-Message-State: AOAM5319NwKAOZoV4cZZswfEvaE5hULo6iv0Hy2AMeilubX81PVHeww8
 GhqXyaBUwAl38dRnzFovDNY=
X-Google-Smtp-Source: ABdhPJziuXrZg4gMWNtj/onH1pZjym2qKqSw0vLj8gTy2Zn2tWqP0toUOuxYyYH8DStnG5mCUGSqUg==
X-Received: by 2002:a2e:b053:: with SMTP id d19mr7682011ljl.82.1617351230106; 
 Fri, 02 Apr 2021 01:13:50 -0700 (PDT)
Received: from flare (t35.niisi.ras.ru. [193.232.173.35])
 by smtp.gmail.com with ESMTPSA id g13sm862652lja.124.2021.04.02.01.13.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 02 Apr 2021 01:13:49 -0700 (PDT)
Date: Fri, 2 Apr 2021 11:13:48 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-Id: <20210402111348.fcc6384084512f23588aad8f@gmail.com>
In-Reply-To: <c2a98aea-2220-38ca-34e5-78a2a585ce82@pengutronix.de>
References: <20210324082304.30858-1-a.fatoum@pengutronix.de>
 <20210402085613.9a8dd5ecb960a47faa3eaa90@gmail.com>
 <c2a98aea-2220-38ca-34e5-78a2a585ce82@pengutronix.de>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; i686-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210402_091353_889790_4253EA8C 
X-CRM114-Status: GOOD (  41.23  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	NICE_REPLY_A,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH master 1/3] RISC-V: cpu: request stack memory region
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Fri, 2 Apr 2021 08:34:36 +0200
Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:

Hi Ahmad!

> Hello Antony,
> =

> On 02.04.21 07:56, Antony Pavlov wrote:
> > On Wed, 24 Mar 2021 09:23:02 +0100
> > Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> > =

> > Current RISC-V erizo barebox master succesfully runs on QEMU
> > but hangs on FPGA.
> > =

> > git bisection shows this:
> > =

> >     barebox$ git bisect good 809e66d4ef
> >     ...
> >     barebox$ git bisect bad
> >     fef19e17f651a7f4b6063a76c506a67cabfe4a69 is the first bad commit
> >     commit fef19e17f651a7f4b6063a76c506a67cabfe4a69
> >     Author: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >     Date:   Wed Mar 24 09:23:02 2021 +0100
> > =

> >         RISC-V: cpu: request stack memory region
> > =

> > I see that request_sdram_region("stack", ...) hangs in input_data_len().
> > =

> > On FPGA I load barebox image at 0x80000000 (erizo RAM start)
> > not at 0x0 (link address).
> > The problem is that input_data_end in input_data_len()
> > contains link-time address, not actual run-time address.
> =

> This is strange. Could you print get_runtime_offset() at this location?
> It should be zero, because relocate_to_current_adr() had previously run,
> but it seems it's not for you? I don't see how compiler reordering could =
have
> occurred given that we don't do LTO and relocate_to_current_adr is thus
> a compiler barrier.

I have added debug output:

--- a/arch/riscv/boot/uncompress.c
+++ b/arch/riscv/boot/uncompress.c
@@ -46,6 +46,9 @@ void __noreturn barebox_pbl_start(unsigned long membase, =
unsigned long memsize,
                relocate_to_adr(membase);
 =

        pg_len =3D pg_end - pg_start;
+       puts_ll("get_runtime_offset()=3D0x");
+       puthex_ll(get_runtime_offset());
+       puts_ll("\n");
        uncompressed_len =3D input_data_len();
 =

        barebox_base =3D riscv_mem_barebox_image(membase, endmem,


I see =


  >get_runtime_offset()=3D0x00000000

on both QEMU and FPGA.


I have experimented with empty_slot on qemu. To reproduce my result please
apply this patch to erizo qemu, reconfigure and rebuild qemu.

diff --git a/default-configs/riscv32-softmmu.mak b/default-configs/riscv32-=
softmmu.mak
index f9e742120c..5aff9ed690 100644
--- a/default-configs/riscv32-softmmu.mak
+++ b/default-configs/riscv32-softmmu.mak
@@ -2,3 +2,4 @@
 =

 CONFIG_SERIAL=3Dy
 CONFIG_VIRTIO=3Dy
+CONFIG_EMPTY_SLOT=3Dy
diff --git a/default-configs/riscv64-softmmu.mak b/default-configs/riscv64-=
softmmu.mak
index f9e742120c..5aff9ed690 100644
--- a/default-configs/riscv64-softmmu.mak
+++ b/default-configs/riscv64-softmmu.mak
@@ -2,3 +2,4 @@
 =

 CONFIG_SERIAL=3Dy
 CONFIG_VIRTIO=3Dy
+CONFIG_EMPTY_SLOT=3Dy
diff --git a/hw/core/empty_slot.c b/hw/core/empty_slot.c
index c1b9c2b104..2358b849e8 100644
--- a/hw/core/empty_slot.c
+++ b/hw/core/empty_slot.c
@@ -14,7 +14,7 @@
 #include "hw/sysbus.h"
 #include "hw/empty_slot.h"
 =

-//#define DEBUG_EMPTY_SLOT
+#define DEBUG_EMPTY_SLOT
 =

 #ifdef DEBUG_EMPTY_SLOT
 #define DPRINTF(fmt, ...)                                       \
diff --git a/hw/riscv/erizo_board.c b/hw/riscv/erizo_board.c
index 9586c4df2f..c34f94cedc 100644
--- a/hw/riscv/erizo_board.c
+++ b/hw/riscv/erizo_board.c
@@ -17,6 +17,7 @@
 =

 #include "qemu/osdep.h"
 #include "hw/boards.h"
+#include "hw/empty_slot.h"
 #include "hw/riscv/riscv_hart.h"
 #include "hw/char/serial.h"
 #include "sysemu/arch_init.h"
@@ -66,6 +67,8 @@ static void erizo_init(MachineState *machine)
     DeviceState *dev =3D qdev_create(NULL, TYPE_ERIZO);
     ErizoState *s =3D ERIZO(dev);
 =

+    empty_slot_init(0, 0xffffffff);
+
     qdev_init_nofail(dev);
     harts =3D &s->harts;
 =

There are empty_slot read warnings on master:

    barebox$ qemu-system-riscv32 -nographic -M erizo -bios ./images/barebox=
-erizo-generic.img -serial stdio -monitor none -trace file=3D/dev/null =

    >get_runtime_offset()=3D0x00000000
    empty_slot: read from 0000000000022caf
    empty_slot: read from 0000000000022cae
    empty_slot: read from 0000000000022cb0
    empty_slot: read from 0000000000022cb1
    riscv-timer riscv-timer: running at 24000000 Hz
    Switch to console [cs0]

    barebox 2021.03.0-00134-gc4a1684da9-dirty #1 Fri Apr 2 10:33:45 MSK 2021

    Board: generic Erizo SoC board
    riscv-timer riscv-timer: running at 24000000 Hz
    malloc space: 0x804ffd80 -> 0x805ffd7f (size 1 MiB)

    Hit any to stop autoboot:    1
    boot: error 2
    barebox:/ =



There is no empty_slot warning with fef19e17f651^ barebox:

    barebox$ qemu-system-riscv32 -nographic -M erizo -bios ./images/barebox=
-erizo-generic.img -serial stdio -monitor none -trace file=3D/dev/null =

    >RISC-V system with no 'timebase-frequency' in DTS
    Switch to console [cs0]

    barebox 2021.03.0-00122-g6107208573 #1 Fri Apr 2 11:09:16 MSK 2021

    Board: generic Erizo SoC board
    RISC-V system with no 'timebase-frequency' in DTS
    malloc space: 0x802ffd80 -> 0x803ffd7f (size 1 MiB)

    Hit any to stop autoboot:    0
    boot: error 2
    barebox:/ =






> Thanks for testing,
> Ahmad
> =

> > =

> > I have added this hack
> > =

> > --- a/arch/riscv/boot/uncompress.c
> > +++ b/arch/riscv/boot/uncompress.c
> > @@ -46,7 +46,7 @@ void __noreturn barebox_pbl_start(unsigned long memba=
se, unsigned long memsize,
> >                 relocate_to_adr(membase);
> >  =

> >         pg_len =3D pg_end - pg_start;
> > -       uncompressed_len =3D input_data_len();
> > +       uncompressed_len =3D get_unaligned((const u32 *)(input_data_end=
 - 4 + get_runtime_offset()));
> >  =

> >         barebox_base =3D riscv_mem_barebox_image(membase, endmem,
> >                                                uncompressed_len + MAX_B=
SS_SIZE);
> > =

> > Alas, this hack does not fix the problem completely.
> > =

> > =

> >> Now that the stack base region is determined dynamically,
> >> mem_malloc_resource can no longer reserve the stack space.
> >> Do as ARM does and add a RISC-V specific initcall to reserve
> >> the main thread's stack space.
> >>
> >> Reported-by: Antony Pavlov <antonynpavlov@gmail.com>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >> Fix for master as otherwise stack could be overwritten at runtime
> >> ---
> >>  arch/riscv/cpu/core.c | 12 ++++++++++++
> >>  1 file changed, 12 insertions(+)
> >>
> >> diff --git a/arch/riscv/cpu/core.c b/arch/riscv/cpu/core.c
> >> index bdcd500ed748..982d378eddec 100644
> >> --- a/arch/riscv/cpu/core.c
> >> +++ b/arch/riscv/cpu/core.c
> >> @@ -2,6 +2,9 @@
> >>  /*
> >>   * Copyright (C) 2012 Regents of the University of California
> >>   * Copyright (C) 2017 SiFive
> >> + * Copyright (C) 2021 Ahmad Fatoum, Pengutronix
> >> + *
> >> + * Common RISC-V core initcalls.
> >>   *
> >>   * All RISC-V systems have a timer attached to every hart.  These tim=
ers can
> >>   * either be read from the "time" and "timeh" CSRs, and can use the S=
BI to
> >> @@ -14,8 +17,17 @@
> >>  #include <of.h>
> >>  #include <linux/clk.h>
> >>  #include <linux/err.h>
> >> +#include <memory.h>
> >> +#include <asm-generic/memory_layout.h>
> >>  #include <io.h>
> >>  =

> >> +static int riscv_request_stack(void)
> >> +{
> >> +	extern unsigned long riscv_stack_top;
> >> +	return PTR_ERR_OR_ZERO(request_sdram_region("stack", riscv_stack_top=
 - STACK_SIZE, STACK_SIZE));
> >> +}
> >> +coredevice_initcall(riscv_request_stack);
> >> +
> >>  static struct device_d timer_dev;
> >>  =

> >>  static int riscv_probe(struct device_d *parent)
> >> -- =

> >> 2.29.2
> >>
> > =

> > =

> =

> -- =

> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

