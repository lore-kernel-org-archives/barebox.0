Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Wjs3L-0002Qn-Mf
 for barebox@lists.infradead.org; Mon, 12 May 2014 15:22:08 +0000
Received: by mail-lb0-f177.google.com with SMTP id s7so7420298lbd.22
 for <barebox@lists.infradead.org>; Mon, 12 May 2014 08:21:45 -0700 (PDT)
Received: from [46.246.35.210] (anon-35-210.vpn.ipredator.se. [46.246.35.210])
 by mx.google.com with ESMTPSA id
 z1sm12105563lal.6.2014.05.12.08.21.42
 for <barebox@lists.infradead.org>
 (version=SSLv3 cipher=RC4-SHA bits=128/128);
 Mon, 12 May 2014 08:21:43 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
In-Reply-To: <1399906621.4918.3.camel@mars>
References: <1399906621.4918.3.camel@mars>
Date: Mon, 12 May 2014 17:21:41 +0200
Message-ID: <1399908101.4918.4.camel@mars>
Mime-Version: 1.0
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
Subject: Re: [PATCH] [RFC] omap: xload - try to get partition from dts
To: barebox@lists.infradead.org

On Mon, 2014-05-12 at 16:57 +0200, Christoph Fritz wrote:
> dev_add_bb_dev("x", "bbx") doesn't work here anymore.
> Since pcm051 supports dts, nand boot works again with this patch.
> 
> Any ideas?
> ---
>  arch/arm/mach-omap/xload.c |   26 +++++++++++++++++---------
>  1 file changed, 17 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/mach-omap/xload.c b/arch/arm/mach-omap/xload.c
> index a309450..c360568 100644
> --- a/arch/arm/mach-omap/xload.c
> +++ b/arch/arm/mach-omap/xload.c
> @@ -56,18 +56,22 @@ static unsigned int get_image_size(void *head)
>  	return ret;
>  }
>  
> -static void *omap_xload_boot_nand(int offset, int part_size)
> +static void *omap_xload_boot_nand(unsigned int offset, unsigned int part_size)
>  {
>  	int ret;
>  	int size;
>  	void *to, *header;
>  	struct cdev *cdev;
> +	const char *bbx = "nand0.barebox";
>  
> -	devfs_add_partition("nand0", offset, part_size,
> +	if (!cdev_by_name(bbx)) { /* currently not all support dts */
> +		bbx = "bbx";
> +		devfs_add_partition("nand0", offset, part_size,
>  					DEVFS_PARTITION_FIXED, "x");
> -	dev_add_bb_dev("x", "bbx");
> +		dev_add_bb_dev("x", bbx);
> +	}
>  
> -	header = read_image_head("bbx");
> +	header = read_image_head(bbx);
>  	if (header == NULL)
>  		return NULL;
>  
> @@ -79,7 +83,7 @@ static void *omap_xload_boot_nand(int offset, int part_size)
>  
>  	to = xmalloc(size);
>  
> -	cdev = cdev_open("bbx", O_RDONLY);
> +	cdev = cdev_open(bbx, O_RDONLY);
>  	if (!cdev) {
>  		printf("failed to open nand\n");
>  		return NULL;
> @@ -134,11 +138,15 @@ static void *omap_xload_boot_spi(int offset, int part_size)
>  	int size;
>  	void *to, *header;
>  	struct cdev *cdev;
> +	onst char *x = "m25p0.barebox";

typo: const

>  
> -	devfs_add_partition("m25p0", offset, part_size,
> -					DEVFS_PARTITION_FIXED, "x");
> +	if (!cdev_by_name(x)) { /* currently not all support dts */
> +		x = "x";
> +		devfs_add_partition("m25p0", offset, part_size,
> +					DEVFS_PARTITION_FIXED, x);
> +	}
>  
> -	header = read_image_head("x");
> +	header = read_image_head(x);
>  	if (header == NULL)
>  		return NULL;
>  
> @@ -150,7 +158,7 @@ static void *omap_xload_boot_spi(int offset, int part_size)
>  
>  	to = xmalloc(size);
>  
> -	cdev = cdev_open("x", O_RDONLY);
> +	cdev = cdev_open(x, O_RDONLY);
>  	if (!cdev) {
>  		printf("failed to open spi flash\n");
>  		return NULL;




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
