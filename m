Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJdEM-0007Av-4j
 for barebox@lists.infradead.org; Fri, 18 May 2018 11:07:27 +0000
Received: by mail-lf0-x244.google.com with SMTP id u140-v6so1066539lff.7
 for <barebox@lists.infradead.org>; Fri, 18 May 2018 04:07:15 -0700 (PDT)
Date: Fri, 18 May 2018 14:07:11 +0300
From: Peter Mamonov <pmamonov@gmail.com>
Message-ID: <20180518110710.ncbefikf4amtrt7a@localhost.localdomain>
References: <20180517135858.16202-1-pmamonov@gmail.com>
 <20180517135858.16202-12-pmamonov@gmail.com>
 <CAHQ1cqGBH3HaDHpLFzEBLoF9sw48i-JUiOu=8xvJCr=8L8dbSQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGBH3HaDHpLFzEBLoF9sw48i-JUiOu=8xvJCr=8L8dbSQ@mail.gmail.com>
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
Subject: Re: [RFC PATCH 11/15] resource: fix iomem root resource for 64 bit
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

Hi, Andrey,

On Thu, May 17, 2018 at 02:50:58PM -0700, Andrey Smirnov wrote:
> On Thu, May 17, 2018 at 6:58 AM, Peter Mamonov <pmamonov@gmail.com> wrote:
> > Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
> > ---
> >  common/resource.c | 4 ++++
> >  1 file changed, 4 insertions(+)
> >
> > diff --git a/common/resource.c b/common/resource.c
> > index e4bbe15fd..1cf00a927 100644
> > --- a/common/resource.c
> > +++ b/common/resource.c
> > @@ -114,7 +114,11 @@ int release_region(struct resource *res)
> >  /* The root resource for the whole memory-mapped io space */
> >  struct resource iomem_resource = {
> >         .start = 0,
> > +#ifdef CONFIG_PHYS_ADDR_T_64BIT
> > +       .end = -1ull,
> > +#else
> >         .end = 0xffffffff,
> > +#endif
> 
> Would ".end = ~(resource_size_t)0" work instead? This way you'd avoid
> using preprocessor.

Guess it should work. Thanks for the tip!

Regards,
Peter

> 
> Thanks,
> Andrey Smironv
> 
> >         .name = "iomem",
> >         .children = LIST_HEAD_INIT(iomem_resource.children),
> >  };
> > --
> > 2.17.0
> >
> >
> > _______________________________________________
> > barebox mailing list
> > barebox@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
