Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SzMUJ-00020M-LS
 for barebox@lists.infradead.org; Thu, 09 Aug 2012 06:44:56 +0000
Date: Thu, 9 Aug 2012 08:44:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120809064453.GR1451@pengutronix.de>
References: <1344365466-17944-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1344365466-17944-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH] commands: memset: fix help message
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Aug 07, 2012 at 10:51:06PM +0400, Antony Pavlov wrote:
> memset has no '-s' option so remove related help string.
> Also this patch makes the command's description more clear.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>

Applied, thanks

Sascha

> ---
>  commands/mem.c |    5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/commands/mem.c b/commands/mem.c
> index cc94062..ec46a48 100644
> --- a/commands/mem.c
> +++ b/commands/mem.c
> @@ -566,14 +566,13 @@ out:
>  }
>  
>  static const __maybe_unused char cmd_memset_help[] =
> -"Usage: memset [OPTIONS] <src> <c> <n>\n"
> +"Usage: memset [OPTIONS] <addr> <c> <n>\n"
>  "\n"
>  "options:\n"
>  "  -b, -w, -l   use byte, halfword, or word accesses\n"
> -"  -s <file>    source file (default /dev/mem)\n"
>  "  -d <file>    destination file (default /dev/mem)\n"
>  "\n"
> -"Fill the first n bytes of area with byte c\n";
> +"Fill the first <n> bytes at offset <addr> with byte <c>\n";
>  
>  BAREBOX_CMD_START(memset)
>  	.cmd		= do_memset,
> -- 
> 1.7.10.4
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
