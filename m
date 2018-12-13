Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLIL-0001SS-6T
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:20:30 +0000
Date: Thu, 13 Dec 2018 08:20:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181213072015.kxwhdct6wjufkgwx@pengutronix.de>
References: <20181213063356.19138-1-t.scherer@eckelmann.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181213063356.19138-1-t.scherer@eckelmann.de>
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
Subject: Re: [PATCH] imd: model and compatible missing in metadata
To: "Thorsten K. Scherer" <t.scherer@eckelmann.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 13, 2018 at 07:33:56AM +0100, Thorsten K. Scherer wrote:
> fixes 97e81f2
> 
> Signed-off-by: Thorsten K. Scherer <t.scherer@eckelmann.de>
> ---
>  include/asm-generic/barebox.lds.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
> index 74d3ca4a9..decaab79a 100644
> --- a/include/asm-generic/barebox.lds.h
> +++ b/include/asm-generic/barebox.lds.h
> @@ -66,7 +66,7 @@
>  #define BAREBOX_IMD				\
>  	KEEP(*(.barebox_imd_start))		\
>  	KEEP(*(.barebox_imd_1*))		\
> -	*(.barebox_imd_0*)			\
> +	KEEP(*(.barebox_imd_0*))		\

Applied, thanks. I wonder why I didn't add that in the first place,
given that all other lines have the KEEP().

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
