Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from [2001:6f8:1178:4:290:27ff:fe1d:cc33]
	(helo=metis.ext.pengutronix.de)
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1NRjwe-0008DT-Bn
	for barebox@lists.infradead.org; Mon, 04 Jan 2010 10:13:53 +0000
Date: Mon, 4 Jan 2010 11:13:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100104101315.GF8799@pengutronix.de>
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

On Thu, Dec 31, 2009 at 10:55:21PM +0100, Matthias Kaehlcke wrote:
> Fix a typo in documentation file about adapting a new board which
> misnames the linker script template file
> 
> Signed-off-by: Matthias Kaehlcke <matthias@kaehlcke.net>

Ok, applied

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
