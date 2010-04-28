Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 31.mail-out.ovh.net ([213.186.62.10])
	by bombadil.infradead.org with smtp (Exim 4.69 #1 (Red Hat Linux))
	id 1O6x8V-0002DO-Im
	for barebox@lists.infradead.org; Wed, 28 Apr 2010 02:36:28 +0000
Date: Wed, 28 Apr 2010 04:35:39 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100428023539.GG19722@game.jcrosoft.org>
References: <1272013443-29196-1-git-send-email-s.hauer@pengutronix.de>
	<1272013443-29196-13-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1272013443-29196-13-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 12/14] pcm043: reimplement lowlevel code in C
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> +
> +	__asm__ __volatile__("mrc p15, 0, %0, c1, c0, 0":"=r"(r));
> +	r |= (1 << 11); /* Flow prediction (Z) */
> +	r |= (1 << 22); /* unaligned accesses  */
> +	r |= (1 << 21); /* Low Int Latency     */
> +
> +	__asm__ __volatile__("mrc p15, 0, %0, c1, c0, 1":"=r"(s));
> +	s |= 0x7;
> +	__asm__ __volatile__("mcr p15, 0, %0, c1, c0, 1" : : "r"(s));
> +
> +	__asm__ __volatile__("mcr p15, 0, %0, c1, c0, 0" : : "r"(r));
why not use set_cr and get_cr when it's possible and the CR_x macro?
> +
> +	r = 0;
> +	__asm__ __volatile__("mcr p15, 0, %0, c15, c2, 4" : : "r"(r));
> +
> +	/*
> +	 * Branch predicition is now enabled.  Flush the BTAC to ensure a valid
> +	 * starting point.  Don't flush BTAC while it is disabled to avoid
> +	 * ARM1136 erratum 408023.
> +	 */
> +	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 6" : : "r"(r));
> +
> +	/* invalidate I cache and D cache */
> +	__asm__ __volatile__("mcr p15, 0, %0, c7, c7, 0" : : "r"(r));
> +
> +	/* invalidate TLBs */
> +	__asm__ __volatile__("mcr p15, 0, %0, c8, c7, 0" : : "r"(r));
> +
> +	/* Drain the write buffer */
> +	__asm__ __volatile__("mcr p15, 0, %0, c7, c10, 4" : : "r"(r));
is it really board specific or arch specific?

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
