Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XOP0n-0002NF-5n
 for barebox@lists.infradead.org; Mon, 01 Sep 2014 10:39:01 +0000
Date: Mon, 1 Sep 2014 12:38:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140901103833.GV5352@pengutronix.de>
References: <20140804192141.GO23235@pengutronix.de>
 <1408620379-9338-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1408620379-9338-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH v3] commands: of_dump switch to get fixed devictree
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Aug 21, 2014 at 01:26:19PM +0200, Jan Weitzel wrote:
> Add a switch to get the devicetree processed by the registered fixups.
> This is also whats the kernel gets.
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
> v3: create a copy of the internal devicetree before use of_fix_tree
> 
>  commands/of_dump.c |   31 +++++++++++++++++++++++++++++--
>  1 files changed, 29 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/of_dump.c b/commands/of_dump.c
> index cafde07..f82f0fd 100644
> --- a/commands/of_dump.c
> +++ b/commands/of_dump.c
> @@ -34,16 +34,20 @@ static int do_of_dump(int argc, char *argv[])
>  {
>  	int opt;
>  	int ret;
> +	int fix = 0;
>  	struct device_node *root = NULL, *node, *of_free = NULL;
>  	char *dtbfile = NULL;
>  	size_t size;
>  	const char *nodename;
>  
> -	while ((opt = getopt(argc, argv, "f:")) > 0) {
> +	while ((opt = getopt(argc, argv, "Ff:")) > 0) {
>  		switch (opt) {
>  		case 'f':
>  			dtbfile = optarg;
>  			break;
> +		case 'F':
> +			fix = 1;
> +			break;
>  		default:
>  			return COMMAND_ERROR_USAGE;
>  		}
> @@ -75,6 +79,28 @@ static int do_of_dump(int argc, char *argv[])
>  		of_free = root;
>  	} else {
>  		root = of_get_root_node();
> +
> +		if (fix) {
> +			/* create a copy of internal devicetree */
> +			void *fdt;
> +			fdt = of_flatten_dtb(root);
> +			root = of_unflatten_dtb(fdt);

That's really a creative way to make a copy of the device tree ;)

Ok, I'll close both eyes while applying it.

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
