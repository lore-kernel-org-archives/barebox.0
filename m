Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.kymetacorp.com ([192.81.58.21])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHIfH-0003u1-UQ
 for barebox@lists.infradead.org; Thu, 07 Jan 2016 22:04:16 +0000
From: Trent Piepho <tpiepho@kymetacorp.com>
Date: Thu, 7 Jan 2016 22:03:10 +0000
Message-ID: <1452204201.4474.115.camel@rtred1test09.kymeta.local>
References: <1452099691-28645-1-git-send-email-mkl@pengutronix.de>
 <1452099691-28645-3-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1452099691-28645-3-git-send-email-mkl@pengutronix.de>
Content-Language: en-US
Content-ID: <2BB2CA642A96F1439A17BE30437069AC@kymetacorp.com>
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2 2/3] crypto: add RSA support
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>

On Wed, 2016-01-06 at 18:01 +0100, Marc Kleine-Budde wrote:
> +
> +static void rsa_convert_big_endian(uint32_t *dst, const uint32_t *src, int len)
> +{
> +	int i;
> +
> +	for (i = 0; i < len; i++)
> +		dst[i] = fdt32_to_cpu(src[len - 1 - i]);
> +}
> +


> +struct rsa_public_key {
> +	uint len;		/* len of modulus[] in number of uint32_t */
> +	uint32_t n0inv;		/* -1 / modulus[0] mod 2^32 */
> +	uint32_t *modulus;	/* modulus as little endian array */
> +	uint32_t *rr;		/* R^2 as little endian array */
> +	uint64_t exponent;	/* public exponent */

This says little endian, but it looks like it's really CPU endian, i.e.
on a big endian system it would be big endian.
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
