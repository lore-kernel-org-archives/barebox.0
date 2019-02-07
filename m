Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1greY1-0005pm-6D
 for barebox@lists.infradead.org; Thu, 07 Feb 2019 07:56:38 +0000
Date: Thu, 7 Feb 2019 08:56:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20190207075635.ws5uh74kqvz2zgq5@pengutronix.de>
References: <20190206074921.11115-1-s.hauer@pengutronix.de>
 <20190206074921.11115-7-s.hauer@pengutronix.de>
 <CAHQ1cqGPim3-3nayOZ4H_6aBSr71b0kNhdG16QwNZmcLEseidQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAHQ1cqGPim3-3nayOZ4H_6aBSr71b0kNhdG16QwNZmcLEseidQ@mail.gmail.com>
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
Subject: Re: [PATCH 6/8] mci: imx-esdhc: implement static inline io wrappers
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Barebox List <barebox@lists.infradead.org>

On Wed, Feb 06, 2019 at 04:55:54PM -0800, Andrey Smirnov wrote:
> On Tue, Feb 5, 2019 at 11:49 PM Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > +static inline void esdhc_clrbits32(struct fsl_esdhc_host *host, unsigned int reg,
> > +                                     u32 clear)
> > +{
> > +       u32 val;
> > +
> > +       val = esdhc_read32(host, reg);
> > +       val &= ~clear;
> > +       esdhc_write32(host, reg, val);
> 
> You can simplify this to:
> 
> esdhc_clrsetbits32(host, reg, clear, 0);
> 
> > +}
> > +
> > +static inline void esdhc_setbits32(struct fsl_esdhc_host *host, unsigned int reg,
> > +                                  u32 set)
> > +{
> > +       u32 val;
> > +
> > +       val = esdhc_read32(host, reg);
> > +       val |= set;
> > +       esdhc_write32(host, reg, val);
> 
> and this to:
> 
> esdhc_clrsetbits32(host, reg, 0, set);

Ok, did that.

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
