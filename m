Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pw0-f49.google.com ([209.85.160.49])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QSOPN-0008TA-QZ
	for barebox@lists.infradead.org; Fri, 03 Jun 2011 07:03:03 +0000
Received: by pwi8 with SMTP id 8so1191424pwi.36
	for <barebox@lists.infradead.org>; Fri, 03 Jun 2011 00:02:57 -0700 (PDT)
From: "Marc Reilly" <marc@cpdesign.com.au>
References: <1307029887-7091-1-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1307029887-7091-1-git-send-email-plagnioj@jcrosoft.com>
Date: Fri, 3 Jun 2011 17:02:54 +1000
Message-ID: <001801cc21bc$4677db10$d3679130$@cpdesign.com.au>
MIME-Version: 1.0
Content-Language: en-au
Reply-To: marc@cpdesign.com.au
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
Subject: RE: [PATCH] import linux __iowrite32/64_copy support
To: 'Jean-Christophe PLAGNIOL-VILLARD' <plagnioj@jcrosoft.com>, barebox@lists.infradead.org

Hi,

<snip>

> +/**
> + * __iowrite64_copy - copy data to MMIO space, in 64-bit or 32-bit
> +units
> + * @to: destination, in MMIO space (must be 64-bit aligned)
> + * @from: source (must be 64-bit aligned)
> + * @count: number of 64-bit quantities to copy
> + *
> + * Copy data from kernel space to MMIO space, in units of 32 or 64 bits
> +at a
> + * time.  Order of access is not guaranteed, nor is a memory barrier
> + * performed afterwards.
> + */
> +void __attribute__((weak)) __iowrite64_copy(void __iomem *to,
> +					    const void *from,
> +					    size_t count)
> +{
> +#ifdef CONFIG_64BIT
> +	u64 __iomem *dst = to;
> +	const u64 *src = from;
> +	const u64 *end = src + count;
> +
> +	while (src < end)
> +		__raw_writeq(*src++, dst++);
> +#else
> +	__iowrite32_copy(to, from, count * 2); #endif }
> +
> +EXPORT_SYMBOL_GPL(__iowrite64_copy);
> --

Is this missing #endif  for CONFIG_64BIT ?


Cheers
Marc


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
