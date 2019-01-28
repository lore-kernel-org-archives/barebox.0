Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goCKo-0006jT-Uh
 for barebox@lists.infradead.org; Mon, 28 Jan 2019 19:12:44 +0000
Received: by mail-wm1-x341.google.com with SMTP id m1so15231066wml.2
 for <barebox@lists.infradead.org>; Mon, 28 Jan 2019 11:12:42 -0800 (PST)
MIME-Version: 1.0
References: <20190124031543.11733-1-andrew.smirnov@gmail.com>
 <20190128085656.frx6xv55k7f7fvxf@pengutronix.de>
In-Reply-To: <20190128085656.frx6xv55k7f7fvxf@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 28 Jan 2019 11:12:29 -0800
Message-ID: <CAHQ1cqG8RS7VXCV5yYe_bWJ_79W4L4mHXYue+Kpz1s=s0DQ7SQ@mail.gmail.com>
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
Subject: Re: [PATCH] ARM: aarch64: Avoid relocations in runtime-offset.S
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 28, 2019 at 12:56 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> Hi Andrey,
>
> On Wed, Jan 23, 2019 at 07:15:43PM -0800, Andrey Smirnov wrote:
> > Since get_runtime_offset() is executed as a part of reloaction logic,
> > it cannot have code dependend on any kind of
> > relocation. Unfortunately, current codebase violates this rule and
> >
> > linkadr:
> > .quad get_runtime_offset
> >
> > ends up producing R_AARCH64_RELATIVE relocation that has to be
> > resolved at runtime. From tiral and error experimentation it seems
> > that the simplest way to do this is to drop "a" (allocatable)
> > attribute fom the section directive in runtime-offset.S
> >
> > With "a" (see first entry):
> >
> > aarch64-linux-gnu-objdump -R images/start_zii_imx8mq_dev.pbl
> >
> > images/start_zii_imx8mq_dev.pbl:     file format elf64-littleaarch64
> >
> > DYNAMIC RELOCATION RECORDS
> > OFFSET           TYPE              VALUE
> > 00000000000000b0 R_AARCH64_RELATIVE  *ABS*+0x00000000000000a0
> > 0000000000004258 R_AARCH64_RELATIVE  *ABS*+0x0000000000028118
> > 0000000000004260 R_AARCH64_RELATIVE  *ABS*+0x0000000000028128
> > 00000000000042e0 R_AARCH64_RELATIVE  *ABS*
> > 00000000000042e8 R_AARCH64_RELATIVE  *ABS*+0x0000000000028118
> > 00000000000042f0 R_AARCH64_RELATIVE  *ABS*+0x00000000000042c8
> >
> > Without "a":
> >
> >  aarch64-linux-gnu-objdump -R images/start_zii_imx8mq_dev.pbl
> >
> > images/start_zii_imx8mq_dev.pbl:     file format elf64-littleaarch64
> >
> > DYNAMIC RELOCATION RECORDS
> > OFFSET           TYPE              VALUE
> > 0000000000004258 R_AARCH64_RELATIVE  *ABS*+0x0000000000028100
> > 0000000000004260 R_AARCH64_RELATIVE  *ABS*+0x0000000000028110
> > 00000000000042e0 R_AARCH64_RELATIVE  *ABS*
> > 00000000000042e8 R_AARCH64_RELATIVE  *ABS*+0x0000000000028100
> > 00000000000042f0 R_AARCH64_RELATIVE  *ABS*+0x00000000000042c8
> >
> > Note that on recent toolchains (tested on 8.1.1), this problem is
> > masked by the fact that
> >
> > .quad get_runtime_offset
> >
> > will be initialized with link-time value of "get_runtime_offset" in
> > addition to having a R_AARCH64_RELATIVE relocation.
> >
> > 00000000000000a0 <get_runtime_offset>:
> >       a0:     10000000        adr     x0, a0 <get_runtime_offset>
> >       a4:     58000061        ldr     x1, b0 <linkadr>
> >       a8:     eb010000        subs    x0, x0, x1
> >       ac:     d65f03c0        ret
> >
> > 00000000000000b0 <linkadr>:
> >       b0:     000000a0        .word   0x000000a0
> >       b4:     00000000        .word   0x00000000
> >
> > _However_, older toolchains (tested on 5.5.0), will only issue a
> > R_AARCH64_RELATIVE, so memory location will contain only zeroes:
> >
> > 00000000000000a0 <get_runtime_offset>:
> >       a0:     10000000        adr     x0, a0 <get_runtime_offset>
> >       a4:     58000061        ldr     x1, b0 <linkadr>
> >       a8:     eb010000        subs    x0, x0, x1
> >       ac:     d65f03c0        ret
> >
> > 00000000000000b0 <linkadr>:
> >       ...
> >
> > This leads to an very early crash and complete boot failure in the
> > latter case.
>
> I can reproduce this issue here. As you can imagine I do not really like
> this "fix". I have no idea what the proper solution is (other than
> deprecating gcc5), so I am fine removing the "a" flag as you suggested.
> I think though that we should add a big comment above this function

Sure, will add the comment in v2.

> *why* this lacks the "a" flag and that we can add it back once gcc5
> is retired.
>

AFAICT, we don't want a relocation there even if GCC5 is deprecated
and it will always be conveniently initialized for us. To turn the
tables a bit, why do we need that "a" there? What's its purpose?

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
