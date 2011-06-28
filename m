Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QbRy9-0001pC-RI
	for barebox@lists.infradead.org; Tue, 28 Jun 2011 06:40:23 +0000
Date: Tue, 28 Jun 2011 08:40:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110628064018.GF6069@pengutronix.de>
References: <1309194834-2292-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1309194834-2292-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 1/2] include/linux/stat.h: make struct stat unified
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Mon, Jun 27, 2011 at 09:13:53PM +0400, Antony Pavlov wrote:
> This unification make MIPS arch possible.

The Mips patch probably takes a bit of discussion. In the meantime
I applied this patch with a bit more detailed commit log:

    include/linux/stat.h: make struct stat unified
    
    The current version of struct stat has been taken from an
    ancient Linux Kernel. It looks different on different architectures
    to support different userspace formats of struct stat. As we do
    not have a userspace on barebox there is no need to keep different
    versions.
    
    Also, this unification make MIPS arch possible.

Sascha

> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  include/linux/stat.h |   58 --------------------------------------------------
>  1 files changed, 0 insertions(+), 58 deletions(-)
> 
> diff --git a/include/linux/stat.h b/include/linux/stat.h
> index 10103d4..bc7dce4 100644
> --- a/include/linux/stat.h
> +++ b/include/linux/stat.h
> @@ -42,31 +42,6 @@ extern "C" {
>  #define S_IWOTH 00002		/* read permission for other */
>  #define S_IXOTH 00001		/* execute/search permission for other */
>  
> -#ifdef	__PPC__
> -
> -struct stat {
> -	dev_t		st_dev;		/* file system id */
> -	ino_t		st_ino;		/* file id */
> -	mode_t		st_mode;	/* ownership/protection */
> -	nlink_t		st_nlink;	/* number of links */
> -	uid_t 		st_uid;		/* user id */
> -	gid_t 		st_gid;		/* group id */
> -	dev_t		st_rdev;
> -	off_t		st_size;	/* file size in # of bytes */
> -	unsigned long  	st_blksize;	/* block size */
> -	unsigned long  	st_blocks;	/* file size in # of blocks */
> -	unsigned long  	st_atime;	/* time file was last accessed */
> -	unsigned long  	__unused1;
> -	unsigned long  	st_mtime;	/* time file was last modified */
> -	unsigned long  	__unused2;
> -	unsigned long  	st_ctime;	/* time file status was last changed */
> -	unsigned long  	__unused3;
> -	unsigned long  	__unused4;
> -	unsigned long  	__unused5;
> -};
> -
> -#else
> -
>  struct stat {
>  	unsigned short st_dev;
>  	unsigned short __pad1;
> @@ -90,39 +65,6 @@ struct stat {
>  	unsigned long  __unused5;
>  };
>  
> -#endif	/* __ARM__ */
> -
> -#if defined (__MIPS__)
> -
> -struct stat {
> -	dev_t           st_dev;
> -	long            st_pad1[3];
> -	ino_t           st_ino;
> -	mode_t          st_mode;
> -	nlink_t         st_nlink;
> -	uid_t           st_uid;
> -	gid_t           st_gid;
> -	dev_t           st_rdev;
> -	long            st_pad2[2];
> -	off_t           st_size;
> -	long            st_pad3;
> -	/*
> -	 * Actually this should be timestruc_t st_atime, st_mtime and st_ctime
> -	 * but we don't have it under Linux.
> -	 */
> -	time_t          st_atime;
> -	long            reserved0;
> -	time_t          st_mtime;
> -	long            reserved1;
> -	time_t          st_ctime;
> -	long            reserved2;
> -	long            st_blksize;
> -	long            st_blocks;
> -	long            st_pad4[14];
> -};
> -
> -#endif	/* __MIPS__ */
> -
>  #ifdef __cplusplus
>  }
>  #endif
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
