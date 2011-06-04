Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 25.97.mail-out.ovh.net ([178.32.96.248]
	helo=97.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QSqbG-000297-UE
	for barebox@lists.infradead.org; Sat, 04 Jun 2011 13:09:11 +0000
Received: from 63.mail-out.ovh.net (7.63.mail-out.ovh.net [87.98.170.179])
	by 97.mail-out.ovh.net (Postfix) with SMTP id 773F8420760
	for <barebox@lists.infradead.org>;
	Sat,  4 Jun 2011 15:09:18 +0200 (CEST)
Date: Sat, 4 Jun 2011 14:56:15 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110604125615.GA11298@game.jcrosoft.org>
References: <1307029887-7091-1-git-send-email-plagnioj@jcrosoft.com>
	<001801cc21bc$4677db10$d3679130$@cpdesign.com.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <001801cc21bc$4677db10$d3679130$@cpdesign.com.au>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] import linux __iowrite32/64_copy support
To: Marc Reilly <marc@cpdesign.com.au>
Cc: barebox@lists.infradead.org

On 17:02 Fri 03 Jun     , Marc Reilly wrote:
> Hi,
> 
> <snip>
> 
> > +/**
> > + * __iowrite64_copy - copy data to MMIO space, in 64-bit or 32-bit
> > +units
> > + * @to: destination, in MMIO space (must be 64-bit aligned)
> > + * @from: source (must be 64-bit aligned)
> > + * @count: number of 64-bit quantities to copy
> > + *
> > + * Copy data from kernel space to MMIO space, in units of 32 or 64 bits
> > +at a
> > + * time.  Order of access is not guaranteed, nor is a memory barrier
> > + * performed afterwards.
> > + */
> > +void __attribute__((weak)) __iowrite64_copy(void __iomem *to,
> > +					    const void *from,
> > +					    size_t count)
> > +{
> > +#ifdef CONFIG_64BIT
> > +	u64 __iomem *dst = to;
> > +	const u64 *src = from;
> > +	const u64 *end = src + count;
> > +
> > +	while (src < end)
> > +		__raw_writeq(*src++, dst++);
> > +#else
> > +	__iowrite32_copy(to, from, count * 2); #endif }
> > +
> > +EXPORT_SYMBOL_GPL(__iowrite64_copy);
> > --
> 
> Is this missing #endif  for CONFIG_64BIT ?
no in the original here it's present

please double check your e-mail

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
