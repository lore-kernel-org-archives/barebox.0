Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Usw3K-0000XX-SN
 for barebox@lists.infradead.org; Sat, 29 Jun 2013 14:23:06 +0000
Date: Sat, 29 Jun 2013 16:22:40 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130629142240.GB10414@pengutronix.de>
References: <1372152047-28134-1-git-send-email-sebastian.hesselbarth@gmail.com>
 <1372152047-28134-6-git-send-email-sebastian.hesselbarth@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1372152047-28134-6-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: Re: [PATCH 5/9] OF: base: use of_platform_populate for probing
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Jun 25, 2013 at 11:20:43AM +0200, Sebastian Hesselbarth wrote:
> With recent bus/device related functions in OF API, we can now
> convert to use of_platform_populate.
> 
> Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
> ---
> Cc: barebox@lists.infradead.org
> ---
>  drivers/of/base.c |    5 ++---
>  1 files changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/of/base.c b/drivers/of/base.c
> index 429f924..eb9ac84 100644
> --- a/drivers/of/base.c
> +++ b/drivers/of/base.c
> @@ -1840,7 +1840,7 @@ const struct of_device_id of_default_bus_match_table[] = {
>  
>  int of_probe(void)
>  {
> -	struct device_node *memory, *n;
> +	struct device_node *memory;
>  
>  	if(!root_node)
>  		return -ENODEV;
> @@ -1854,8 +1854,7 @@ int of_probe(void)
>  	if (memory)
>  		of_add_memory(memory, false);
>  
> -	list_for_each_entry(n, &root_node->children, parent_list)
> -		__of_probe(n, of_default_bus_match_table, NULL);
> +	of_platform_populate(root_node, of_default_bus_match_table, NULL);

This patch breaks the SPI chip select gpios on my efikasb. Problem is
that of_get_named_gpio depends on the device pointer in struct
device_node which of_platform_populate doesn't set. A quick test adding
the pointer in of_platform_device_create fixed this.

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
