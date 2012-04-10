Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SHVtO-0006p1-T9
 for barebox@lists.infradead.org; Tue, 10 Apr 2012 07:53:37 +0000
Date: Tue, 10 Apr 2012 09:53:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120410075325.GO3852@pengutronix.de>
References: <1333818954-3029-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1333818954-3029-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] arm: fix zImage support when a oftree is concatenated
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Apr 07, 2012 at 07:15:54PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> When a oftree is concatenated,the zImage is bigger than the size specified in
> the zImage header. Detect it copy the full zImage into the memory.

This patch has two problems. I intentionally did not depend on the size
returned by stat:

- Some tftp servers do not support returning the size
- When the zImage is on a flash partition always the whole partition
  will be read even if the zImage is much smaller.

I suggest going another way here. Read the zImage as we do now and try
to read further. If it succeeds and the result is a devicetree then read
it. The devicetree also contains a totalsize field (see include/fdt.h)

Sascha


> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  arch/arm/lib/bootm.c |   13 ++++++++++---
>  1 files changed, 10 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/lib/bootm.c b/arch/arm/lib/bootm.c
> index defc89b..26833bd 100644
> --- a/arch/arm/lib/bootm.c
> +++ b/arch/arm/lib/bootm.c
> @@ -125,6 +125,7 @@ struct zimage_header {
>  
>  static int do_bootz_linux(struct image_data *data)
>  {
> +	struct stat st;
>  	int fd, ret, swap = 0;
>  	struct zimage_header __header, *header;
>  	void *zimage;
> @@ -171,7 +172,10 @@ static int do_bootz_linux(struct image_data *data)
>  	if (swap)
>  		end = swab32(end);
>  
> -	data->os_res = request_sdram_region("zimage", load_address, end);
> +	if (stat(data->os_file, &st) < 0)
> +		st.st_size = end;
> +
> +	data->os_res = request_sdram_region("zimage", load_address, st.st_size);
>  	if (!data->os_res) {
>  		ret = -ENOMEM;
>  		goto err_out;
> @@ -181,15 +185,18 @@ static int do_bootz_linux(struct image_data *data)
>  
>  	memcpy(zimage, header, sizeof(*header));
>  
> -	ret = read_full(fd, zimage + sizeof(*header), end - sizeof(*header));
> +	ret = read_full(fd, zimage + sizeof(*header), st.st_size - sizeof(*header));
>  	if (ret < 0)
>  		goto err_out;
> -	if (ret < end - sizeof(*header)) {
> +	if (ret < st.st_size - sizeof(*header)) {
>  		printf("premature end of image\n");
>  		ret = -EIO;
>  		goto err_out;
>  	}
>  
> +	if (file_detect_type(zimage + end) == filetype_oftree)
> +		pr_info("zImage: concatenated oftree detected\n");
> +
>  	if (swap) {
>  		void *ptr;
>  		for (ptr = zimage; ptr < zimage + end; ptr += 4)
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
