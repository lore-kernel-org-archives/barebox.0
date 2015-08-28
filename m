Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x22e.google.com ([2a00:1450:4010:c03::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZVLmu-0001ZM-1Y
 for barebox@lists.infradead.org; Fri, 28 Aug 2015 15:41:56 +0000
Received: by laba3 with SMTP id a3so34909428lab.1
 for <barebox@lists.infradead.org>; Fri, 28 Aug 2015 08:41:34 -0700 (PDT)
Date: Fri, 28 Aug 2015 18:49:39 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20150828184939.b90155d77eaa3333c44899be@gmail.com>
In-Reply-To: <20150828061900.GZ18700@pengutronix.de>
References: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
 <1440714250-28080-8-git-send-email-antonynpavlov@gmail.com>
 <20150828061900.GZ18700@pengutronix.de>
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
Subject: Re: [RFC 7/9] usb: ehci: add big-endian registers support
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Fri, 28 Aug 2015 08:19:00 +0200
Sascha Hauer <s.hauer@pengutronix.de> wrote:

> On Fri, Aug 28, 2015 at 01:24:08AM +0300, Antony Pavlov wrote:
> > +
> > +#ifdef CONFIG_USB_EHCI_BIG_ENDIAN_MMIO
> > +#define ehci_big_endian_mmio(e)		((e)->big_endian_mmio)
> > +#else
> > +#define ehci_big_endian_mmio(e)		0
> > +#endif
> > +
> > +static inline void ehci_writel(const struct ehci_priv *ehci,
> > +				__u32 __iomem *regs, const unsigned int val)
> >  {
> > -	writel(val, regs);
> > +	if (IS_ENABLED(CONFIG_USB_EHCI_BIG_ENDIAN_MMIO)) {
> > +		ehci_big_endian_mmio(ehci) ?
> > +			iowrite32be(val, regs) :
> > +			writel(val, regs);
> > +	} else
> > +		writel(val, regs);
> >  }
> =

> 	if (ehci_big_endian_mmio(ehci))
> 		iowrite32be(val, regs);
> 	else
> 		writel(val, regs);
> =

> is enough.

It looks you are right. :)

I have just stealed this code from linux kernel.
I have some suspicions on redundancy of this code but I didn't proposed any=
 good solution. =

Thanks!

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
