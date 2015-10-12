Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZlZgr-0004ld-J4
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 09:46:46 +0000
Date: Mon, 12 Oct 2015 11:46:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20151012094623.GS7858@pengutronix.de>
References: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1444589021-12727-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH 1/8] memtest.c: Print iterations count if -i is 0
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

Hi Andrey,

Applied the patches I have not commented on from this series.

Sascha

On Sun, Oct 11, 2015 at 11:43:34AM -0700, Andrey Smirnov wrote:
> Even if memtest is started in endless mode it is still usefult to see
> current iteration count. Add the code to print that.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  commands/memtest.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/commands/memtest.c b/commands/memtest.c
> index 7561230..b88290c 100644
> --- a/commands/memtest.c
> +++ b/commands/memtest.c
> @@ -180,8 +180,12 @@ static int do_memtest(int argc, char *argv[])
>  		goto out;
> 
>  	for (i = 1; (i <= max_i) || !max_i; i++) {
> +		printf("Start iteration %u", i);
>  		if (max_i)
> -			printf("Start iteration %u of %u.\n", i, max_i);
> +			printf(" of %u.\n", max_i);
> +		else
> +			putchar('\n');
> +
>  		/*
>  		 * First try a memtest with caching enabled.
>  		 */
> --
> 2.1.4
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
