Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TA2cm-0008K6-5u
 for barebox@lists.infradead.org; Fri, 07 Sep 2012 17:45:50 +0000
Date: Fri, 7 Sep 2012 19:45:43 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120907174543.GW26594@pengutronix.de>
References: <20120905122556.GF32603@game.jcrosoft.org>
 <1346848107-4664-1-git-send-email-plagnioj@jcrosoft.com>
 <1346848107-4664-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346848107-4664-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/7] globalvar: add support to set a value to of all
 globalvars beginning with 'match'
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Wed, Sep 05, 2012 at 02:28:22PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> via c global_reset_match and global -r
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  commands/global.c   |   58 ++++++++++++++++++++++++++++++++++++++++++++-------
>  common/globalvar.c  |   10 +++++++++
>  include/globalvar.h |    3 +++
>  3 files changed, 64 insertions(+), 7 deletions(-)
> 
> diff --git a/commands/global.c b/commands/global.c
> index de6b13e..cb22e63 100644
> --- a/commands/global.c
> +++ b/commands/global.c
> @@ -24,25 +24,26 @@
>  #include <command.h>
>  #include <globalvar.h>
>  #include <environment.h>
> +#include <getopt.h>
>  
> -static int do_global(int argc, char *argv[])
> +static int do_global_add(int argc, char *argv[])
>  {
>  	int ret;
>  	char *value;
>  
> -	if (argc != 2)
> +	if (argc != 1)
>  		return COMMAND_ERROR_USAGE;
>  
> -	value = strchr(argv[1], '=');
> +	value = strchr(argv[0], '=');
>  	if (value) {
>  		*value = 0;
>  		value++;
>  	}
>  
> -	ret = globalvar_add_simple(argv[1]);
> +	ret = globalvar_add_simple(argv[0]);
>  
>  	if (value) {
> -		char *name = asprintf("global.%s", argv[1]);
> +		char *name = asprintf("global.%s", argv[0]);
>  		ret = setenv(name, value);
>  		free(name);
>  	}
> @@ -50,13 +51,56 @@ static int do_global(int argc, char *argv[])
>  	return ret ? 1 : 0;
>  }
>  
> +static int do_global_reset(int argc, char *argv[])
> +{
> +	char *value;
> +
> +	if (argc != 1)
> +		return COMMAND_ERROR_USAGE;
> +
> +	value = strchr(argv[0], '=');
> +	if (value) {
> +		*value = 0;
> +		value++;
> +	} else {
> +		value = "";
> +	}
> +
> +	globalvar_reset_match(argv[0], value);
> +
> +	return 0;
> +}
> +
> +static int do_global(int argc, char *argv[])
> +{
> +	int opt;
> +	int do_reset = 0;
> +
> +	while ((opt = getopt(argc, argv, "r")) > 0) {
> +		switch (opt) {
> +		case 'r':
> +			do_reset = 1;
> +			break;
> +		}
> +	}
> +
> +	argc -= optind;
> +	argv += optind;
> +
> +	if (do_reset)
> +		return do_global_reset(argc, argv);
> +
> +	return do_global_add(argc, argv);
> +}
> +
>  BAREBOX_CMD_HELP_START(global)
> -BAREBOX_CMD_HELP_USAGE("global <var>[=<value]\n")
> +BAREBOX_CMD_HELP_USAGE("global [-r] <var>[=<value]\n")
>  BAREBOX_CMD_HELP_SHORT("add a new global variable named <var>, optionally set to <value>\n")
> +BAREBOX_CMD_HELP_SHORT("-r to set a value to of all globalvars beginning with 'match'")
>  BAREBOX_CMD_HELP_END
>  
>  BAREBOX_CMD_START(global)
>  	.cmd		= do_global,
> -	.usage		= "create global variables",
> +	.usage		= "create or reset global variables",
>  	BAREBOX_CMD_HELP(cmd_global_help)
>  BAREBOX_CMD_END
> diff --git a/common/globalvar.c b/common/globalvar.c
> index 71296ff..99f055e 100644
> --- a/common/globalvar.c
> +++ b/common/globalvar.c
> @@ -46,6 +46,16 @@ char *globalvar_get_match(const char *match, const char *seperator)
>  	return val;
>  }
>  
> +void globalvar_reset_match(const char *match, const char *val)
> +{

I think globalvar_set_match would be a better name for this function
as resetting is just a special usecase.

How about changing the name and prototype of globalvar_add_simple
to:

int globalvar_set(const char *name, const char *value)

Then instead of duplicating code in the command you could do
a:

	if (match)
		globalvar_set_match(name, value);
	else
		globalvar_set(name, value);

Sascha

> +	struct param_d *param;
> +
> +	list_for_each_entry(param, &global_device.parameters, list) {
> +		if (!strncmp(match, param->name, strlen(match)))
> +			dev_set_param(&global_device, param->name, val);
> +	}
> +}
> +
>  /*
>   * globalvar_add_simple
>   *
> diff --git a/include/globalvar.h b/include/globalvar.h
> index a127a05..1935f83 100644
> --- a/include/globalvar.h
> +++ b/include/globalvar.h
> @@ -9,6 +9,7 @@ int globalvar_add(const char *name,
>  		const char *(*get)(struct device_d *, struct param_d *p),
>  		unsigned long flags);
>  char *globalvar_get_match(const char *match, const char *seperator);
> +void globalvar_reset_match(const char *match, const char *val);
>  #else
>  static inline int globalvar_add_simple(const char *name)
>  {
> @@ -27,6 +28,8 @@ static inline char *globalvar_get_match(const char *match, const char *seperator
>  {
>  	return NULL;
>  }
> +
> +static inline void globalvar_reset_match(const char *match, const char *val) {}
>  #endif
>  
>  #endif /* __GLOBALVAR_H */
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
