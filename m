Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U8WEp-0007ap-Um
 for barebox@lists.infradead.org; Thu, 21 Feb 2013 13:31:04 +0000
Date: Thu, 21 Feb 2013 14:31:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130221133102.GQ1906@pengutronix.de>
References: <1361307394-24649-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1361307394-24649-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH 1/2] nandtest: use new pread and pwrite functions
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Feb 19, 2013 at 09:56:33PM +0100, Alexander Aring wrote:
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>
> ---
>  commands/nandtest.c | 36 ++++++------------------------------
>  1 file changed, 6 insertions(+), 30 deletions(-)

Applied, thanks

I squashed this into the commit adding pread/pwrite to make this commit
compilable.

Sascha

> 
> diff --git a/commands/nandtest.c b/commands/nandtest.c
> index f08f8eb..4e6024b 100644
> --- a/commands/nandtest.c
> +++ b/commands/nandtest.c
> @@ -43,41 +43,17 @@ static unsigned int ecc_stats_over;
>  static unsigned int ecc_failed_cnt;
>  
>  /*
> - * Implementation of pread with lseek and read.
> - */
> -static ssize_t pread(int fd, void *buf, size_t count, loff_t offset)
> -{
> -	int ret;
> -
> -	/* Seek to offset */
> -	ret = lseek(fd, offset, SEEK_SET);
> -	if (ret < 0)
> -		perror("lseek");
> -
> -	/* Read from flash and put it into buf  */
> -	ret = read(fd, buf, count);
> -	if (ret < 0)
> -		perror("read");
> -
> -	return 0;
> -}
> -
> -/*
>   * Implementation of pwrite with lseek and write.
>   */
> -static ssize_t pwrite(int fd, const void *buf,
> +static ssize_t __pwrite(int fd, const void *buf,
>  		size_t count, loff_t offset, loff_t length)
>  {
> -	int ret;
> -
> -	ret = lseek(fd, offset, SEEK_SET);
> -	if (ret < 0)
> -		perror("lseek");
> +	ssize_t ret;
>  
>  	/* Write buf to flash */
> -	ret = write(fd, buf, count);
> +	ret = pwrite(fd, buf, count, offset);
>  	if (ret < 0) {
> -		perror("write");
> +		perror("pwrite");
>  		if (markbad) {
>  			printf("\nMark block bad at 0x%08llx\n",
>  					offset + memregion.offset);
> @@ -88,7 +64,7 @@ static ssize_t pwrite(int fd, const void *buf,
>  	}
>  
>  	flush(fd);
> -	return 0;
> +	return ret;
>  }
>  
>  /*
> @@ -119,7 +95,7 @@ static int erase_and_write(loff_t ofs, unsigned char *data,
>  	for (i = 0; i < meminfo.erasesize;
>  			i += meminfo.writesize) {
>  		/* Write data to given offset */
> -		pwrite(fd, data + i, meminfo.writesize,
> +		__pwrite(fd, data + i, meminfo.writesize,
>  				ofs + i, length);
>  
>  		/* Read data from offset */
> -- 
> 1.8.1.3
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
