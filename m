Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from stcim.de ([78.46.90.227])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eeQU6-0001Xr-CA
 for barebox@lists.infradead.org; Wed, 24 Jan 2018 19:13:24 +0000
Date: Wed, 24 Jan 2018 20:12:38 +0100
From: Stefan Lengfeld <contact@stefanchrist.eu>
Message-ID: <20180124191238.GA521@porty>
References: <20180124074534.7966-1-s.hauer@pengutronix.de>
 <20180124074534.7966-3-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180124074534.7966-3-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 2/7] fs: implement is_tftp_fs()
To: barebox@lists.infradead.org

Hi Sascha,

On Wed, Jan 24, 2018 at 08:45:29AM +0100, Sascha Hauer wrote:
> Some commands need files in which they can lseek backwards which
> is particularly not possible on TFTP. Instead of hiding this
> behind can_lseek_backward() create a function for it which tests
> if the file is on TFTP directly rather than using different
> lseek operations.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  fs/fs.c      | 22 ++++++++++++++++++++++
>  include/fs.h | 10 ++++++++++
>  2 files changed, 32 insertions(+)
> 
> diff --git a/fs/fs.c b/fs/fs.c
> index 6f15e93ba9..e073e3577d 100644
> --- a/fs/fs.c
> +++ b/fs/fs.c
> @@ -1906,3 +1906,25 @@ char *path_get_linux_rootarg(const char *path)
>  
>  	return xstrdup(str);
>  }
> +
> +/**
> + * __is_tftp_fs() - return true when path is mounted on TFTP
> + * @path: The path
> + *
> + * Do not use directly, use is_tftp_fs instead.
> + *
> + * Return: true when @path is on TFTP, false otherwise
> + */
> +bool __is_tftp_fs(const char *path)
> +{
> +	struct fs_device_d *fsdev;
> +
> +	fsdev = get_fsdevice_by_path(path);
> +	if (!fsdev)
> +		return false;
> +
> +	if (strcmp(fsdev->driver->drv.name, "tftp"))
> +		return false;
> +
> +	return true;
> +}
> diff --git a/include/fs.h b/include/fs.h
> index 3d88bfad4a..5a50d9b9e4 100644
> --- a/include/fs.h
> +++ b/include/fs.h
> @@ -121,6 +121,16 @@ static inline int can_lseek_backward(int fd)
>  	return 1;
>  }
>  
> +bool __is_tftp_fs(const char *path);
> +
> +static inline bool is_tftp_fs(const char *path)
> +{
> +	if (!IS_ENABLED(CONFIG_FS_TFTP))
> +		return 0;

Nitpick: Maybe use 'false' instead of '0', because return value is a
boolean.

Kind regards,
Stefan

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
