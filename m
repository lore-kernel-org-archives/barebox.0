Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f170.mail.ru ([94.100.178.89])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UZz1w-0002xn-Ex
 for barebox@lists.infradead.org; Wed, 08 May 2013 07:43:17 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Wed, 08 May 2013 11:42:50 +0400
Message-ID: <1367998970.200330799@f170.mail.ru>
In-Reply-To: <20130508073549.GZ32299@pengutronix.de>
References: <1367081935-6738-1-git-send-email-shc_work@mail.ru>
 <20130508073549.GZ32299@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAxLzJdIEFSTTogTWFrZSBPTUFQIHN5c2xpYi5jIGZ1?=
 =?UTF-8?B?bmN0aW9ucyBhdmFpbGFibGUgZm9yIG90aGVyIEFSTSB0YXJnZXRz?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> On Sat, Apr 27, 2013 at 08:58:54PM +0400, Alexander Shiyan wrote:
> > This patch moves OMAP syslib functions into common ARM location, so
> > make these functions available to other ARM targets.
> > 
> > +/**
> > + * @brief clear & set a value in a bit range for a 32 bit address
> > + *
> > + * @param[in] addr Address to set/read from
> > + * @param[in] start_bit Where to put the value
> > + * @param[in] num_bits number of bits the value should be set
> > + * @param[in] value the value to set
> > + *
> > + * @return void
> > + */
> > +static inline void sr32(u32 addr, u32 start_bit, u32 num_bits, u32 value)
> > +{
> > +	u32 tmp, msk = 0;
> > +	msk = 1 << num_bits;
> > +	--msk;
> > +	tmp = readl(addr) & ~(msk << start_bit);
> > +	tmp |=  value << start_bit;
> > +	writel(tmp, addr);
> > +}
> > +
> > +u32 wait_on_value(u32 read_bit_mask, u32 match_value, u32 read_addr, u32 bound);
> 
> I'm still undecided on this. On one hand it's good to have common
> functions for these jobs, but on the other hand I'm not sure these are
> the versions we should use as the definite answer to the problem. I
> don't know how many versions of read-modify-write functions are around,
> but there are many.
> 
> > +void sdelay(unsigned long loops);
> 
> The sdelay change is a good one, though I think this should be a static
> inline function.

The U-Boot contain followed note about this inline:

/************************************************************
* sdelay() - simple spin loop. Will be constant time as
* its generally used in bypass conditions only. This
* is necessary until timers are accessible.
*
* not inline to increase chances its in cache when called
*************************************************************/

So...

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
