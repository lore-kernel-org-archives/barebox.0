Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x243.google.com ([2a00:1450:4010:c04::243])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aZLeU-0008Le-EF
 for barebox@lists.infradead.org; Fri, 26 Feb 2016 16:54:05 +0000
Received: by mail-lb0-x243.google.com with SMTP id vk4so2565219lbb.1
 for <barebox@lists.infradead.org>; Fri, 26 Feb 2016 08:53:41 -0800 (PST)
Date: Fri, 26 Feb 2016 20:19:38 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20160226201938.be70db89f8549181645c71cd@gmail.com>
In-Reply-To: <1456499985-22860-2-git-send-email-yegorslists@googlemail.com>
References: <1456499985-22860-1-git-send-email-yegorslists@googlemail.com>
 <1456499985-22860-2-git-send-email-yegorslists@googlemail.com>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v4 2/3] linux/fs.h: add types and routines needed for
 SquashFS
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Fri, 26 Feb 2016 16:19:44 +0100
yegorslists@googlemail.com wrote:

> From: Yegor Yefremov <yegorslists@googlemail.com>
> =

> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  include/linux/fs.h | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
> =

> diff --git a/include/linux/fs.h b/include/linux/fs.h
> index 7e9886a..e11a602 100644
> --- a/include/linux/fs.h
> +++ b/include/linux/fs.h
> @@ -19,6 +19,26 @@
>  #endif
>  =

>  /*
> + * File types
> + *
> + * NOTE! These match bits 12..15 of stat.st_mode
> + * (ie "(i_mode >> 12) & 15").
> + */
> +#define DT_UNKNOWN	0
> +#define DT_FIFO		1
> +#define DT_CHR		2
> +#define DT_DIR		4
> +#define DT_BLK		6
> +#define DT_REG		8
> +#define DT_LNK		10
> +#define DT_SOCK		12
> +#define DT_WHT		14
> +
> +struct dir_context {
> +	loff_t pos;
> +};
> +
> +/*
>   * These are the fs-independent mount-flags: up to 32 flags are supported
>   */
>  #define MS_RDONLY	 1	/* Mount read-only */
> @@ -74,6 +94,7 @@ struct inode {
>  	struct timespec		i_mtime;
>  	struct timespec		i_ctime;
>  	unsigned int		i_blkbits;
> +	blkcnt_t		i_blocks;
>  	unsigned short          i_bytes;
>  	umode_t			i_mode;
>  	spinlock_t		i_lock;	/* i_blocks, i_bytes, maybe i_size */
> @@ -194,6 +215,7 @@ struct file_system_type {
>  =

>  struct file {
>  	struct path		f_path;
> +	struct inode		*f_inode;	/* cached value */
>  #define f_dentry	f_path.dentry
>  #define f_vfsmnt	f_path.mnt
>  	const struct file_operations	*f_op;
> @@ -361,4 +383,9 @@ struct file {
>  #define I_DIRTY (I_DIRTY_SYNC | I_DIRTY_DATASYNC | I_DIRTY_PAGES)
>  #define I_DIRTY_ALL (I_DIRTY | I_DIRTY_TIME)
>  =

> +static inline loff_t i_size_read(const struct inode *inode)
> +{
> +        return inode->i_size;

checkpatch.pl reports about an error here:

    ERROR: code indent should use tabs where possible

> +}
> +
>  #endif /* _LINUX_FS_H */
> -- =

> 2.1.4
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
