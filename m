Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d8trX-0005Jt-IK
 for barebox@lists.infradead.org; Thu, 11 May 2017 19:35:01 +0000
Received: from pty.hi.pengutronix.de ([2001:67c:670:100:1d::c5])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1d8trB-0006AE-2b
 for barebox@lists.infradead.org; Thu, 11 May 2017 21:34:37 +0200
Received: from sha by pty.hi.pengutronix.de with local (Exim 4.84_2)
 (envelope-from <sha@pengutronix.de>) id 1d8trA-0000K6-MK
 for barebox@lists.infradead.org; Thu, 11 May 2017 21:34:36 +0200
Date: Thu, 11 May 2017 21:34:36 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20170511193436.kjigsnnk23d5ppzy@pengutronix.de>
References: <20170511091101.5821-1-s.hauer@pengutronix.de>
 <20170511091101.5821-4-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20170511091101.5821-4-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 3/4] fs: Implement links to directories
To: Barebox List <barebox@lists.infradead.org>

On Thu, May 11, 2017 at 11:11:00AM +0200, Sascha Hauer wrote:
> So far links can only point to files. Implement links to
> directories. With this all kinds of links are supported:
> 
> - relative links
> - absolute links
> - links including ".."
> - link loops (are detected, return -EMLINK)
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  commands/readlink.c |   2 +-
>  fs/fs.c             | 272 +++++++++++++++++++++++++++++-----------------------
>  include/fs.h        |   3 +-
>  3 files changed, 157 insertions(+), 120 deletions(-)
> 
> diff --git a/commands/readlink.c b/commands/readlink.c
> index 4ac576f16f..a19c8e0041 100644
> --- a/commands/readlink.c
> +++ b/commands/readlink.c

[...]

  
>  int stat(const char *filename, struct stat *s)
>  {
> -	char *f;
> +	char *path = canonicalize_path(filename);
> +	int ret;
>  
> -	f = realfile(filename, s);
> -	if (IS_ERR(f))
> -		return PTR_ERR(f);
> +	if (IS_ERR(path))
> +		return PTR_ERR(path);
>  
> -	free(f);
> -	return 0;
> +	ret = lstat(path, s);
> +
> +	free(path);
> +
> +	return ret;
>  }

The following is missing in this patch, it slipped into a debug
patch I removed from this series:

int lstat(const char *filename, struct stat *s)
{
	char *f = canonicalize_dir(filename);
	int ret;

	if (IS_ERR(f))
		return PTR_ERR(f);

	ret = __lstat(f, s);

	free(f);

	return ret;
}

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
