Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ee0-f51.google.com ([74.125.83.51])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UCcs1-00049z-O9
 for barebox@lists.infradead.org; Mon, 04 Mar 2013 21:24:30 +0000
Received: by mail-ee0-f51.google.com with SMTP id d17so4152548eek.38
 for <barebox@lists.infradead.org>; Mon, 04 Mar 2013 13:24:24 -0800 (PST)
Date: Mon, 4 Mar 2013 22:25:36 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20130304212535.GF911@x61s.8.8.8.8>
References: <1362392034-1908-1-git-send-email-s.hauer@pengutronix.de>
 <1362392034-1908-6-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362392034-1908-6-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 05/10] nand command: use enumeration for command instead
 of bitmask
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi,


On Mon, Mar 04, 2013 at 11:13:49AM +0100, Sascha Hauer wrote:
> A command can only be one of NAND_*, so use an enumeration instead
> of a bitmask.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/nand.c |   12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/commands/nand.c b/commands/nand.c
> index d00845f..79f6735 100644
> --- a/commands/nand.c
> +++ b/commands/nand.c
> @@ -29,9 +29,9 @@
>  #include <fcntl.h>
>  #include <libgen.h>
>  
> -#define NAND_ADD (1 << 0)
> -#define NAND_DEL (1 << 1)
> -#define NAND_MARKBAD (1 << 2)
> +#define NAND_ADD	1
> +#define NAND_DEL	2
> +#define NAND_MARKBAD	3
>  
>  static int do_nand(int argc, char *argv[])
>  {
> @@ -58,7 +58,7 @@ static int do_nand(int argc, char *argv[])
>  		}
>  	}
>  
> -	if (command & NAND_ADD) {
> +	if (command == NAND_ADD) {

some nitpick. Can we use switch case instead of if? With a default
branch when command == 0 to return COMMAND_ERROR_USAGE?

>  		while (optind < argc) {
>  			if (dev_add_bb_dev(basename(argv[optind]), NULL))
>  				return 1;
> @@ -67,14 +67,14 @@ static int do_nand(int argc, char *argv[])
>  		}
>  	}
>  
> -	if (command & NAND_DEL) {
> +	if (command == NAND_DEL) {
>  		while (optind < argc) {
>  			dev_remove_bb_dev(basename(argv[optind]));
>  			optind++;
>  		}
>  	}
>  
> -	if (command & NAND_MARKBAD) {
> +	if (command == NAND_MARKBAD) {
>  		if (optind < argc) {
>  			int ret = 0, fd;
>  
> -- 
> 1.7.10.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
