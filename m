Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fJFaC-0006zc-N6
 for barebox@lists.infradead.org; Thu, 17 May 2018 09:52:27 +0000
Date: Thu, 17 May 2018 11:52:12 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20180517095212.dnb5kvhcb4wm25qi@pengutronix.de>
References: <20180516201827.6430-1-andrew.smirnov@gmail.com>
 <20180516201827.6430-4-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180516201827.6430-4-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH v2 3/4] common: oftree: Pass bootsource and bootsource
 instance to kernel
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Wed, May 16, 2018 at 01:18:26PM -0700, Andrey Smirnov wrote:
> Pass barebox-detected bootsource to Linux to make it availible to
> Linux userspace. That information is passed as full path to the node
> corresponding to the bootsource and is placed under /chosen/bootsource
> and it can be read under Linux in
> 
> /sys/firmware/devicetree/base/chosen/bootsource
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  common/oftree.c | 46 +++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 45 insertions(+), 1 deletion(-)
> 
> diff --git a/common/oftree.c b/common/oftree.c
> index 8a2ede4c6..5ab6bf089 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -11,6 +11,7 @@
>  #include <getopt.h>
>  #include <init.h>
>  #include <boot.h>
> +#include <bootsource.h>
>  #include <i2c/i2c.h>
>  
>  #define MAX_LEVEL	32		/* how deeply nested we will go */
> @@ -114,6 +115,47 @@ void of_print_cmdline(struct device_node *root)
>  	printf("commandline: %s\n", cmdline);
>  }
>  
> +static int of_fixup_bootargs_bootsource(struct device_node *root,
> +					struct device_node *chosen)
> +{
> +	char *alias_name = bootsource_get_alias_name();
> +	struct device_node *bootsource;
> +	struct device_node *aliasnp;
> +	struct property *p;
> +	int ret;
> +
> +	if (!alias_name)
> +		return 0;
> +
> +	bootsource = of_find_node_by_alias(root, alias_name);
> +	/*
> +	 * If kerenel DTB doesn't have the appropriate alias set up,
> +	 * give up and exit early. No error is reported.
> +	 */

s/kerenel/kernel/

> +	if (!bootsource) {
> +		ret = 0;
> +		goto exit;
> +	}
> +
> +	aliasnp = of_find_node_by_path_from(root, "/aliases");
> +	if (!aliasnp) {
> +		ret = -ENOENT;
> +		goto exit;
> +	}
> +
> +	p = of_find_property(aliasnp, alias_name, NULL);
> +	if (!p) {
> +		ret = -ENOENT;
> +		goto exit;
> +	}

This seems unnecessary. Pass bootsource->full_name to of_set_property
below.

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
