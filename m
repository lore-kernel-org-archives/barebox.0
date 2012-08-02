Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SwxMA-0008Ou-5a
 for barebox@lists.infradead.org; Thu, 02 Aug 2012 15:30:34 +0000
Date: Thu, 2 Aug 2012 17:30:32 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120802153032.GE1451@pengutronix.de>
References: <20120730100022.GD19759@game.jcrosoft.org>
 <1343642565-32257-1-git-send-email-plagnioj@jcrosoft.com>
 <1343642565-32257-5-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1343642565-32257-5-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 05/12] Add compressed image support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Mon, Jul 30, 2012 at 12:02:38PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> From: Sascha Hauer <s.hauer@pengutronix.de>
> +
>  void barebox_pbl(uint32_t offset)
>  {
> +	uint32_t compressed_start, compressed_end, len;
> +	void (*uncompress)(void *compressed_start, unsigned int len);
> +
> +	compressed_start = (uint32_t)&input_data - offset;
> +	compressed_end = (uint32_t)&input_data_end - offset;
> +	len = compressed_end - compressed_start;
> +
> +	/*
> +	 * Check if the compressed binary will be overwritten
> +	 * by the uncompressed binary
> +	 */
> +	if (compressed_start >= TEXT_BASE &&
> +			compressed_start < TEXT_BASE + len * 4 ) {
> +		/*
> +		 * copy compressed binary to its link address
> +		 */
> +		memcpy(&input_data, (void *)compressed_start, len);
> +		compressed_start = (uint32_t)&input_data;
> +	}
> +
> +	uncompress = barebox_uncompress;
> +
> +	/* call barebox_uncompress with its absolute address */
> +	__asm__ __volatile__(
> +		"mov r0, %1\n"
> +		"mov r1, %2\n"
> +		"mov pc, %0\n"
> +		:
> +		: "r"(uncompress), "r"(compressed_start), "r"(len)
> +		: "r0", "r1");

When the pbl code runs at its correct address, then we can simply do a
barebox_uncompress() here.

Fixed this before applying.

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
