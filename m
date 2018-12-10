Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gWHKZ-0008ST-Ee
 for barebox@lists.infradead.org; Mon, 10 Dec 2018 08:54:45 +0000
Date: Mon, 10 Dec 2018 09:54:11 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20181210085411.qzauw3inuim2lkbb@pengutronix.de>
References: <20181207072951.557-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20181207072951.557-1-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] commands: boot: Remove useless code
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Dec 06, 2018 at 11:29:51PM -0800, Andrey Smirnov wrote:
> All of those variables are already initialized in-place in the
> variable declaration section above to exactly the same values
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  commands/boot.c | 4 ----
>  1 file changed, 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/boot.c b/commands/boot.c
> index 5d81d79ce..0257b3dd4 100644
> --- a/commands/boot.c
> +++ b/commands/boot.c
> @@ -29,10 +29,6 @@ static int do_boot(int argc, char *argv[])
>  	struct bootentries *entries;
>  	struct bootentry *entry;
>  
> -	verbose = 0;
> -	dryrun = 0;
> -	timeout = -1;
> -
>  	while ((opt = getopt(argc, argv, "vldmt:w:")) > 0) {
>  		switch (opt) {
>  		case 'v':
> -- 
> 2.19.1
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
