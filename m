Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YFeZO-00034g-Vr
 for barebox@lists.infradead.org; Mon, 26 Jan 2015 07:58:52 +0000
Date: Mon, 26 Jan 2015 08:58:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150126075825.GG12209@pengutronix.de>
References: <20150125222629.c52501c7d776cabf4317c82f@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150125222629.c52501c7d776cabf4317c82f@gmail.com>
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
Subject: Re: picopng does not support big-endian CPUs
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jan 25, 2015 at 10:26:29PM +0400, Antony Pavlov wrote:
> Hi All!
> 
> Current lib/gui/picopng.c has problems on big-endian CPUs.
> 
> Here are two examples from PNG_readPngHeader():
> 
> 	if (*(uint64_t *) in != PNG_SIGNATURE) {
> ...
> 	if (*(uint32_t *) &in[12] != CHUNK_IHDR) {
> 
> 
> Using memcmp in this situation is much better, e.g.
> 
> +	uint8_t png_signature[8] = {137, 80, 78, 71, 13, 10, 26, 10};
> ...
> +	if (memcmp(in, png_signature, 8)) {
> 
> 
> +	uint8_t chunk_header[4] = {0x49, 0x48, 0x44, 0x52};
> ...
> +	if (memcmp(&in[12], chunk_header, 4)) {
> 
> 
> Current lodepng works fine on big-endian, but can we disable picopng
> in Kconfig for big-endian CPUs?

Can't we just fix it? Are there more difficult places than the ones
above? If it turns out to be difficult I'm fine with adding a dependency
to CPU_BIG_ENDIAN.

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
