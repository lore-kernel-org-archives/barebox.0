Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-vs1-xe29.google.com ([2607:f8b0:4864:20::e29])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHVVp-0003qj-IJ
 for barebox@lists.infradead.org; Thu, 26 Mar 2020 16:37:47 +0000
Received: by mail-vs1-xe29.google.com with SMTP id y138so4284353vsy.0
 for <barebox@lists.infradead.org>; Thu, 26 Mar 2020 09:37:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAGm1_ktP_E_44J-CuM=Dy7JdLXXturWm9jC9MmYN9aq=ngNvxQ@mail.gmail.com>
 <20200326063614.GO27288@pengutronix.de>
 <CAGm1_ksknAi_3Srwrzv96y16AQEbmW-7-LOdFFmAnecdwQSG0g@mail.gmail.com>
 <fe2b4025-ffac-f420-d8c0-4bdcb297b71e@pengutronix.de>
In-Reply-To: <fe2b4025-ffac-f420-d8c0-4bdcb297b71e@pengutronix.de>
From: Yegor Yefremov <yegorslists@googlemail.com>
Date: Thu, 26 Mar 2020 17:36:55 +0100
Message-ID: <CAGm1_ktcbbqfBB0wbgCCdf3d8mmPWvvt0N_4AyV_U3UAsCGOxg@mail.gmail.com>
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
Subject: Re: Cross-compiling target tools
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox <barebox@lists.infradead.org>

Hi Ahmad,

On Thu, Mar 26, 2020 at 5:00 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>
> Hi,
>
> On 3/26/20 4:31 PM, Yegor Yefremov wrote:
> > On Thu, Mar 26, 2020 at 7:36 AM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > With these changes I get the tools bareboxenv-target etc. cross-compiled:
> >
> > diff --git a/scripts/compiler.h b/scripts/compiler.h
> > index 0891c3bfa..74cd98074 100644
> > --- a/scripts/compiler.h
> > +++ b/scripts/compiler.h
> > @@ -113,7 +113,7 @@ typedef uint32_t __u32;
> >         (void) (&_min1 == &_min2);              \
> >         _min1 < _min2 ? _min1 : _min2; })
> >
> > -inline void *xmalloc(size_t size)
> > +void *xmalloc(size_t size)
>
> This has been static inline instead for 2 years now[1]. Please check out a current
> barebox revision.
>
> [1]: 359966df3721 ("scripts/compiler.h: inline functions in headers must be static")

You're right, I was experimenting with the old version 2018.x.

Sorry for the noise.

Yegor

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
