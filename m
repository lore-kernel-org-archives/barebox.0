Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XENpb-0001Ew-Fw
 for barebox@lists.infradead.org; Mon, 04 Aug 2014 19:22:07 +0000
Date: Mon, 4 Aug 2014 21:21:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140804192141.GO23235@pengutronix.de>
References: <1406876465-27832-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1406876465-27832-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH v2] commands: of_dump switch to get fixed devictree
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Fri, Aug 01, 2014 at 09:01:05AM +0200, Jan Weitzel wrote:
> Add a switch to get the devicetree processed by the registered fixups.
> This is also whats the kernel gets.

This is a very useful option.

> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
> v2:	fix CMD OPS
> 
>  commands/of_dump.c |   12 ++++++++++--
>  1 files changed, 10 insertions(+), 2 deletions(-)
> 
> diff --git a/commands/of_dump.c b/commands/of_dump.c
> index cafde07..1b487c7 100644
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
> @@ -77,6 +81,9 @@ static int do_of_dump(int argc, char *argv[])
>  		root = of_get_root_node();
>  	}
>  
> +	if (fix)
> +		of_get_fixed_tree(root);

of_get_fixed_tree() returns an allocated flat device tree. You should
free it.

As an alternative you could call of_fix_tree() instead.

Also I'm not sure about the API. of_fix_tree manipulates the internal
tree, so when you use of_dump -F once you'll always get the fixed tree
afterwards, even when called without -F. This might be confusing.
We have the same problem elsewhere in the tree though, right now I'm
unsure what to do about it. And then again, I'm on holiday, so I won't
do anything about it this month ;)

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
