Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XAD4U-0002bw-FX
 for barebox@lists.infradead.org; Thu, 24 Jul 2014 07:04:11 +0000
Date: Thu, 24 Jul 2014 09:03:47 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140724070347.GG23282@pengutronix.de>
References: <1405598047-2607-1-git-send-email-antonynpavlov@gmail.com>
 <20140723071408.GF23235@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20140723071408.GF23235@pengutronix.de>
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
Subject: Re: [RFC] usb: ehci: use linux-way ehci_readl and ehci_writel
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, Jul 23, 2014 at 09:14:08AM +0200, Sascha Hauer wrote:
> On Thu, Jul 17, 2014 at 03:54:07PM +0400, Antony Pavlov wrote:
> > Also drop nowhere defined CONFIG_EHCI_DESC_BIG_ENDIAN.
> > 
> > Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> 
> Applied, thanks

And reverted it.

> > -#if defined CONFIG_EHCI_DESC_BIG_ENDIAN
> > -#define	ehci_readl(x)		(*((volatile u32 *)(x)))
> > -#define ehci_writel(a, b)	(*((volatile u32 *)(a)) = ((volatile u32)b))
> > -#else
> > -#define ehci_readl(x)		cpu_to_le32((*((volatile u32 *)(x))))
> > -#define ehci_writel(a, b)	(*((volatile u32 *)(a)) = \
> > -					cpu_to_le32(((volatile u32)b)))
> > -#endif
> > +static inline void ehci_writel(const unsigned int val, __u32 __iomem *regs)
> > +{
> > +	writel(val, regs);
> > +}

ehci_writel has the argument order (reg, val), not (val, reg)

Putting a 'writel' in a function name with this argument order wasn't
the best idea...

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
