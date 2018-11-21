Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gPOIM-0003Wy-1j
 for barebox@lists.infradead.org; Wed, 21 Nov 2018 08:55:39 +0000
Date: Wed, 21 Nov 2018 09:55:25 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181121085525.o7scwey2zitttnbi@pengutronix.de>
References: <20181120225713.10047-1-r.hieber@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181120225713.10047-1-r.hieber@pengutronix.de>
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
Subject: Re: [PATCH] memory_display: add padding to simplify counting
To: Roland Hieber <r.hieber@pengutronix.de>
Cc: barebox@lists.infradead.org

On Tue, Nov 20, 2018 at 11:57:13PM +0100, Roland Hieber wrote:
> Trying to count single bytes (e.g. when adding an offset) in 'word' or
> 'byte' output mode is not easy in the current formatting, and (at least
> for me) has a high chance of miscounting or losing track of groups:
> 
>     barebox@boardname:/ md -b 0x149983f0+32
>     149983f0: 18 00 00 00 00 00 0d 86 00 00 00 00 00 00 00 00    ................
>     14998400: 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00    ................
> 
>     barebox@boardname:/ md -w 0x149983f0+32
>     149983f0: 0018 0000 0000 860d 0000 0000 0000 0000            ................
>     14998400: 0000 0000 0000 0000 0000 0000 0000 0000            ................
> 
> With an additional space after 8 bytes, counting becomes easier:
> 
>     barebox@boardname:/ md -b 0x149983f0+32
>     149983f0: 18 00 00 00 00 00 0d 86  00 00 00 00 00 00 00 00   ................
>     14998400: 00 00 00 00 00 00 00 00  00 00 00 00 00 00 00 00   ................
> 
>     barebox@boardname:/ md -w 0x149983f0+32
>     149983f0: 0018 0000 0000 860d  0000 0000 0000 0000           ................
>     14998400: 0000 0000 0000 0000  0000 0000 0000 0000           ................
> 
> The 'quad' and 'long' output modes stay the same and are already much
> more easier to count because they build bigger and therefore less groups
> of bytes per line.
> 
> Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
> ---

Nice ;) Applied, thanks

Sascha

>  common/memory_display.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/common/memory_display.c b/common/memory_display.c
> index ea91985e5d..30821cced4 100644
> --- a/common/memory_display.c
> +++ b/common/memory_display.c
> @@ -55,23 +55,27 @@ int memory_display(const void *addr, loff_t offs, unsigned nbytes, int size, int
>  			} else if (size == 2) {
>  				uint16_t res;
>  				data_abort_mask();
>  				res = *((uint16_t *)addr);
>  				if (swab)
>  					res = __swab16(res);
> +				if (i > 1 && i % 8 == 0)
> +					count -= printf(" ");
>  				if (data_abort_unmask()) {
>  					res = 0xffff;
>  					count -= printf(" xxxx");
>  				} else {
>  					count -= printf(" %04x", res);
>  				}
>  				*usp++ = res;
>  			} else {
>  				uint8_t res;
>  				data_abort_mask();
>  				res = *((uint8_t *)addr);
> +				if (i > 1 && i % 8 == 0)
> +					count -= printf(" ");
>  				if (data_abort_unmask()) {
>  					res = 0xff;
>  					count -= printf(" xx");
>  				} else {
>  					count -= printf(" %02x", res);
>  				}
> -- 
> 2.19.1
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
