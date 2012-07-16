Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqfZ9-0004TS-KQ
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 07:18:00 +0000
Date: Mon, 16 Jul 2012 09:17:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120716071752.GV30009@pengutronix.de>
References: <1342354917-14742-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342354917-14742-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] filetype: add forgotten mips barebox filetype_str
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Jul 15, 2012 at 04:21:57PM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  common/filetype.c |    1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/common/filetype.c b/common/filetype.c
> index 39c2098..1a5b82d 100644
> --- a/common/filetype.c
> +++ b/common/filetype.c
> @@ -39,6 +39,7 @@ static const char *filetype_str[] = {
>  	[filetype_oftree] = "open firmware flat device tree",
>  	[filetype_aimage] = "Android boot image",
>  	[filetype_sh] = "Bourne Shell",
> +	[filetype_mips_barebox] = "MIPS barebox image",
>  };
>  
>  const char *file_type_to_string(enum filetype f)
> -- 
> 1.7.10
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
