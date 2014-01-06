Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W06d3-0005HE-0s
 for barebox@lists.infradead.org; Mon, 06 Jan 2014 09:37:49 +0000
Date: Mon, 6 Jan 2014 10:32:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140106093226.GG24559@pengutronix.de>
References: <1387442377-27773-1-git-send-email-j.weitzel@phytec.de>
 <1387545888-4380-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1387545888-4380-1-git-send-email-j.weitzel@phytec.de>
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
Subject: Re: [PATCH v2] of: find also nodes by mixture of alias and path
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

Hi Jan,

On Fri, Dec 20, 2013 at 02:24:48PM +0100, Jan Weitzel wrote:
> Let of_find_node_by_path_or_alias also find a node starting with an alias
> followed by a path like "i2c0/tps@24"
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
> ---
> v2: rename ret to node
> 
>  drivers/of/base.c |   22 +++++++++++++++++++++-
>  1 files changed, 21 insertions(+), 1 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index ea2d879..5b5272d 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1378,11 +1378,31 @@ EXPORT_SYMBOL(of_find_node_by_path);
>  struct device_node *of_find_node_by_path_or_alias(struct device_node *root,
>  		const char *str)
>  {
> +	struct device_node *node;
> +	char *slash, *alias;
> +	size_t len = 0;
> +
>  	if (*str ==  '/')
>  		return of_find_node_by_path_from(root, str);
> -	else
> +
> +	slash = _strchr(str, '/');

You should use regular strchr, not _strchr. Or is there any reason to do
it differently here?

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
