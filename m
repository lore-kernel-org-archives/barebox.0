Delivery-date: Thu, 03 Apr 2025 04:24:50 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0AGA-007dpm-1J
	for lore@lore.pengutronix.de;
	Thu, 03 Apr 2025 04:24:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u0AG9-0001mQ-Fi
	for lore@pengutronix.de; Thu, 03 Apr 2025 04:24:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Cc:To:Subject:Message-ID:Date:From:In-Reply-To:References:
	MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j2Sr69Eu7d5ydYyb8Eu8/dsV6JGZuXx4tyUww3+SC4w=; b=0NMNONF9sKR5vWL4IhGSif0o3D
	n1pQNRVTiHLKDLAYrIuDGRYoqMhsbH3zj8N/bLdg79qFULJfb42PrqFqXkswbSbzYe92y7ndsTrxo
	0/ZGbFUjNUB3XQG1m9zhldY4TqhsSe3h0mwc8tYqUlg8knBTJ8xweJPBnQV8XhnLfNd7p5vPdDlKd
	IPIwcWHAzsXsefy+H02W5jsjSwlxkKOr+SuQ4dZPzj7h3FvtNeftXMrghoLR4L/W/2TA+hS7AUb1P
	oOR2ehXddKTo5YK3bHOGKljU1g+wRmr2HOtLr+svzFxTMyhm1a9BXNkkTE1H/INORWuCSVvxLcD09
	G+iqJ5UQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0AFI-00000007b7i-2Jy5;
	Thu, 03 Apr 2025 02:23:56 +0000
Received: from mail-qv1-xf35.google.com ([2607:f8b0:4864:20::f35])
	by bombadil.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u0AFF-00000007b73-118v
	for barebox@lists.infradead.org;
	Thu, 03 Apr 2025 02:23:54 +0000
Received: by mail-qv1-xf35.google.com with SMTP id 6a1803df08f44-6ed0cc5eca4so16043156d6.1
        for <barebox@lists.infradead.org>; Wed, 02 Apr 2025 19:23:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743647031; x=1744251831; darn=lists.infradead.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j2Sr69Eu7d5ydYyb8Eu8/dsV6JGZuXx4tyUww3+SC4w=;
        b=VUS0zinlyK0kdbdoiOAztTK0QRkwRH3ceTQ4rR0f+sJhoKq0qzSyi71EEkrscfn3XL
         V1e/3FEEYZH1ZNFQFHyebKOtLBmTcEDicppF2YPHSO0neKGfT1u2jBRhySGxDRbH/BWV
         22l6NozQZI34corovWDB2ZEFiRWwrGevY2h4fbmeE5T9CtVwIWauIDU2e5nzkHpwYxKc
         s74VkoKBeQ/u9aVSYFLjlTRM0oNb9nkPEEVd5kU7TP1FhWZBMZJftg538OrVd6g99lTM
         F2P14ZwZXbNemCwDjgbZAePZdY3gUcGxdZIzJVpeAO+UtYcsmPV3Y54q+XJlzHAv2lcV
         ggiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743647031; x=1744251831;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j2Sr69Eu7d5ydYyb8Eu8/dsV6JGZuXx4tyUww3+SC4w=;
        b=OzGWCwNqAWdOaRjMYjJLsZB0I4Ss7nk2RHxDJJlPYlhz4whPlFWgDyk17BtA8UmILQ
         vFp0yFKqdYpJ6aYEOjhSvnGFEBmFex6xF3sN7vmN+Es0LxjhKnEIckHWQBMuOouaWgRU
         7/VzL9Ro+3L7Ca/GtPSYJSa5VD0LiaO3iG3+ODHVpaCvsGjjiO76fRkCL2JvUIrgAyIC
         WE7co1bCZVLq1/IRrpIpu5fxgx15d637Z6RDOC3ul32wDWYXse89b0p1dTHAAuheYKt+
         hreGhkQ6kJj2piVdqAdTLa3mHMIvsKEM4pnmeqdgdmxMD5z0UaZ5YwrBrCjZU9o9sK9p
         2yjw==
X-Forwarded-Encrypted: i=1; AJvYcCV01wX8jTw5d3TgTqmiC80M/iGGMbPbiBjFdHpdALTUqtevX6inWtdejuvbgstznCKKQFHR8Bce@lists.infradead.org
X-Gm-Message-State: AOJu0YyaBH5hvvxw3o3aKwZ6Fr8Ne2pphhljdPg35d+fjC1HU2fU0z8d
	z/d5q2oOZlLF1n2NOVYZPeYoVfY0g3LAi5sohoPViqiFWPCE23qjY9O2FFHX3qOcrr1xrjDBmIa
	a7Y/mi/wqW1DU7FbyXII1BF5KI98=
X-Gm-Gg: ASbGncsd66dwBYrh2tTTngU3GwTRxqJlHBzhFcKieRxg+jpR4wTSTXdQbQgoR/IOJTu
	bdF13/DAA3NVsk1GoCj2uqYaLIjlfQKsNVBnv+ihKmbwNdyzm81tkAE2jWLDJZ/MzJ9NEqEWYDm
	eaPTFAEGnsdkUWfbp7EtUHrAI7LxXyy7q5hDNEv4BP/7cGLQlyQ0HUM4fVPA==
X-Google-Smtp-Source: AGHT+IEyfwWl17T6iIjV7cIm69+K0pQg9pIPNmF771+/eqYE0oXbRrjkz/pKmZpKFWGuCsk/fm3lFSu7ggL70jd00Uo=
X-Received: by 2002:ad4:5ecb:0:b0:6ea:d503:6cfd with SMTP id
 6a1803df08f44-6ef0bf2b38cmr32519276d6.19.1743647031434; Wed, 02 Apr 2025
 19:23:51 -0700 (PDT)
MIME-Version: 1.0
References: <20250328-tlsf-addpool-v1-1-25fd0b060356@gmail.com> <Z-z-XAl1EkRbCmdl@pengutronix.de>
In-Reply-To: <Z-z-XAl1EkRbCmdl@pengutronix.de>
From: David Dgien <dgienda125@gmail.com>
Date: Wed, 2 Apr 2025 22:23:44 -0400
X-Gm-Features: ATxdqUH9LRepk5cLOsThsibGjH9KXsjo-F0TE55vIA7ED4X6bFvhAAAfGtpwDdE
Message-ID: <CALTtyOq17hAECRN4xfHGYfe_UrzvfgpVDsAOUMgBzAL6Q5ujqA@mail.gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: David Dgien via B4 Relay <devnull+dgienda125.gmail.com@kernel.org>, 
	BAREBOX <barebox@lists.infradead.org>, Tyler Reece <mtreece@acm.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250402_192353_282851_726135C8 
X-CRM114-Status: GOOD (  42.37  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] tlsf: Add tracking of added tlsf memory pools
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Wed, Apr 2, 2025 at 5:07=E2=80=AFAM Sascha Hauer <s.hauer@pengutronix.de=
> wrote:
>
> Hi David,
>
> On Fri, Mar 28, 2025 at 11:13:40PM -0400, David Dgien via B4 Relay wrote:
> > From: David Dgien <dgienda125@gmail.com>
> >
> > When configured to use the TLSF allocator, the malloc_stats function
> > only walks the initial memory pool, as that is the only pool it is awar=
e
> > of, and TLSF doesn't link pools together in a way that the walker can
> > follow.
> >
> > Add wrapper functions around tlsf_add_pool and tlsf_remove_pool to add
> > additional tracking of added pools, so that they can be walked by the
> > malloc_stats function and meminfo can report accurate heap utilization.
> >
> > Signed-off-by: David Dgien <dgienda125@gmail.com>
> > Reviewed-by: Tyler Reece <mtreece@acm.org>
> > ---
> > For this change I put the wrapper function prototypes in malloc.h, gate=
d
> > by CONFIG_MALLOC_TLSF. I was split between there and memory.h, but I'm
> > not entirely convinced malloc.h was the right decision. I also didn't
> > provide stubs for when CONFIG_MALLOC_TLSF isn't enabled, as I did not
> > see any upstream code that utilizes tlsf_add_pool. If the project has
> > different preferences I can make those changes.
>
> I think it's fine the way you did it for now. We have plans to remove
> dlmalloc support in the near future which gives us an opportunity to
> rework this and make malloc_add_pool() generally available.
>
> Currently barebox only uses the initial memory. With dlmalloc removed we
> could make use of the remaining memory banks using malloc_add_pool().
>
> > ---
> >  common/tlsf_malloc.c | 64 ++++++++++++++++++++++++++++++++++++++++++++=
++++++++
> >  include/malloc.h     |  5 ++++
> >  2 files changed, 69 insertions(+)
> >
> > diff --git a/common/tlsf_malloc.c b/common/tlsf_malloc.c
> > index 6a90ee47199fa9e8223f843cc95f52eebfec2aee..0e756a13d5a2665eccf8931=
b19dfa4e56cad15eb 100644
> > --- a/common/tlsf_malloc.c
> > +++ b/common/tlsf_malloc.c
> > @@ -12,8 +12,18 @@
> >  #include <module.h>
> >  #include <tlsf.h>
> >
> > +#include <linux/kasan.h>
> > +#include <linux/list.h>
> > +
> >  extern tlsf_t tlsf_mem_pool;
> >
> > +struct pool_entry {
> > +     pool_t pool;
> > +     struct list_head list;
> > +};
> > +
> > +static LIST_HEAD(mem_pool_list);
> > +
> >  void *malloc(size_t bytes)
> >  {
> >       void *mem;
> > @@ -75,6 +85,7 @@ static void malloc_walker(void* ptr, size_t size, int=
 used, void *user)
> >
> >  void malloc_stats(void)
> >  {
> > +     struct pool_entry *cur_pool;
> >       struct malloc_stats s;
> >
> >       s.used =3D 0;
> > @@ -82,5 +93,58 @@ void malloc_stats(void)
> >
> >       tlsf_walk_pool(tlsf_get_pool(tlsf_mem_pool), malloc_walker, &s);
> >
> > +     list_for_each_entry(cur_pool, &mem_pool_list, list)
> > +             tlsf_walk_pool(cur_pool->pool, malloc_walker, &s);
>
> Can you create a pool_entry for the initial malloc area as well so that
> the list contains all pools?

I should be able to do that.

Since the initial memory pool would never be able to be removed, I
thought it would be better to not put it in the list at all. But if
I'm removing the ability to remove pools, then I can add the initial
malloc area to the list and simplify things.

>
> > +
> >       printf("used: %zu\nfree: %zu\n", s.used, s.free);
> >  }
> > +
> > +void *malloc_add_pool(void *mem, size_t bytes)
> > +{
> > +     pool_t new_pool;
> > +     struct pool_entry *new_pool_entry;
> > +
> > +     if (!mem)
> > +             return NULL;
> > +
> > +     new_pool_entry =3D malloc(sizeof(struct pool_entry));
> > +     if (!new_pool_entry)
> > +             return NULL;
> > +
> > +     new_pool =3D tlsf_add_pool(tlsf_mem_pool, mem, bytes);
> > +     if (!new_pool) {
> > +             free(new_pool_entry);
> > +             return NULL;
> > +     }
> > +
> > +     kasan_poison_shadow(mem, bytes, KASAN_TAG_INVALID);
> > +
> > +     new_pool_entry->pool =3D new_pool;
> > +     list_add(&new_pool_entry->list, &mem_pool_list);
> > +
> > +     return (void *)new_pool;
> > +}
> > +
> > +int malloc_remove_pool(void *pool)
> > +{
> > +     struct pool_entry *cur_pool;
> > +     struct malloc_stats s;
> > +
> > +     s.used =3D 0;
> > +     s.free =3D 0;
> > +
> > +     list_for_each_entry(cur_pool, &mem_pool_list, list) {
> > +             if (cur_pool->pool =3D=3D (pool_t)pool) {
> > +                     tlsf_walk_pool(cur_pool->pool, malloc_walker, &s)=
;
> > +                     if (s.used)
> > +                             return -EBUSY;
>
> Do we need this function at all? We have no way to move allocations away
> from the pool being removed, so there's no way to make this function
> work reliably. What's the point in having it?

The intent was to match the symmetry of the TLSF add/remove functions.
I will remove it from the next version, assuming removing unused pools
is not a useful feature.

-- David Dgien

>
> Sascha
>
> --
> Pengutronix e.K.                           |                             =
|
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  =
|
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|


