Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goeWu-0007sw-AZ
 for barebox@lists.infradead.org; Wed, 30 Jan 2019 01:19:06 +0000
Received: by mail-wr1-x441.google.com with SMTP id f7so24326943wrp.1
 for <barebox@lists.infradead.org>; Tue, 29 Jan 2019 17:19:03 -0800 (PST)
MIME-Version: 1.0
References: <20190124031543.11733-1-andrew.smirnov@gmail.com>
 <20190128085656.frx6xv55k7f7fvxf@pengutronix.de>
 <CAHQ1cqG8RS7VXCV5yYe_bWJ_79W4L4mHXYue+Kpz1s=s0DQ7SQ@mail.gmail.com>
 <20190129094439.bighzaslxca4lcnp@pengutronix.de>
In-Reply-To: <20190129094439.bighzaslxca4lcnp@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 29 Jan 2019 17:18:50 -0800
Message-ID: <CAHQ1cqHxFr3-gOQ-QkeoEfpSSfLVokKF+p_SKRNNdiVfh_1=PQ@mail.gmail.com>
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

On Tue, Jan 29, 2019 at 1:44 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Mon, Jan 28, 2019 at 11:12:29AM -0800, Andrey Smirnov wrote:
> > > > _However_, older toolchains (tested on 5.5.0), will only issue a
> > > > R_AARCH64_RELATIVE, so memory location will contain only zeroes:
> > > >
> > > > 00000000000000a0 <get_runtime_offset>:
> > > >       a0:     10000000        adr     x0, a0 <get_runtime_offset>
> > > >       a4:     58000061        ldr     x1, b0 <linkadr>
> > > >       a8:     eb010000        subs    x0, x0, x1
> > > >       ac:     d65f03c0        ret
> > > >
> > > > 00000000000000b0 <linkadr>:
> > > >       ...
> > > >
> > > > This leads to an very early crash and complete boot failure in the
> > > > latter case.
> > >
> > > I can reproduce this issue here. As you can imagine I do not really like
> > > this "fix". I have no idea what the proper solution is (other than
> > > deprecating gcc5), so I am fine removing the "a" flag as you suggested.
> > > I think though that we should add a big comment above this function
> >
> > Sure, will add the comment in v2.
> >
> > > *why* this lacks the "a" flag and that we can add it back once gcc5
> > > is retired.
> > >
> >
> > AFAICT, we don't want a relocation there even if GCC5 is deprecated
> > and it will always be conveniently initialized for us. To turn the
> > tables a bit, why do we need that "a" there? What's its purpose?
>
> The "a" is for "allocatable"

Yeah, this part of the desciprion in LD manual makes some sense

> meaning that space should be allocated in the output binary.

but this is the part I have trouble reasoning through or reconciling
with result I see in binary files. I can see how "a" would be
important in case when we have a full blown OS loading a proper ELF
file from disk to memory. However, I am not sure how to apply the
concept of allocatabilty to the case where we have flat binary file
created ahead of time using a linker script. It seems to me that what
should and shouldn't go into binary file should already be captured by
the script file.

> If you put get_runtime_offset into its own section
> (outside .text) without the "a" flag then the linker linker bails out
> moaning about overlapping sections.

Hmm, maybe I am not replicating your experiment exactly, but I just
tired compiling get_runtime_offset() with .section
".__image_start","x" directive on both ARM and ARM64 and it seemed to
work as you'd expect.

> I think the .text segment is
> inherently allocatable somehow, but then I wonder why the "a" flag makes
> a difference at all. It may just be a bug in the early aarc64
> toolchains, who knows...
>

Yeah, I guess what I was trying to say that this is definitely a "fix"
that's not 100% reasoned out, but that might be because the original
code that's being fixed is not quite reasoned out either.

Anyway, adding a comment with explanation is definitely a good idea.
I'll re-spin v2 with it shortly.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
