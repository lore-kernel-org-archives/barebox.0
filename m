Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1goPwg-0007pM-BU
 for barebox@lists.infradead.org; Tue, 29 Jan 2019 09:44:44 +0000
Date: Tue, 29 Jan 2019 10:44:39 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190129094439.bighzaslxca4lcnp@pengutronix.de>
References: <20190124031543.11733-1-andrew.smirnov@gmail.com>
 <20190128085656.frx6xv55k7f7fvxf@pengutronix.de>
 <CAHQ1cqG8RS7VXCV5yYe_bWJ_79W4L4mHXYue+Kpz1s=s0DQ7SQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqG8RS7VXCV5yYe_bWJ_79W4L4mHXYue+Kpz1s=s0DQ7SQ@mail.gmail.com>
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
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Mon, Jan 28, 2019 at 11:12:29AM -0800, Andrey Smirnov wrote:
> > > _However_, older toolchains (tested on 5.5.0), will only issue a
> > > R_AARCH64_RELATIVE, so memory location will contain only zeroes:
> > >
> > > 00000000000000a0 <get_runtime_offset>:
> > >       a0:     10000000        adr     x0, a0 <get_runtime_offset>
> > >       a4:     58000061        ldr     x1, b0 <linkadr>
> > >       a8:     eb010000        subs    x0, x0, x1
> > >       ac:     d65f03c0        ret
> > >
> > > 00000000000000b0 <linkadr>:
> > >       ...
> > >
> > > This leads to an very early crash and complete boot failure in the
> > > latter case.
> >
> > I can reproduce this issue here. As you can imagine I do not really like
> > this "fix". I have no idea what the proper solution is (other than
> > deprecating gcc5), so I am fine removing the "a" flag as you suggested.
> > I think though that we should add a big comment above this function
> 
> Sure, will add the comment in v2.
> 
> > *why* this lacks the "a" flag and that we can add it back once gcc5
> > is retired.
> >
> 
> AFAICT, we don't want a relocation there even if GCC5 is deprecated
> and it will always be conveniently initialized for us. To turn the
> tables a bit, why do we need that "a" there? What's its purpose?

The "a" is for "allocatable" meaning that space should be allocated in
the output binary. If you put get_runtime_offset into its own section
(outside .text) without the "a" flag then the linker linker bails out
moaning about overlapping sections. I think the .text segment is
inherently allocatable somehow, but then I wonder why the "a" flag makes
a difference at all. It may just be a bug in the early aarc64
toolchains, who knows...

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
