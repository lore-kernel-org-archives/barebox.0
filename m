Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T6HLj-00009j-Tk
 for barebox@lists.infradead.org; Tue, 28 Aug 2012 08:40:41 +0000
Date: Tue, 28 Aug 2012 10:40:38 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120828084038.GD26594@pengutronix.de>
References: <20120824050332.GK6271@game.jcrosoft.org>
 <1345784816-31344-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345784816-31344-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/7] dhcp: add global var support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 24, 2012 at 07:06:50AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> This way you can specify as previously set the dhcp parameter via global.dhcp.xxx
> and get the result via global.dhcp.xxx
> 
> This is need for the defaultenv-2 to add the bootp suppport.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  net/dhcp.c |  100 +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 99 insertions(+), 1 deletion(-)
> 
> diff --git a/net/dhcp.c b/net/dhcp.c
> index 79efa3e..51c4283 100644
> --- a/net/dhcp.c
> +++ b/net/dhcp.c
> @@ -19,6 +19,8 @@
>  #include <magicvar.h>
>  #include <linux/err.h>
>  #include <getopt.h>
> +#include <globalvar.h>
> +#include <init.h>
>  
>  #define OPT_SIZE 312	/* Minimum DHCP Options size per RFC2131 - results in 576 byte pkt */
>  
> @@ -78,11 +80,39 @@ static IPaddr_t net_dhcp_server_ip;
>  static uint64_t dhcp_start;
>  static char dhcp_tftpname[256];
>  
> +static const char* dhcp_get_barebox_global(const char * var)

static const char *dhcp_get_barebox_global

> +{
> +	char * var_global = asprintf("global.dhcp.%s", var);

char *var_global =

Generally I don't think we should introduce a second set of variables.
Drop The other ones instead.

Sascha

> +	const char *val;
> +
> +	if (!var_global)
> +		return NULL;
> +
> +	val = getenv(var_global);
> +	free(var_global);
> +	return val;
> +}
> +
> +static int dhcp_set_barebox_global(const char * var, char *val)
> +{
> +	char * var_global = asprintf("global.dhcp.%s", var);
> +	int ret;
> +
> +	if (!var_global)
> +		return -ENOMEM;
> +
> +	ret = setenv(var_global, val);
> +	free(var_global);
> +	return ret;
> +}
> +
>  struct dhcp_opt {
>  	unsigned char option;
>  	/* request automatically the option when creating the DHCP request */
>  	bool optional;
>  	const char *barebox_var_name;
> +	const char *barebox_var_alt_name;
> +	const char *barebox_dhcp_global;
>  	void (*handle)(struct dhcp_opt *opt, unsigned char *data, int tlen);
>  	void *data;
>  
> @@ -124,6 +154,9 @@ static void env_str_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen
>  	memcpy(tmp, popt, optlen);
>  	tmp[optlen] = 0;
>  	setenv(opt->barebox_var_name, tmp);
> +	if (opt->barebox_dhcp_global)
> +		dhcp_set_barebox_global(opt->barebox_dhcp_global, tmp);
> +
>  }
>  
>  static void copy_uint32_handle(struct dhcp_opt *opt, unsigned char *popt, int optlen)
> @@ -184,6 +217,7 @@ struct dhcp_opt dhcp_options[] = {
>  		.option = 17,
>  		.handle = env_str_handle,
>  		.barebox_var_name = "rootpath",
> +		.barebox_dhcp_global = "rootpath",
>  	}, {
>  		.option = 51,
>  		.handle = copy_uint32_handle,
> @@ -197,21 +231,26 @@ struct dhcp_opt dhcp_options[] = {
>  		.option = 66,
>  		.handle = env_str_handle,
>  		.barebox_var_name = "dhcp_tftp_server_name",
> +		.barebox_dhcp_global = "tftp_server_name",
>  		.data = dhcp_tftpname,
>  	}, {
>  		.option = 67,
>  		.handle = bootfile_vendorex_handle,
>  		.barebox_var_name = "bootfile",
> +		.barebox_dhcp_global = "bootfile",
>  	}, {
>  		.option = 224,
>  		.handle = env_str_handle,
>  		.barebox_var_name = "dhcp_oftree_file",
> +		.barebox_dhcp_global = "oftree_file",
>  	},
>  };
>  
>  struct dhcp_param {
>  	unsigned char option;
>  	const char *barebox_var_name;
> +	const char *barebox_var_alt_name;
> +	const char *barebox_dhcp_global;
>  	int (*handle)(struct dhcp_param *param, u8 *e);
>  	void *data;
>  };
> @@ -224,6 +263,9 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
>  	if (!str && param->barebox_var_name)
>  		str = (char*)getenv(param->barebox_var_name);
>  
> +	if (!str && param->barebox_dhcp_global)
> +		str = (char*)dhcp_get_barebox_global(param->barebox_dhcp_global);
> +
>  	if (!str)
>  		return 0;
>  
> @@ -253,18 +295,22 @@ struct dhcp_param dhcp_params[] = {
>  		.option = DHCP_VENDOR_ID,
>  		.handle = dhcp_set_string_options,
>  		.barebox_var_name = "dhcp_vendor_id",
> +		.barebox_dhcp_global = "vendor_id",
>  	}, {
>  		.option = DHCP_CLIENT_ID,
>  		.handle = dhcp_set_string_options,
>  		.barebox_var_name = "dhcp_client_id",
> +		.barebox_dhcp_global = "client_id",
>  	}, {
>  		.option = DHCP_USER_CLASS,
>  		.handle = dhcp_set_string_options,
>  		.barebox_var_name = "dhcp_user_class",
> +		.barebox_dhcp_global = "user_class",
>  	}, {
>  		.option = DHCP_CLIENT_UUID,
>  		.handle = dhcp_set_string_options,
>  		.barebox_var_name = "dhcp_client_uuid",
> +		.barebox_dhcp_global = "client_uuid",
>  	}
>  };
>  
> @@ -345,8 +391,10 @@ static void bootp_copy_net_params(struct bootp *bp)
>  	if (tmp_ip != 0)
>  		net_set_serverip(tmp_ip);
>  
> -	if (strlen(bp->bp_file) > 0)
> +	if (strlen(bp->bp_file) > 0) {
>  		setenv("bootfile", bp->bp_file);
> +		dhcp_set_barebox_global("bootfile", bp->bp_file);
> +	}
>  
>  	debug("bootfile: %s\n", bp->bp_file);
>  }
> @@ -611,9 +659,50 @@ static void dhcp_reset_env(void)
>  			continue;
>  
>  		setenv(opt->barebox_var_name,"");
> +		if (opt->barebox_dhcp_global)
> +			dhcp_set_barebox_global(opt->barebox_dhcp_global,"");
>  	}
>  }
>  
> +static void dhcp_global_add(const char *var)
> +{
> +	char * var_global = asprintf("dhcp.%s", var);
> +
> +	if (!var_global)
> +		return;
> +
> +	globalvar_add_simple(var_global);
> +	free(var_global);
> +}
> +
> +static int dhcp_global_init(void)
> +{
> +	struct dhcp_opt *opt;
> +	struct dhcp_param *param;
> +	int i;
> +
> +	for (i = 0; i < ARRAY_SIZE(dhcp_options); i++) {
> +		opt = &dhcp_options[i];
> +
> +		if (!opt->barebox_dhcp_global)
> +			continue;
> +
> +		dhcp_global_add(opt->barebox_dhcp_global);
> +	}
> +
> +	for (i = 0; i < ARRAY_SIZE(dhcp_params); i++) {
> +		param = &dhcp_params[i];
> +
> +		if (!param->barebox_dhcp_global)
> +			continue;
> +
> +		dhcp_global_add(param->barebox_dhcp_global);
> +	}
> +
> +	return 0;
> +}
> +late_initcall(dhcp_global_init);
> +
>  static int do_dhcp(int argc, char *argv[])
>  {
>  	int ret, opt;
> @@ -718,3 +807,12 @@ BAREBOX_MAGICVAR(dhcp_client_id, "cliend id to send to the DHCP server");
>  BAREBOX_MAGICVAR(dhcp_user_class, "user class to send to the DHCP server");
>  BAREBOX_MAGICVAR(dhcp_tftp_server_name, "TFTP server Name returned from DHCP request");
>  BAREBOX_MAGICVAR(dhcp_oftree_file, "OF tree returned from DHCP request (option 224)");
> +
> +BAREBOX_MAGICVAR_NAMED(global_dhcp_bootfile, global.dhcp.bootfile, "bootfile returned from DHCP request");
> +BAREBOX_MAGICVAR_NAMED(global_dhcp_rootpath, global.dhcp.rootpath, "rootpath returned from DHCP request");
> +BAREBOX_MAGICVAR_NAMED(global_dhcp_vendor_id, global.dhcp.vendor_id, "vendor id to send to the DHCP server");
> +BAREBOX_MAGICVAR_NAMED(global_dhcp_client_uuid, global.dhcp.client_uuid, "cliend uuid to send to the DHCP server");
> +BAREBOX_MAGICVAR_NAMED(global_dhcp_client_id, global.dhcp.client_id, "cliend id to send to the DHCP server");
> +BAREBOX_MAGICVAR_NAMED(global_dhcp_user_class, global.dhcp.user_class, "user class to send to the DHCP server");
> +BAREBOX_MAGICVAR_NAMED(global_dhcp_tftp_server_name, global.dhcp.tftp_server_name, "TFTP server Name returned from DHCP request");
> +BAREBOX_MAGICVAR_NAMED(global_dhcp_oftree_file, global.dhcp.oftree_file, "OF tree returned from DHCP request (option 224)");
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
