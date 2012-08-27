Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T5zlH-0006FF-CM
 for barebox@lists.infradead.org; Mon, 27 Aug 2012 13:53:52 +0000
Date: Mon, 27 Aug 2012 15:53:49 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120827135349.GH26594@pengutronix.de>
References: <20120824044613.GI6271@game.jcrosoft.org>
 <1345783818-28784-1-git-send-email-plagnioj@jcrosoft.com>
 <1345783818-28784-6-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1345783818-28784-6-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 06/18] fs: introduce get_mounted_path to get the path
 where a file is mounted
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Aug 24, 2012 at 06:50:06AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
>  fs/fs.c      |    9 +++++++++
>  include/fs.h |    2 ++
>  2 files changed, 11 insertions(+)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index ca6340c..8ec368c 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -242,6 +242,15 @@ static struct fs_device_d *get_fsdevice_by_path(const char *path)
>  	return fs_dev_root;
>  }
>  
> +char* get_mounted_path(const char *path)

char *get_mounted_path

> +{
> +	struct fs_device_d *fdev;
> +
> +	fdev = get_fsdevice_by_path(path);
> +
> +	return fdev->path;
> +}
> +
>  static FILE files[MAX_FILES];
>  
>  static FILE *get_file(void)
> diff --git a/include/fs.h b/include/fs.h
> index 263823a..19b4418 100644
> --- a/include/fs.h
> +++ b/include/fs.h
> @@ -174,6 +174,8 @@ void *read_file(const char *filename, size_t *size);
>  char *normalise_path(const char *path);
>  char *normalise_link(const char *pathname, const char* symlink);
>  
> +char* get_mounted_path(const char *path);

char *get_mounted_path

> +
>  /* Register a new filesystem driver */
>  int register_fs_driver(struct fs_driver_d *fsdrv);
>  
> -- 
> 1.7.10.4
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
