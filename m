Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bgnPh-000743-C6
 for barebox@lists.infradead.org; Mon, 05 Sep 2016 06:29:52 +0000
Date: Mon, 5 Sep 2016 08:29:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160905062927.jxsoslotr75gbafa@pengutronix.de>
References: <1472762398-16172-1-git-send-email-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1472762398-16172-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: Re: [PATCH] of_unflatten_dtb(): Check return value with IS_ERR
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: barebox@lists.infradead.org

On Thu, Sep 01, 2016 at 01:39:58PM -0700, Andrey Smirnov wrote:
> Of_unflatten_dtb returns a ERR_PTR value so checking it against NULL is
> incorrect. Fix it in all of the places where this was happening.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> ---
>  arch/arm/boards/highbank/init.c | 2 +-
>  arch/arm/cpu/dtb.c              | 2 +-
>  arch/arm/lib/bootm.c            | 2 +-
>  arch/mips/boot/dtb.c            | 2 +-
>  arch/openrisc/lib/dtb.c         | 2 +-
>  common/bootm.c                  | 6 +++++-
>  6 files changed, 10 insertions(+), 6 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/arch/arm/boards/highbank/init.c b/arch/arm/boards/highbank/init.c
> index 1cb02e6..295d475 100644
> --- a/arch/arm/boards/highbank/init.c
> +++ b/arch/arm/boards/highbank/init.c
> @@ -77,7 +77,7 @@ static int highbank_mem_init(void)
>  	fdt = IOMEM(FIRMWARE_DTB_BASE);
> 
>  	root = of_unflatten_dtb(fdt);
> -	if (!root) {
> +	if (IS_ERR(root)) {
>  		pr_warn("no dtb found at 0x1000 use default configuration\n");
>  		fdt = NULL;
>  		goto not_found;
> diff --git a/arch/arm/cpu/dtb.c b/arch/arm/cpu/dtb.c
> index ae4ff2a..b9390b4 100644
> --- a/arch/arm/cpu/dtb.c
> +++ b/arch/arm/cpu/dtb.c
> @@ -48,7 +48,7 @@ static int of_arm_init(void)
>  	}
> 
>  	root = of_unflatten_dtb(fdt);
> -	if (root) {
> +	if (!IS_ERR(root)) {
>  		of_set_root_node(root);
>  		of_fix_tree(root);
>  		if (IS_ENABLED(CONFIG_OFDEVICE))
> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index 0e81a66..7bddacd 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -225,7 +225,7 @@ static int do_bootz_linux_fdt(int fd, struct image_data *data)
> 
>  	if (IS_BUILTIN(CONFIG_OFTREE)) {
>  		data->of_root_node = of_unflatten_dtb(oftree);
> -		if (!data->of_root_node) {
> +		if (IS_ERR(data->of_root_node)) {
>  			pr_err("unable to unflatten devicetree\n");
>  			ret = -EINVAL;
>  			goto err_free;
> diff --git a/arch/mips/boot/dtb.c b/arch/mips/boot/dtb.c
> index 977c837..e7633a5 100644
> --- a/arch/mips/boot/dtb.c
> +++ b/arch/mips/boot/dtb.c
> @@ -51,7 +51,7 @@ static int of_mips_init(void)
>  		return 0;
> 
>  	root = of_unflatten_dtb(__dtb_start);
> -	if (root) {
> +	if (!IS_ERR(root)) {
>  		pr_debug("using internal DTB\n");
>  		of_set_root_node(root);
>  		if (IS_ENABLED(CONFIG_OFDEVICE))
> diff --git a/arch/openrisc/lib/dtb.c b/arch/openrisc/lib/dtb.c
> index 4f63a77..04bb6d2 100644
> --- a/arch/openrisc/lib/dtb.c
> +++ b/arch/openrisc/lib/dtb.c
> @@ -32,7 +32,7 @@ static int of_openrisc_init(void)
>  		return 0;
> 
>  	root = of_unflatten_dtb(__dtb_start);
> -	if (root) {
> +	if (!IS_ERR(root)) {
>  		pr_debug("using internal DTB\n");
>  		of_set_root_node(root);
>  		if (IS_ENABLED(CONFIG_OFDEVICE))
> diff --git a/common/bootm.c b/common/bootm.c
> index 78d04d5..5984319 100644
> --- a/common/bootm.c
> +++ b/common/bootm.c
> @@ -336,6 +336,9 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
> 
>  	if (data->os_fit && data->os_fit->oftree) {
>  		data->of_root_node = of_unflatten_dtb(data->os_fit->oftree);
> +
> +		if (IS_ERR(data->of_root_node))
> +			data->of_root_node = NULL;
>  	} else if (data->oftree_file) {
>  		size_t size;
> 
> @@ -367,7 +370,8 @@ int bootm_load_devicetree(struct image_data *data, unsigned long load_address)
> 
>  		free(oftree);
> 
> -		if (!data->of_root_node) {
> +		if (IS_ERR(data->of_root_node)) {
> +			data->of_root_node = NULL;
>  			pr_err("unable to unflatten devicetree\n");
>  			return -EINVAL;
>  		}
> --
> 2.5.5
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
