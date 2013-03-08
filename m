Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UDxqY-00083K-KZ
 for barebox@lists.infradead.org; Fri, 08 Mar 2013 14:00:37 +0000
Date: Fri, 8 Mar 2013 15:00:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130308140025.GE1906@pengutronix.de>
References: <1362744484-17844-1-git-send-email-s.hauer@pengutronix.de>
 <1362744484-17844-2-git-send-email-s.hauer@pengutronix.de>
 <1362745042.129909210@f107.mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362745042.129909210@f107.mail.ru>
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
Subject: Re: [PATCH 1/3] ARM i.MX6: Add mmdc calibration support
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Fri, Mar 08, 2013 at 04:17:22PM +0400, Alexander Shiyan wrote:
> Hello.
> 
> Only few questions inlined.
> 
> > This adds support for the various DDR calibration functions in the
> > i.MX6 MMDC.
> ...
> > +static inline u32 reg32_read(u32 reg)
> > +{
> > +	return readl(reg);
> > +}
> > +
> > +static inline void reg32_write(u32 reg, u32 val)
> > +{
> > +	writel(val, reg);
> > +}
> > +
> 
> What a reason to separate functions instead of readl/writel?

The reason is that the original code had this and I was too lazy to swap
the argument order, but I can fix this.

> 
> > +static inline void reg32setbit(u32 reg, int bit)
> > +{
> > +	u32 val;
> > +
> > +	val = readl(reg);
> > +	val |= 1 << bit;
> > +	writel(val, reg);
> > +}
> > +
> > +static inline void reg32clrbit(u32 reg, int bit)
> > +{
> > +	u32 val;
> > +
> > +	val = readl(reg);
> > +	val &= ~(1 << bit);
> > +	writel(val, reg);
> > +}
> 
> Maybe move this into asm-generic/io.h? Seems it can be reused by other
> users.

Dropped these. I'm not so convinced of helpers for these, at least not
enough to write them myself.

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
