Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1RGSoK-0001bn-Qi
	for barebox@lists.infradead.org; Wed, 19 Oct 2011 09:51:46 +0000
Date: Wed, 19 Oct 2011 11:51:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20111019095141.GS18141@pengutronix.de>
References: <1318931325-31138-1-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1318931325-31138-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [RFC PATCH 1/2] fs: fix path_check_prereq()
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On Tue, Oct 18, 2011 at 01:48:44PM +0400, Antony Pavlov wrote:
> This patch makes impossible the situations than path_check_prereq() can make
> 'return 0' without changing errno.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
>  fs/fs.c |    7 ++++---
>  1 files changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 7d65ec8..714fc9b 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -293,9 +293,11 @@ static int path_check_prereq(const char *path, unsigned int flags)
>  	struct stat s;
>  	unsigned int m;
>  
> +	errno = 0;
> +
>  	if (stat(path, &s)) {
>  		if (flags & S_UB_DOES_NOT_EXIST)
> -			return 0;
> +			goto out;

Wow. You broke mkdir.

stat() changes errno, so path_check_prereq returns an error value
when S_UB_DOES_NOT_EXIST is set and a file does not exist.

Sascha

>  		errno = -ENOENT;
>  		goto out;
>  	}
> @@ -306,7 +308,7 @@ static int path_check_prereq(const char *path, unsigned int flags)
>  	}
>  
>  	if (flags == S_UB_EXISTS)
> -		return 0;
> +		goto out;
>  
>  	m = s.st_mode;
>  
> @@ -325,7 +327,6 @@ static int path_check_prereq(const char *path, unsigned int flags)
>  		goto out;
>  	}
>  
> -	errno = 0;
>  out:
>  	return errno;
>  }
> -- 
> 1.7.6.3
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
