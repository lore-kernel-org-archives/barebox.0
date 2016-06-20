Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1bEst7-0007IH-Cj
 for barebox@lists.infradead.org; Mon, 20 Jun 2016 06:40:49 +0000
Date: Mon, 20 Jun 2016 08:40:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160620064027.GP9677@pengutronix.de>
References: <1466362372-4248-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1466362372-4248-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] crypto: crc32: Optimize dynamic CRC table generation
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

Hi Alexander,

On Sun, Jun 19, 2016 at 09:52:52PM +0300, Alexander Shiyan wrote:
> In barebox we have an option for dynamic formation of the CRC32
> table (DYNAMIC_CRC_TABLE), but the source code declares a static
> array which is simply filled with data, the resulting code becomes
> even more than without DYNAMIC_CRC_TABLE option, due to the BSS usage.
> CONFIG_DYNAMIC_CRC_TABLE=n
>    text    data     bss     dec     hex filename
>    1884       0       0    1884     75c crc32.o
> CONFIG_DYNAMIC_CRC_TABLE=y
>    text    data     bss     dec     hex filename
>    1066       4    1024    2094     82e crc32.o
> 
> This patch provides dynamic buffer allocation for the CRC table,
> which saves about 1 Kbyte, as it should be.
> CONFIG_DYNAMIC_CRC_TABLE=y
>    text    data     bss     dec     hex filename
>    1062       0       4    1066     42a crc32.o
> 
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
> ---
>  crypto/crc32.c | 15 +++++++--------
>  1 file changed, 7 insertions(+), 8 deletions(-)
> 
> diff --git a/crypto/crc32.c b/crypto/crc32.c
> index 3bff6fe..c510c31 100644
> --- a/crypto/crc32.c
> +++ b/crypto/crc32.c
> @@ -24,9 +24,7 @@
>  
>  #ifdef CONFIG_DYNAMIC_CRC_TABLE
>  
> -static int crc_table_empty = 1;
> -static ulong crc_table[256];
> -static void make_crc_table(void);
> +static ulong *crc_table;
>  
>  /*
>    Generate a table for a byte-wise 32-bit CRC calculation on the polynomial:
> @@ -65,6 +63,8 @@ static void make_crc_table(void)
>    for (n = 0; n < sizeof(p)/sizeof(char); n++)
>      poly |= 1L << (31 - p[n]);
>  
> +  crc_table = malloc(sizeof(ulong) * 256);
> +

Either return value cheching or xmalloc please. Changed it to xmalloc
while applying.

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
