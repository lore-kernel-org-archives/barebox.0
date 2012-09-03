Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T8Rqw-0007oU-C9
 for barebox@lists.infradead.org; Mon, 03 Sep 2012 08:17:51 +0000
Date: Mon, 3 Sep 2012 10:17:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120903081744.GB26594@pengutronix.de>
References: <20120901123511.GA19233@game.jcrosoft.org>
 <1346503053-21862-1-git-send-email-plagnioj@jcrosoft.com>
 <1346503053-21862-3-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346503053-21862-3-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 03/18] fs: add symlink support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Sat, Sep 01, 2012 at 02:37:18PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Limit it's support to existing file only
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  fs/fs.c      |   44 ++++++++++++++++++++++++++++++++++++++++++++
>  include/fs.h |    3 +++
>  2 files changed, 47 insertions(+)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index f357a98..291e879 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -948,6 +948,50 @@ out:
>  }
>  EXPORT_SYMBOL(readlink);
>  
> +int symlink(const char *pathname, const char *newpath)
> +{
> +	struct fs_driver_d *fsdrv;
> +	struct fs_device_d *fsdev;
> +	char *p = normalise_path(pathname);
> +	int ret;
> +	struct stat s;
> +
> +	if (!stat(p, &s) && S_ISDIR(s.st_mode)) {
> +		ret = -ENOSYS;
> +		goto out;
> +	}

newpath has to be checked for existence, not pathname.

Also I noticed that links to directories do not work.

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
