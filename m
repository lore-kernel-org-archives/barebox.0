Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gREH2-00074h-FN
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 10:37:54 +0000
Date: Mon, 26 Nov 2018 11:37:39 +0100
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20181126103739.io46y3azn4zstvzw@pengutronix.de>
References: <20181123133553.24761-1-m.tretter@pengutronix.de>
 <20181123133553.24761-4-m.tretter@pengutronix.de>
 <87pnuv525v.fsf@czerwinskis.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87pnuv525v.fsf@czerwinskis.de>
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
Subject: Re: [PATCH 3/3] ARM: zynqmp: add support for Xilinx ZCU104 board
To: Rouven Czerwinski <rouven@czerwinskis.de>
Cc: barebox@lists.infradead.org, Michael Tretter <m.tretter@pengutronix.de>

On Fri, Nov 23, 2018 at 02:55:24PM +0100, Rouven Czerwinski wrote:
> Michael Tretter <m.tretter@pengutronix.de> writes:
[...]
> > +static inline void PUTC_LL(int c)
> > +{
> > +	void __iomem *base = (void __iomem *)ZYNQMP_DEBUG_LL_UART_BASE;
> > +
> > +	if (readl(base) & ZYNQMP_UART_TXDIS)
> > +		return;
> > +
> > +	while ((readl(base + ZYNQMP_UART_CHANNEL_STS) & ZYNQMP_UART_STS_TFUL) != 0)
> > +		;
>                 ^ this should be in the previous line

Is there a coding style for that? I find the semicolon better in a
single line to make it more obvious that this is an empty while loop.

 - Roland

> > +
> > +	writel(c, base + 0x30);
> > +}
> > +
> > +#endif

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
