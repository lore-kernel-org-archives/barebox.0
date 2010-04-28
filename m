Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.69 #1 (Red Hat Linux))
	id 1O74tu-0001jw-JQ
	for barebox@lists.infradead.org; Wed, 28 Apr 2010 10:53:56 +0000
Date: Wed, 28 Apr 2010 12:53:52 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100428105352.GG7634@pengutronix.de>
References: <alpine.LRH.2.00.1004261341360.16802@localhost.localdomain>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <alpine.LRH.2.00.1004261341360.16802@localhost.localdomain>
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
Subject: Re: [PATCH] Fix build if MULTI_ENV_HANDLING is disabled
To: Ivo Clarysse <ivo.clarysse@gmail.com>
Cc: barebox@lists.infradead.org

Hi Ivo,

Thanks for testing and patching. I just had a closer look to the
multienv patches and decided to drop them from next for now as they are
not bisectable. I asked Fu to rework them.

Sascha

On Mon, Apr 26, 2010 at 01:43:11PM +0200, Ivo Clarysse wrote:
> 
> Signed-off-by: Ivo Clarysse <ivo.clarysse@gmail.com>
> ---
> diff --git a/commands/loadenv.c b/commands/loadenv.c
> index cb66bb4..b233343 100644
> --- a/commands/loadenv.c
> +++ b/commands/loadenv.c
> @@ -33,9 +33,9 @@ static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
>  {
>  	char *dirname;
>  	int rc = 0;
> -	int i = 0;
>  	char file[9 + 5];	/* '/dev/env.....' */
>  #ifdef CONFIG_MULTI_ENV_HANDLING
> +	int i = 0;
>  	struct stat file_info;
>  #endif
> 
> @@ -64,7 +64,7 @@ static int do_loadenv(struct command *cmdtp, int argc, char *argv[])
>  	}
>  #else
>  	sprintf(file, "/dev/env0");
> -	rc = envfs_load(file, dirname);
> +	rc = envfs_load(file, dirname, NULL);
>  #endif
> 
>  	return rc ? 1 : 0;
> diff --git a/commands/saveenv.c b/commands/saveenv.c
> index efc89bd..a56c296 100644
> --- a/commands/saveenv.c
> +++ b/commands/saveenv.c
> @@ -65,9 +65,9 @@ static int do_saveenv(struct command *cmdtp, int argc, char *argv[])
>  {
>  	int ret = 0;
>  	char *dirname;
> -	int i = 0;
>  	char file[9 + 5];
>  #ifdef CONFIG_MULTI_ENV_HANDLING
> +	int i = 0;
>  	struct stat file_info;
>  #endif
> 
> diff --git a/common/startup.c b/common/startup.c
> index 2d63ce8..b8ae29a 100644
> --- a/common/startup.c
> +++ b/common/startup.c
> @@ -184,7 +184,7 @@ out:
>  #else /* MULTI_ENV_HANDLING */
>  static int init_envfs_load(void)
>  {
> -	if (envfs_load("/dev/env0", "/env")) {
> +	if (envfs_load("/dev/env0", "/env", NULL)) {
>  #ifdef CONFIG_DEFAULT_ENVIRONMENT
>  		printf("no valid environment found. "
>  			"Using default environment\n");
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
