Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rj5B1-000588-Hy
 for barebox@lists.infradead.org; Fri, 06 Jan 2012 08:29:28 +0000
Date: Fri, 6 Jan 2012 09:29:18 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120106082918.GB5446@pengutronix.de>
References: <1325791095-32363-1-git-send-email-w.sang@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1325791095-32363-1-git-send-email-w.sang@pengutronix.de>
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
Subject: Re: [PATCH] fs: fat: gen_numname() is only need with FS_FAT_WRITE
To: Wolfram Sang <w.sang@pengutronix.de>
Cc: barebox@lists.infradead.org

On Thu, Jan 05, 2012 at 08:18:15PM +0100, Wolfram Sang wrote:
> So, check for that config option, too. This will get rid of the warning:
> 
> 	fs/fat/ff.c:878:13: warning: 'gen_numname' defined but not used
> 
> I could have also moved the function further down, but I decided for the
> least intrusive change.

I already posted the same patch.

Sascha

> 
> Signed-off-by: Wolfram Sang <w.sang@pengutronix.de>
> ---
>  fs/fat/ff.c |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/fs/fat/ff.c b/fs/fat/ff.c
> index 3ada867..0087e21 100644
> --- a/fs/fat/ff.c
> +++ b/fs/fat/ff.c
> @@ -874,7 +874,7 @@ void fit_lfn (
>  /*
>   * Create numbered name
>   */
> -#ifdef CONFIG_FS_FAT_LFN
> +#if defined(CONFIG_FS_FAT_LFN) && defined(CONFIG_FS_FAT_WRITE)
>  static void gen_numname (
>  	BYTE *dst,		/* Pointer to generated SFN */
>  	const BYTE *src,	/* Pointer to source SFN to be modified */
> -- 
> 1.7.7.3
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
