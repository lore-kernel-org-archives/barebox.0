Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SJSm6-0000pI-7a
 for barebox@lists.infradead.org; Sun, 15 Apr 2012 16:58:08 +0000
Date: Sun, 15 Apr 2012 18:57:58 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120415165758.GN3852@pengutronix.de>
References: <1334462739-17265-1-git-send-email-plagnioj@jcrosoft.com>
 <1334462739-17265-2-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334462739-17265-2-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 2/3] net: dhcp: allow to user env var as user class too
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sun, Apr 15, 2012 at 06:05:38AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  net/dhcp.c |   11 +++++++++--
>  1 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/net/dhcp.c b/net/dhcp.c
> index c3c41a0..ecff819 100644
> --- a/net/dhcp.c
> +++ b/net/dhcp.c
> @@ -211,6 +211,7 @@ struct dhcp_opt dhcp_options[] = {
>  struct dhcp_param {
>  	unsigned char option;
>  	const char *barebox_var_name;
> +	const char *barebox_var_alt_name;
>  	int (*handle)(struct dhcp_param *param, u8 *e);
>  	void *data;
>  };
> @@ -220,8 +221,12 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
>  	int str_len;
>  	char* str = param->data;
>  
> -	if (!str && param->barebox_var_name)
> -		str = (char*)getenv(param->barebox_var_name);
> +	if (!str) {
> +		if (param->barebox_var_name)
> +			str = (char*)getenv(param->barebox_var_name);
> +		else if (param->barebox_var_alt_name)
> +			str = (char*)getenv(param->barebox_var_alt_name);
> +	}
>  
>  	if (!str)
>  		return 0;
> @@ -260,6 +265,7 @@ struct dhcp_param dhcp_params[] = {
>  		.option = DHCP_USER_CLASS,
>  		.handle = dhcp_set_string_options,
>  		.barebox_var_name = "dhcp_user_class",
> +		.barebox_var_alt_name = "user",
>  	}, {
>  		.option = DHCP_CLIENT_UUID,
>  		.handle = dhcp_set_string_options,
> @@ -712,5 +718,6 @@ BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
>  BAREBOX_MAGICVAR(dhcp_client_uuid, "cliend uuid to send to the DHCP server");
>  BAREBOX_MAGICVAR(dhcp_client_id, "cliend id to send to the DHCP server");
>  BAREBOX_MAGICVAR(dhcp_user_class, "user class to send to the DHCP server");
> +BAREBOX_MAGICVAR(user, "user class to send to the DHCP server");

This does not look good. I think 'user' is a too generic name to be a
magicvar, also it does not fit into the current dhcp_ scheme. Why not
add a dhcp_user_class=$user to the environment if necessary?

Sascha


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
