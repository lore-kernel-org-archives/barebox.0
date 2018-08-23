Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-io0-x243.google.com ([2607:f8b0:4001:c06::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fsd4k-0000tB-9P
 for barebox@lists.infradead.org; Thu, 23 Aug 2018 00:02:11 +0000
Received: by mail-io0-x243.google.com with SMTP id y10-v6so2886613ioa.10
 for <barebox@lists.infradead.org>; Wed, 22 Aug 2018 17:01:56 -0700 (PDT)
MIME-Version: 1.0
References: <20180821062603.17393-1-andrew.smirnov@gmail.com>
 <20180821062603.17393-20-andrew.smirnov@gmail.com>
 <20180822070940.2bgr6uraeoeewy7h@pengutronix.de>
In-Reply-To: <20180822070940.2bgr6uraeoeewy7h@pengutronix.de>
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 22 Aug 2018 17:01:41 -0700
Message-ID: <CAHQ1cqHr=a5CJrZ_ZhDUGxNu3Z48SVN4d30isVV4XVLZC1vy_g@mail.gmail.com>
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
Subject: Re: [PATCH 19/22] bbu: Remove logical negation in
 barebox_update_handler_exists()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Aug 22, 2018 at 12:09 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
>
> On Mon, Aug 20, 2018 at 11:26:00PM -0700, Andrey Smirnov wrote:
> > Returning !bbu_find_handler() from barebox_update_handler_exists()
> > would return the opposite result from what the name of that funciton
> > implies. Drop the "!" to make it behave as expected.
> >
> > Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> > ---
> >  common/bbu.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/common/bbu.c b/common/bbu.c
> > index 11e44f4a7..69ccac68a 100644
> > --- a/common/bbu.c
> > +++ b/common/bbu.c
> > @@ -151,7 +151,7 @@ bool barebox_update_handler_exists(struct bbu_data *data)
> >       if (!data->handler_name)
> >               return false;
> >
> > -     return !bbu_find_handler(data->handler_name);
> > +     return bbu_find_handler(data->handler_name);
>
> As bbu_find_handler() returns a pointer maybe better '!!' or
> bbu_find_handler() != NULL?
>

That shouldn't be necessary since barebox_update_handler_exists()
returns bool(real type name is _Bool) which explicitly specifies that
a cast of any scalar value to it would be normalized to 1 or 0 (as per
C99 standard from whence it came). Otherwise you'd be able to end up
in a situation where bool1 && bool2 && (bool1 != bool2) evaluates to
true.

To give you more concrete example, here's what the last portion of
that function compiles to on AArch64:

    2924: 97ffff5e     bl 269c <bbu_find_handler>
    2928: f100001f   cmp x0, #0x0
    292c: 1a9f07e0  cset w0, ne  // ne = any
    2930: f9400bf3   ldr x19, [sp, #16]
    2934: a8c27bfd  ldp x29, x30, [sp], #32
    2938: d65f03c0  ret
    293c: 52800020 mov w0, #0x1                    // #1
    2940: 17fffffc      b 2930 <barebox_update_handler_exists+0x30>
    2944: 52800000 mov w0, #0x0                    // #0
    2948: 17fffffa      b 2930 <barebox_update_handler_exists+0x30>

and on AArch32 (Thumb):

    18e0: f7ff ff48 bl 1774 <bbu_find_handler>
    18e4: 3000     adds r0, #0
    18e6: bf18      it ne
    18e8: 2001     movne r0, #1
    18ea: bd10     pop {r4, pc}
    18ec: 2001     movs r0, #1
    18ee: e7fc      b.n 18ea <barebox_update_handler_exists+0x1a>

as you can see both cases already have code to explicitly convert the
result of the function to 0/1.

I am more than happy to add ether !! or != NULL if you still think
that'd be better, it just I don't think it will have any practical
effect.

Thanks,
Andrey Smirnov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
