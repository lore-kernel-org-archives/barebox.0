Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SWYs7-0008Ds-Ou
 for barebox@lists.infradead.org; Mon, 21 May 2012 20:06:28 +0000
Date: Mon, 21 May 2012 22:06:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120521200626.GH30400@pengutronix.de>
References: <1337615641-7246-1-git-send-email-alan@signal11.us>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1337615641-7246-1-git-send-email-alan@signal11.us>
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
Subject: Re: [PATCH] README: change path to sandbox environment
To: Alan Ott <alan@signal11.us>
Cc: barebox@lists.infradead.org

On Mon, May 21, 2012 at 11:54:01AM -0400, Alan Ott wrote:
> The path to the sandbox environment is now arch/sandbox/board/env .
> 
> Signed-off-by: Alan Ott <alan@signal11.us>

Also applied

Sascha

> ---
>  README |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/README b/README
> index c875b7d..cec9ccb 100644
> --- a/README
> +++ b/README
> @@ -110,7 +110,7 @@ Barebox usually needs an environment for storing the configuration data.
>  You can generate an environment using the example environment contained
>  in board/sandbox/env:
>  
> -  # ./scripts/bareboxenv -s -p 0x10000 board/sandbox/env/ env.bin
> +  # ./scripts/bareboxenv -s -p 0x10000 arch/sandbox/board/env env.bin
>  
>  To get some files to play with you can generate a cramfs image:
>    # mkcramfs somedir/ cramfs.bin
> -- 
> 1.7.0.4
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
