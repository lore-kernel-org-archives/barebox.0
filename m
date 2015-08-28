Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZVD0U-0007SM-Rw
 for barebox@lists.infradead.org; Fri, 28 Aug 2015 06:19:23 +0000
Date: Fri, 28 Aug 2015 08:19:00 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150828061900.GZ18700@pengutronix.de>
References: <1440714250-28080-1-git-send-email-antonynpavlov@gmail.com>
 <1440714250-28080-8-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1440714250-28080-8-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC 7/9] usb: ehci: add big-endian registers support
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

On Fri, Aug 28, 2015 at 01:24:08AM +0300, Antony Pavlov wrote:
> +
> +#ifdef CONFIG_USB_EHCI_BIG_ENDIAN_MMIO
> +#define ehci_big_endian_mmio(e)		((e)->big_endian_mmio)
> +#else
> +#define ehci_big_endian_mmio(e)		0
> +#endif
> +
> +static inline void ehci_writel(const struct ehci_priv *ehci,
> +				__u32 __iomem *regs, const unsigned int val)
>  {
> -	writel(val, regs);
> +	if (IS_ENABLED(CONFIG_USB_EHCI_BIG_ENDIAN_MMIO)) {
> +		ehci_big_endian_mmio(ehci) ?
> +			iowrite32be(val, regs) :
> +			writel(val, regs);
> +	} else
> +		writel(val, regs);
>  }

	if (ehci_big_endian_mmio(ehci))
		iowrite32be(val, regs);
	else
		writel(val, regs);

is enough.

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
