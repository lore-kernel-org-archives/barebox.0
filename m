Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo4.mail-out.ovh.net ([46.105.40.176]
 helo=mo4.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1TcBOG-000854-UF
 for barebox@lists.infradead.org; Sat, 24 Nov 2012 08:47:11 +0000
Received: from mail34.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo4.mail-out.ovh.net (Postfix) with SMTP id 72A2C1058365
 for <barebox@lists.infradead.org>; Sat, 24 Nov 2012 09:54:56 +0100 (CET)
Date: Sat, 24 Nov 2012 09:45:07 +0100
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20121124084507.GX8327@game.jcrosoft.org>
References: <1353727464-15175-1-git-send-email-vicencb@gmail.com>
 <1353727464-15175-2-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1353727464-15175-2-git-send-email-vicencb@gmail.com>
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
Subject: Re: [PATCH 1/2] uimage: fix misunderstanding in common/uimage.c
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

On 04:24 Sat 24 Nov     , Vicente Bergas wrote:
> The option of reading the file at once was discarded because
> the option of increasing the buffer size provided almost the
> same benefit.
nack

this is mandatory for tftp fs support

Best Regarfd,
J.
> 
> Signed-off-by: Vicente Bergas <vicencb@gmail.com>
> ---
>  common/uimage.c | 24 ------------------------
>  1 file changed, 24 deletions(-)
> 
> diff --git a/common/uimage.c b/common/uimage.c
> index 3f5a3d5..8bcbfdd 100644
> --- a/common/uimage.c
> +++ b/common/uimage.c
> @@ -28,8 +28,6 @@
>  #include <rtc.h>
>  #include <filetype.h>
>  #include <memory.h>
> -#include <linux/stat.h>
> -#include <sizes.h>
>  
>  #ifdef CONFIG_UIMAGE_MULTI
>  static inline int uimage_is_multi_image(struct uimage_handle *handle)
> @@ -384,33 +382,11 @@ struct resource *file_to_sdram(const char *filename, unsigned long adr)
>  	size_t ofs = 0;
>  	size_t now;
>  	int fd;
> -	struct stat s;
>  
>  	fd = open(filename, O_RDONLY);
>  	if (fd < 0)
>  		return NULL;
>  
> -	/* TODO: use fstat(fd, &s) when implemented and avoid reopening file */
> -	if (stat(filename, &s) == 0 && s.st_size <= SZ_1G) {
> -		/*
> -		 * As the file size is known we can read it at once and improve
> -		 * transfer speed.
> -		 */
> -		size = s.st_size;
> -		res = request_sdram_region("image", adr, size);
> -		if (!res) {
> -			printf("unable to request SDRAM 0x%08lx-0x%08lx\n",
> -				adr, adr + size - 1);
> -			goto out;
> -		}
> -
> -		now = read_full(fd, (void *)(res->start), size);
> -		if (now < size) {
> -			release_sdram_region(res);
> -			res = NULL;
> -		}
> -		goto out;
> -	}
>  	while (1) {
>  		res = request_sdram_region("image", adr, size);
>  		if (!res) {
> -- 
> 1.8.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
