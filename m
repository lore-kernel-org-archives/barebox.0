Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x236.google.com ([2a00:1450:4010:c04::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XADUP-00065P-Hc
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 07:30:58 +0000
Received: by mail-lb0-f182.google.com with SMTP id z11so1903575lbi.41
 for <barebox@lists.infradead.org>; Thu, 24 Jul 2014 00:30:34 -0700 (PDT)
Date: Thu, 24 Jul 2014 11:43:11 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20140724114311.564666f934e3054594858b81@gmail.com>
In-Reply-To: <20140724070347.GG23282@pengutronix.de>
References: <1405598047-2607-1-git-send-email-antonynpavlov@gmail.com>
 <20140723071408.GF23235@pengutronix.de>
 <20140724070347.GG23282@pengutronix.de>
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
Subject: Re: [RFC] usb: ehci: use linux-way ehci_readl and ehci_writel
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, 24 Jul 2014 09:03:47 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Wed, Jul 23, 2014 at 09:14:08AM +0200, Sascha Hauer wrote:
> > On Thu, Jul 17, 2014 at 03:54:07PM +0400, Antony Pavlov wrote:
> > > Also drop nowhere defined CONFIG_EHCI_DESC_BIG_ENDIAN.
> > > =

> > > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> > =

> > Applied, thanks
> =

> And reverted it.
> =

> > > -#if defined CONFIG_EHCI_DESC_BIG_ENDIAN
> > > -#define	ehci_readl(x)		(*((volatile u32 *)(x)))
> > > -#define ehci_writel(a, b)	(*((volatile u32 *)(a)) =3D ((volatile u32=
)b))
> > > -#else
> > > -#define ehci_readl(x)		cpu_to_le32((*((volatile u32 *)(x))))
> > > -#define ehci_writel(a, b)	(*((volatile u32 *)(a)) =3D \
> > > -					cpu_to_le32(((volatile u32)b)))
> > > -#endif
> > > +static inline void ehci_writel(const unsigned int val, __u32 __iomem=
 *regs)
> > > +{
> > > +	writel(val, regs);
> > > +}
> =

> ehci_writel has the argument order (reg, val), not (val, reg)
> =

> Putting a 'writel' in a function name with this argument order wasn't
> the best idea...

Sorry!

I have made this patch while I was working on AR933x USB support (big-endia=
n EHCI).
I suppose this patch was initial buggy version and I have forgot to ammend =
fixup.

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
