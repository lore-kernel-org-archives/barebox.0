Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1khE4v-0000RX-7J
 for barebox@lists.infradead.org; Mon, 23 Nov 2020 15:48:34 +0000
Date: Mon, 23 Nov 2020 16:48:30 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20201123154830.GF24489@pengutronix.de>
References: <20201112172347.385-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20201112172347.385-1-a.fatoum@pengutronix.de>
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
Subject: Re: [PATCH 1/2] fs: introduce unsetenv() to prepare for changing
 setenv(var, "") behavior
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Nov 12, 2020 at 06:23:46PM +0100, Ahmad Fatoum wrote:
> Currently, we treat setenv(var, "") and setenv(var, NULL) the same
> and delete var, which is surprising and leads to subtle quirks:
> 
>  - setenv(var, "") is specified by POSIX to set var to an empty string,
>    but barebox uses it to delete variables
> 
>  - nv.user= calls nv_set with NULL parameter, but nv user="" doesn't
> 
> Make the API more POSIX-like by providing unsetenv with the expected
> semantics. Most user code can then use unsetenv without worrying about
> whether "" or NULL is the magic deletion value.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  commands/readlink.c   | 2 +-
>  commands/setenv.c     | 7 ++++++-
>  fs/fs.c               | 2 +-
>  include/environment.h | 5 +++++
>  net/ifup.c            | 2 +-
>  5 files changed, 14 insertions(+), 4 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/commands/readlink.c b/commands/readlink.c
> index fdcf175f56bb..81ad25c733ab 100644
> --- a/commands/readlink.c
> +++ b/commands/readlink.c
> @@ -50,7 +50,7 @@ static int do_readlink(int argc, char *argv[])
>  
>  	return 0;
>  err:
> -	setenv(argv[optind + 1], "");
> +	unsetenv(argv[optind + 1]);
>  	return 1;
>  }
>  
> diff --git a/commands/setenv.c b/commands/setenv.c
> index ad2677065552..6992f604f513 100644
> --- a/commands/setenv.c
> +++ b/commands/setenv.c
> @@ -10,6 +10,7 @@
>  static int do_setenv(int argc, char *argv[])
>  {
>  	char *equal;
> +	int ret;
>  
>  	if (argc < 2)
>  		return COMMAND_ERROR_USAGE;
> @@ -21,8 +22,12 @@ static int do_setenv(int argc, char *argv[])
>  			argv[2] = &equal[1];
>  	}
>  
> +	if (argv[2])
> +		ret = setenv(argv[1], argv[2]);
> +	else
> +		ret = unsetenv(argv[1]);
>  
> -	return setenv(argv[1], argv[2]) ? COMMAND_ERROR : COMMAND_SUCCESS;
> +	return ret ? COMMAND_ERROR : COMMAND_SUCCESS;
>  }
>  
>  BAREBOX_CMD_HELP_START(setenv)
> diff --git a/fs/fs.c b/fs/fs.c
> index f41e4b9b72cd..00b8645fb0e9 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -3066,7 +3066,7 @@ static int automount_mount(struct dentry *dentry)
>  		setenv("automount_path", am->path);
>  		export("automount_path");
>  		ret = run_command(am->cmd);
> -		setenv("automount_path", NULL);
> +		unsetenv("automount_path");
>  
>  		if (ret) {
>  			printf("running automount command '%s' failed\n",
> diff --git a/include/environment.h b/include/environment.h
> index 9488e4e1ac1f..19e522cfb6b4 100644
> --- a/include/environment.h
> +++ b/include/environment.h
> @@ -87,6 +87,11 @@ int env_push_context(void);
>  
>  int export(const char *);
>  
> +static inline int unsetenv(const char *var)
> +{
> +	return setenv(var, NULL);
> +}
> +
>  #endif	/* _ENVIRONMENT_H_ */
>  
>  /**
> diff --git a/net/ifup.c b/net/ifup.c
> index a74037939b8a..1870f7401714 100644
> --- a/net/ifup.c
> +++ b/net/ifup.c
> @@ -86,7 +86,7 @@ static int source_env_network(struct eth_device *edev)
>  	env_push_context();
>  
>  	for (i = 0; i < ARRAY_SIZE(vars); i++)
> -		setenv(vars[i], "");
> +		unsetenv(vars[i]);
>  
>  	cmd = basprintf("source /env/network/%s", edev->devname);
>  	ret = run_command(cmd);
> -- 
> 2.28.0
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
