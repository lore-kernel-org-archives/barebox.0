Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SrrqT-0003vX-F0
 for barebox@lists.infradead.org; Thu, 19 Jul 2012 14:36:50 +0000
Date: Thu, 19 Jul 2012 16:36:45 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120719143645.GZ30009@pengutronix.de>
References: <1342698019-21374-1-git-send-email-christian.kapeller@cmotion.eu>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1342698019-21374-1-git-send-email-christian.kapeller@cmotion.eu>
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
Subject: Re: [PATCH] Fix compile error loady command, without loadb.
To: Christian Kapeller <christian.kapeller@cmotion.eu>
Cc: barebox@lists.infradead.org

Hi Christian,

This is already fixed in -next.

On Thu, Jul 19, 2012 at 01:40:19PM +0200, Christian Kapeller wrote:
> The global variable ofd is needed by both loady and loadb.

btw please sign-off your patches.

Sascha

> ---
>  commands/loadb.c |    4 ++--
>  1 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/loadb.c b/commands/loadb.c
> index 9a697dd..50f323e 100644
> --- a/commands/loadb.c
> +++ b/commands/loadb.c
> @@ -61,10 +61,10 @@
>  #define untochar(x)	((int) (((x) - SPACE) & 0xff))
>  #define DEF_FILE	"image.bin"
>  
> -#ifdef CONFIG_CMD_LOADB
> -
>  static int ofd;			/* output file descriptor */
>  
> +#ifdef CONFIG_CMD_LOADB
> +
>  /* Size of my buffer to write to o/p file */
>  #define MAX_WRITE_BUFFER 4096	/* Write size to o/p file */
>  static char *write_buffer;	/* buffer for finalized data to write */
> -- 
> 1.7.5.4
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
