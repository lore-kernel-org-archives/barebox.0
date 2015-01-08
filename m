Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22c.google.com ([2a00:1450:4010:c03::22c])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Y9GmK-0000k4-ST
 for barebox@lists.infradead.org; Thu, 08 Jan 2015 17:21:49 +0000
Received: by mail-la0-f44.google.com with SMTP id gd6so10404073lab.3
 for <barebox@lists.infradead.org>; Thu, 08 Jan 2015 09:21:24 -0800 (PST)
Date: Thu, 8 Jan 2015 20:23:58 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150108202358.414e475dab2e49011c7639aa@gmail.com>
In-Reply-To: <20141220070542.GC30369@pengutronix.de>
References: <1418941957-6950-1-git-send-email-antonynpavlov@gmail.com>
 <20141219064542.GY30369@pengutronix.de>
 <20141219171219.b672ff943c851cbe6adf5006@gmail.com>
 <20141220070542.GC30369@pengutronix.de>
Mime-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [RFC] introduce ioremap() and dev_ioremap_resource()
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Sat, 20 Dec 2014 08:05:42 +0100
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Dec 19, 2014 at 05:12:19PM +0400, Antony Pavlov wrote:
> > On Fri, 19 Dec 2014 07:45:42 +0100
> > > > moreover dev_ioremap_resource() has the second 'struct resource *re=
s'
> > > > argument, so additional dev_get_resource() is needed.
> > > > =

> > > > Can we insert ioremap() into dev_request_mem_region() directly?
> > > > (we also can use already existion IOMEM() macro instead of linux' i=
oremap()).
> > > =

> > > I'm not sure if it's a good idea to put that behind some standard
> > > lookingioremap() call, because its behaviour is not standard.
> > > =

> > > I'm also fine with adding some
> > > =

> > > #ifdef CONFIG_MIPS
> > > 	return mips_iomem(res->start);
> > > #else
> > > 	return (void __force __iomem *)res->start;
> > > #endif
> > > =

> > > At least this makes explicit that MIPS has a very special handling.
> > =

> > We already have this in include/common.h
> > =

> > #if defined(CONFIG_MIPS)
> > #include <asm/addrspace.h>
> > =

> > #define IOMEM(addr) ((void __force __iomem *)CKSEG1ADDR(addr))
> > #else
> > #define IOMEM(addr) ((void __force __iomem *)(addr))
> > #endif
> > =

> > So can I use just
> > =

> >     return IOMEM(res->start);
> > =

> > in dev_request_mem_region()?
> =

> Yes, nice. That's the right solution then.

Sascha! Just now all device-tree enabled MIPS boards are broken.
Please hold over barebox 2015.01 release till dev_request_mem_region() fix;
I'll send the patch in several hours (I want check it on several MIPS board=
).

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
