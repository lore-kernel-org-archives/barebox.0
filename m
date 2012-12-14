Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TjPwA-00059t-O9
 for barebox@lists.infradead.org; Fri, 14 Dec 2012 07:44:03 +0000
Date: Fri, 14 Dec 2012 08:44:01 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20121214074401.GN10369@pengutronix.de>
References: <1355413606-18097-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1355413606-18097-1-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH] commands: flash: add missing newlines to error messages
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Dec 13, 2012 at 04:46:46PM +0100, Wolfram Sang wrote:
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---

Applied, thanks

Sascha


>  commands/flash.c |    4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/flash.c b/commands/flash.c
> index b1673de..d22d6a0 100644
> --- a/commands/flash.c
> +++ b/commands/flash.c
> @@ -54,7 +54,7 @@ static int do_flerase(int argc, char *argv[])
>  
>  	fd = open(filename, O_WRONLY);
>  	if (fd < 0) {
> -		printf("open %s: %s", filename, errno_str());
> +		printf("open %s: %s\n", filename, errno_str());
>  		return 1;
>  	}
>  
> @@ -125,7 +125,7 @@ static int do_protect(int argc, char *argv[])
>  
>  	fd = open(filename, O_WRONLY);
>  	if (fd < 0) {
> -		printf("open %s: %s", filename, errno_str());
> +		printf("open %s: %s\n", filename, errno_str());
>  		return 1;
>  	}
>  
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
