Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHRmY-0003xo-UA
 for barebox@lists.infradead.ORg; Fri, 08 Jan 2016 07:48:23 +0000
Date: Fri, 8 Jan 2016 08:47:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160108074756.GY13058@pengutronix.de>
References: <1452099691-28645-1-git-send-email-mkl@pengutronix.de>
 <1452099691-28645-3-git-send-email-mkl@pengutronix.de>
 <1452204201.4474.115.camel@rtred1test09.kymeta.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1452204201.4474.115.camel@rtred1test09.kymeta.local>
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
To: Trent Piepho <tpiepho@kymetacorp.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>, "kernel@pengutronix.de" <kernel@pengutronix.de>

On Thu, Jan 07, 2016 at 10:03:10PM +0000, Trent Piepho wrote:
> On Wed, 2016-01-06 at 18:01 +0100, Marc Kleine-Budde wrote:
> > +
> > +static void rsa_convert_big_endian(uint32_t *dst, const uint32_t *src, int len)
> > +{
> > +	int i;
> > +
> > +	for (i = 0; i < len; i++)
> > +		dst[i] = fdt32_to_cpu(src[len - 1 - i]);
> > +}
> > +
> 
> 
> > +struct rsa_public_key {
> > +	uint len;		/* len of modulus[] in number of uint32_t */
> > +	uint32_t n0inv;		/* -1 / modulus[0] mod 2^32 */
> > +	uint32_t *modulus;	/* modulus as little endian array */
> > +	uint32_t *rr;		/* R^2 as little endian array */
> > +	uint64_t exponent;	/* public exponent */
> 
> This says little endian, but it looks like it's really CPU endian, i.e.
> on a big endian system it would be big endian.

Indeed the original author of this code must have assumed that big
endian systems do not exist. Here's another one:

> +     /* Convert from big endian byte array to little endian word array. */
> +     for (i = 0, ptr = inout + key->len - 1; i < key->len; i++, ptr--)
> +             val[i] = get_unaligned_be32(ptr);

It "little endian" comments should be replaced by "cpu endian" in the
comments.

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
