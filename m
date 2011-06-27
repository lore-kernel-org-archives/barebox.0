Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1Qb8dL-0003QC-1E
	for barebox@lists.infradead.org; Mon, 27 Jun 2011 10:01:39 +0000
Date: Mon, 27 Jun 2011 12:01:31 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110627100131.GC6069@pengutronix.de>
References: <1309158909-19978-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1309158909-19978-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/2] include/linux/stat.h: make MIPS arch possible.
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 27, 2011 at 11:15:08AM +0400, Antony Pavlov wrote:
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/linux/stat.h |   56 ++++++++++++++++++++++++-------------------------
>  1 files changed, 27 insertions(+), 29 deletions(-)
> 
> diff --git a/include/linux/stat.h b/include/linux/stat.h

This version of include/linux/stat.h is copied from Linux in the Stone
Age. It only has ifdefs to support architecture specific userspace formats
of this struct. We should remove all ifdefs and just use a common
version of struct stat for all architectures.
So please just remove all code inside __PPC__ and __MIPS__ in this file.

Sascha

> index 10103d4..c12ff57 100644
> --- a/include/linux/stat.h
> +++ b/include/linux/stat.h
> @@ -65,34 +65,7 @@ struct stat {
>  	unsigned long  	__unused5;
>  };
>  
> -#else
> -
> -struct stat {
> -	unsigned short st_dev;
> -	unsigned short __pad1;
> -	unsigned long st_ino;
> -	unsigned short st_mode;
> -	unsigned short st_nlink;
> -	unsigned short st_uid;
> -	unsigned short st_gid;
> -	unsigned short st_rdev;
> -	unsigned short __pad2;
> -	unsigned long  st_size;
> -	unsigned long  st_blksize;
> -	unsigned long  st_blocks;
> -	unsigned long  st_atime;
> -	unsigned long  __unused1;
> -	unsigned long  st_mtime;
> -	unsigned long  __unused2;
> -	unsigned long  st_ctime;
> -	unsigned long  __unused3;
> -	unsigned long  __unused4;
> -	unsigned long  __unused5;
> -};
> -
> -#endif	/* __ARM__ */
> -
> -#if defined (__MIPS__)
> +#elif defined(__MIPS__)
>  
>  struct stat {
>  	dev_t           st_dev;
> @@ -121,7 +94,32 @@ struct stat {
>  	long            st_pad4[14];
>  };
>  
> -#endif	/* __MIPS__ */
> +#else
> +
> +struct stat {
> +	unsigned short st_dev;
> +	unsigned short __pad1;
> +	unsigned long st_ino;
> +	unsigned short st_mode;
> +	unsigned short st_nlink;
> +	unsigned short st_uid;
> +	unsigned short st_gid;
> +	unsigned short st_rdev;
> +	unsigned short __pad2;
> +	unsigned long  st_size;
> +	unsigned long  st_blksize;
> +	unsigned long  st_blocks;
> +	unsigned long  st_atime;
> +	unsigned long  __unused1;
> +	unsigned long  st_mtime;
> +	unsigned long  __unused2;
> +	unsigned long  st_ctime;
> +	unsigned long  __unused3;
> +	unsigned long  __unused4;
> +	unsigned long  __unused5;
> +};
> +
> +#endif	/* __ARM__ */
>  
>  #ifdef __cplusplus
>  }
> -- 
> 1.7.5.4
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
