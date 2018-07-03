Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-it0-x244.google.com ([2607:f8b0:4001:c0b::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1faPn5-0003wf-Lh
 for barebox@lists.infradead.org; Tue, 03 Jul 2018 18:12:41 +0000
Received: by mail-it0-x244.google.com with SMTP id p4-v6so4411363itf.2
 for <barebox@lists.infradead.org>; Tue, 03 Jul 2018 11:12:29 -0700 (PDT)
MIME-Version: 1.0
References: <20180630034900.3324-1-andrew.smirnov@gmail.com>
 <20180630034900.3324-7-andrew.smirnov@gmail.com>
 <20180702062038.23se52uzy2ttrubm@pengutronix.de>
In-Reply-To: <20180702062038.23se52uzy2ttrubm@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 3 Jul 2018 11:12:17 -0700
Message-ID: <CAHQ1cqEc+1BKp9bsFZd_Hy1fELN=6U4tnn4r5MkgfOOp=oFYrg@mail.gmail.com>
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
Subject: Re: [PATCH 06/11] ARM: i.MX: xload-esdhc: Allow patching first word
 of the image
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, Jul 1, 2018 at 11:20 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Fri, Jun 29, 2018 at 08:48:55PM -0700, Andrey Smirnov wrote:
> > Depending on how SD card/eMMC was programmed first byte of the image
> > ther may or may not have appropriate branch instruction. Extend
> > esdhc_start_image() to allow passing a custom callback that would
> > patch the first instruction in memory to correctly redirect the CPU to
> > the resto of the code.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  arch/arm/mach-imx/xload-esdhc.c | 18 +++++++++++++++---
> >  1 file changed, 15 insertions(+), 3 deletions(-)
> >
> > diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
> > index 98ebdfcf7..c017a8b10 100644
> > --- a/arch/arm/mach-imx/xload-esdhc.c
> > +++ b/arch/arm/mach-imx/xload-esdhc.c
> > @@ -219,7 +219,8 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
> >  }
> >
> >  static int
> > -esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset)
> > +esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset,
> > +               u32 (*opcode_b)(u32))
> >  {
> >       void *buf = (void *)address;
> >       u32 *ivt = buf + offset + SZ_1K;
> > @@ -254,6 +255,9 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, u32 offset)
> >
> >       bb = buf + ofs;
> >
> > +     if (opcode_b)
> > +             *(u32 *)buf = opcode_b(ofs);
> > +
>
> If I understand correctly this is to make sure that the bl31 binary
> which jumps to MX8MQ_ATF_BL33_BASE_ADDR jumps over the imx header
> to the barebox image, right?
>

That's right.

> Maybe we should memmove the barebox image to MX8MQ_ATF_BL33_BASE_ADDR
> instead of inserting handweaved assembly into the binary.
>

Yeah good point, I haven't thought about that. We definitely should be
able to do this. But now that I think of it, it should be possible to
make second esdhc_read_blocks() call such that the image is placed the
way we want it without extra memmove(). I'll give both a try and will
update in v2 according to the results.

Thanks,
Andrey Smirnov.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
