Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NZJW1-0006wE-Nd
	for barebox@lists.infradead.org; Mon, 25 Jan 2010 07:37:43 +0000
Date: Mon, 25 Jan 2010 08:37:34 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100125073734.GA10139@pengutronix.de>
References: <20091231215521.GO5093@darwin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20091231215521.GO5093@darwin>
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
Subject: Re: [PATCH] Fix typo in board.dox
To: Matthias Kaehlcke <matthias@kaehlcke.net>
Cc: barebox@lists.infradead.org

Hi Matthias,

On Thu, Dec 31, 2009 at 10:55:21PM +0100, Matthias Kaehlcke wrote:
> Fix a typo in documentation file about adapting a new board which
> misnames the linker script template file
> 
> Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>

This one is already in master. Maybe I forgot to notice you that time.

Sascha

> 
> --
> 
> diff --git a/board/board.dox b/board/board.dox
> index 9c32682..76bff45 100644
> --- a/board/board.dox
> +++ b/board/board.dox
> @@ -58,7 +58,7 @@ at the right architecture.
>  
>  @note Consider to use an unique page lable.
>  
> -@subsection board_lscript board/\<boardname\>/barebox.ld.S
> +@subsection board_lscript board/\<boardname\>/barebox.lds.S
>  
>  If your board needs a special binary @a barebox layout, you can provide a local
>  board linker script file. This will replace the generic one provided by your
> 
> -- 
> Matthias Kaehlcke
> Embedded Linux Developer
> Barcelona
> 
>      Nationalism is an infantile disease. It is the measles of mankind
>                          (Albert Einstein)
>                                                                  .''`.
>     using free software / Debian GNU/Linux | http://debian.org  : :'  :
>                                                                 `. `'`
> gpg --keyserver pgp.mit.edu --recv-keys 47D8E5D4                  `-
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
