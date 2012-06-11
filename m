Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp1-g21.free.fr ([2a01:e0c:1:1599::10])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SeBfm-0000dc-JL
 for barebox@lists.infradead.org; Mon, 11 Jun 2012 20:57:17 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
References: <m34nqjgyi2.fsf@intrepid.localdomain>
Date: Mon, 11 Jun 2012 22:57:03 +0200
In-Reply-To: <m34nqjgyi2.fsf@intrepid.localdomain> (Krzysztof Halasa's message
 of "Sun, 10 Jun 2012 14:08:53 +0200")
Message-ID: <87mx49va74.fsf@free.fr>
MIME-Version: 1.0
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
Subject: Re: Is Intel/Marvell PXA really ARMv4?
To: Krzysztof Halasa <khc@pm.waw.pl>
Cc: barebox@lists.infradead.org

Krzysztof Halasa <khc@pm.waw.pl> writes:

> (Commit 36c47ce426cbe7aea59fab4c0218fe07cd80bdc0)
>
> arch/arm/cpu/Kconfig:
>
> +# Xscale PXA25x, PXA27x
> +config CPU_XSCALE
> +	bool
> +	select CPU_32v4T
> +
>
> I think all XScale CPUs are (at least) ARM v5TE, aren't they?
Yes they are ... but see next lines ...

The PXA processor is an ARMv5TE. The cache-armv5.S in barebox is acutally
matched to be used with ARMv5TEJ and doesn't get along with a v5TE. Hence we
switch the core depenendy to v4t since the callbacks are fully compatible.

That's what in the historical commits of pxa's barebox support.

Cheers.

-- 
Robert

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
