Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SKRlI-0003zj-LJ
 for barebox@lists.infradead.org; Wed, 18 Apr 2012 10:05:26 +0000
Date: Wed, 18 Apr 2012 12:05:05 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120418100505.GQ3852@pengutronix.de>
References: <1334462739-17265-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334462739-17265-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/3] net: dhcp: add support to send the hostname to the
 dhcp server
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

Applied 1/3v2 and 3/3. I didn't apply 2/ for reasons mentioned.

Sascha

On Sun, Apr 15, 2012 at 06:05:37AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  net/dhcp.c |   11 +++++++++--
>  1 files changed, 9 insertions(+), 2 deletions(-)
> 
> diff --git a/net/dhcp.c b/net/dhcp.c
> index 0116ba4..c3c41a0 100644
> --- a/net/dhcp.c
> +++ b/net/dhcp.c
> @@ -237,6 +237,7 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
>  	return str_len + 2;
>  }
>  
> +#define DHCP_HOSTNAME		12
>  #define DHCP_VENDOR_ID		60
>  #define DHCP_CLIENT_ID		61
>  #define DHCP_USER_CLASS		77
> @@ -244,6 +245,10 @@ static int dhcp_set_string_options(struct dhcp_param *param, u8 *e)
>  
>  struct dhcp_param dhcp_params[] = {
>  	{
> +		.option = DHCP_HOSTNAME,
> +		.handle = dhcp_set_string_options,
> +		.barebox_var_name = "hostname",
> +	}, {
>  		.option = DHCP_VENDOR_ID,
>  		.handle = dhcp_set_string_options,
>  		.barebox_var_name = "dhcp_vendor_id",
> @@ -614,8 +619,10 @@ static int do_dhcp(int argc, char *argv[])
>  
>  	dhcp_reset_env();
>  
> -	while((opt = getopt(argc, argv, "v:c:u:U:")) > 0) {
> +	while((opt = getopt(argc, argv, "h:v:c:u:U:")) > 0) {
>  		switch(opt) {
> +		case 'U':
> +			dhcp_set_param_data(DHCP_HOSTNAME, optarg);
>  		case 'v':
>  			dhcp_set_param_data(DHCP_VENDOR_ID, optarg);
>  			break;
> @@ -698,7 +705,7 @@ BAREBOX_CMD_END
>  
>  BAREBOX_MAGICVAR(bootfile, "bootfile returned from DHCP request");
>  BAREBOX_MAGICVAR(nameserver, "Nameserver returned from DHCP request");
> -BAREBOX_MAGICVAR(hostname, "hostname returned from DHCP request");
> +BAREBOX_MAGICVAR(hostname, "hostname to send or returned from DHCP request");
>  BAREBOX_MAGICVAR(domainname, "domainname returned from DHCP request");
>  BAREBOX_MAGICVAR(rootpath, "rootpath returned from DHCP request");
>  BAREBOX_MAGICVAR(dhcp_vendor_id, "vendor id to send to the DHCP server");
> -- 
> 1.7.9.1
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
