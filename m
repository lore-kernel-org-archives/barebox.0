Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bL3ye-00012B-9b
 for barebox@lists.infradead.org; Thu, 07 Jul 2016 07:44:05 +0000
Date: Thu, 7 Jul 2016 09:43:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160707074333.GE20657@pengutronix.de>
References: <1467830680-5909-1-git-send-email-dev@lynxeye.de>
 <1467830680-5909-7-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467830680-5909-7-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 7/7] blspec: use correct return type
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 06, 2016 at 08:44:40PM +0200, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  common/blspec.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/blspec.c b/common/blspec.c
> index bf98e6b..04b20fb 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -253,7 +253,7 @@ static bool entry_is_of_compatible(struct blspec_entry *entry)
>  	const char *abspath;
>  	size_t size;
>  	void *fdt = NULL;
> -	int ret;
> +	bool ret;
>  	struct device_node *root = NULL, *barebox_root;
>  	const char *compat;
>  	char *filename;

I suspect this is not the only bug in this function. We also do a:

	root = of_unflatten_dtb(fdt);
	if (IS_ERR(root)) {
		ret = PTR_ERR(root);
		goto out;
	}

...

out:
	return ret;

So we return 'true' when we failed unflattening the device tree, this surely
is not intended. Should the function return int instead?

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
