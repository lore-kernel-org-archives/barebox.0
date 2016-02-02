Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQVwk-0002HZ-Nz
 for barebox@lists.infradead.org; Tue, 02 Feb 2016 08:04:23 +0000
Date: Tue, 2 Feb 2016 09:03:58 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160202080358.GE4118@pengutronix.de>
References: <2936535.PfmXjTYsqy@dabox>
 <CAHQ1cqEBXBziKFGPaDQBK3zMw0+D4cnjvB2KXHBF906UG8Ahwg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqEBXBziKFGPaDQBK3zMw0+D4cnjvB2KXHBF906UG8Ahwg@mail.gmail.com>
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
Subject: Re: [PATCH v4] Terasic DE0-Nano-SoC: add support
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, Steffen Trumtrar <s.trumtrar@pengutronix.de>, Tim Sander <tim@krieglstein.org>

On Mon, Feb 01, 2016 at 11:08:10AM -0800, Andrey Smirnov wrote:
> On Mon, Feb 1, 2016 at 8:09 AM, Tim Sander <tim@krieglstein.org> wrote:
> > v4: use the amended patch not the old one, doh. Sorry for the noise.
> >

> > +static inline void ledon(int led)
> > +{
> > +       u32 val;
> > +
> > +       val = readl(0xFF709000);
> > +       val |= 1 << (led + 24);
> > +       writel(val, 0xFF709000);
> > +
> > +       val = readl(0xFF709004);
> > +       val |= 1 << (led + 24);
> > +       writel(val, 0xFF709004);
> > +}
> > +
> > +static inline void ledoff(int led)
> > +{
> > +       u32 val;
> > +
> > +       val = readl(0xFF709000);
> > +       val &= ~(1 << (led + 24));
> > +       writel(val, 0xFF709000);
> > +
> > +       val = readl(0xFF709004);
> > +       val &= ~(1 << (led + 24));
> > +       writel(val, 0xFF709004);
> > +}
> 
> Where are those "ledoff" and "ledon" functions used?

I assume they are for early debugging and otherwise unused. It's ok to
leave them here. Maybe add a comment why they are here, also some
indication for valid led values would be nice.

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
