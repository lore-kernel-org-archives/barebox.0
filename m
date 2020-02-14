Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2VqI-00074t-9O
 for barebox@lists.infradead.org; Fri, 14 Feb 2020 07:56:55 +0000
Date: Fri, 14 Feb 2020 08:56:52 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20200214075652.hkn3hejb76wqgyom@pengutronix.de>
References: <20200212141638.11114-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200212141638.11114-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] commands: boot: refactor boot entry creation to use
 iterators
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Wed, Feb 12, 2020 at 03:16:37PM +0100, Ahmad Fatoum wrote:
> We currently create all boot entries before attempting boot. This is
> less than optimal, because this may involve probing devices that won't
> be used for actual boot.
> 
> In preparation for changing this, refactor the code, so we only have one
> loop we need to touch.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/boot.c | 44 ++++++++++++++++++++++++++++----------------
>  1 file changed, 28 insertions(+), 16 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/boot.c b/commands/boot.c
> index 0257b3dd4f18..ce4eeac6534c 100644
> --- a/commands/boot.c
> +++ b/commands/boot.c
> @@ -21,13 +21,29 @@
>  
>  #include <linux/stat.h>
>  
> +static char *next_argv(void *context)
> +{
> +	char ***argv = context;
> +	char *next = **argv;
> +	(*argv)++;
> +	return next;
> +}
> +
> +static char *next_word(void *context)
> +{
> +	return strsep(context, " ");
> +}
> +
>  static int do_boot(int argc, char *argv[])
>  {
>  	char *freep = NULL;
>  	int opt, ret = 0, do_list = 0, do_menu = 0;
> -	int i, dryrun = 0, verbose = 0, timeout = -1;
> +	int dryrun = 0, verbose = 0, timeout = -1;
>  	struct bootentries *entries;
>  	struct bootentry *entry;
> +	void *handle;
> +	const char *name;
> +	char *(*next)(void *);
>  
>  	while ((opt = getopt(argc, argv, "vldmt:w:")) > 0) {
>  		switch (opt) {
> @@ -54,31 +70,26 @@ static int do_boot(int argc, char *argv[])
>  		}
>  	}
>  
> -	entries = bootentries_alloc();
> -
>  	if (optind < argc) {
> -		for (i = optind; i < argc; i++) {
> -			ret = bootentry_create_from_name(entries, argv[i]);
> -			if (ret <= 0)
> -				printf("Nothing bootable found on '%s'\n", argv[i]);
> -	       }
> +		handle = &argv[optind];
> +		next = next_argv;
>  	} else {
>  		const char *def;
> -		char *sep, *name;
>  
>  		def = getenv("global.boot.default");
>  		if (!def)
>  			return 0;
>  
> -		sep = freep = xstrdup(def);
> +		handle = freep = xstrdup(def);
> +		next = next_word;
> +	}
>  
> -		while ((name = strsep(&sep, " ")) != NULL) {
> -			ret = bootentry_create_from_name(entries, name);
> -			if (ret <= 0)
> -				printf("Nothing bootable found on '%s'\n", name);
> -		}
> +	entries = bootentries_alloc();
>  
> -		free(freep);
> +	while ((name = next(&handle)) != NULL) {
> +		ret = bootentry_create_from_name(entries, name);
> +		if (ret <= 0)
> +			printf("Nothing bootable found on '%s'\n", name);
>  	}
>  
>  	if (list_empty(&entries->entries)) {
> @@ -104,6 +115,7 @@ static int do_boot(int argc, char *argv[])
>  
>  out:
>  	bootentries_free(entries);
> +	free(freep);
>  
>  	return ret;
>  }
> -- 
> 2.25.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
