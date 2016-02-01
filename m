Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aQA9J-0001dh-Lb
 for barebox@lists.infradead.org; Mon, 01 Feb 2016 08:47:54 +0000
Date: Mon, 1 Feb 2016 09:47:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160201084731.GM13058@pengutronix.de>
References: <1454076381-17375-1-git-send-email-yegorslists@googlemail.com>
 <1454076381-17375-2-git-send-email-yegorslists@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1454076381-17375-2-git-send-email-yegorslists@googlemail.com>
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
Subject: Re: [PATCH 2/2] fs: add super_operations infrastructure
To: yegorslists@googlemail.com
Cc: barebox@lists.infradead.org

On Fri, Jan 29, 2016 at 03:06:21PM +0100, yegorslists@googlemail.com wrote:
> From: Yegor Yefremov <yegorslists@googlemail.com>
> 
> Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
> ---
>  fs/Makefile        |  1 +
>  fs/inode.c         | 34 ++++++++++++++++++++++++++++++++++
>  fs/ubifs/super.c   | 26 +++++++++++---------------
>  include/linux/fs.h |  6 ++++++
>  4 files changed, 52 insertions(+), 15 deletions(-)
>  create mode 100644 fs/inode.c
> 
> diff --git a/fs/Makefile b/fs/Makefile
> index 7896e38..320e6fa 100644
> --- a/fs/Makefile
> +++ b/fs/Makefile
> @@ -5,6 +5,7 @@ obj-y			+= devfs-core.o
>  obj-$(CONFIG_FS_DEVFS)	+= devfs.o
>  obj-$(CONFIG_FS_FAT)	+= fat/
>  obj-y	+= fs.o
> +obj-y	+= inode.o
>  obj-$(CONFIG_FS_UBIFS)	+= ubifs/
>  obj-$(CONFIG_FS_TFTP)	+= tftp.o
>  obj-$(CONFIG_FS_OMAP4_USBBOOT)	+= omap4_usbbootfs.o
> diff --git a/fs/inode.c b/fs/inode.c
> new file mode 100644
> index 0000000..f9b1b63
> --- /dev/null
> +++ b/fs/inode.c
> @@ -0,0 +1,34 @@
> +/*
> + * (C) 1997 Linus Torvalds
> + * (C) 1999 Andrea Arcangeli <andrea@suse.de> (dynamic inode allocation)
> + */
> +
> +#include <linux/mount.h>
> +
> +/**
> + * iget_locked - obtain an inode from a mounted file system
> + * @sb:		super block of file system
> + * @ino:	inode number to get
> + *
> + * Search for the inode specified by @ino in the inode cache and if present
> + * return it with an increased reference count. This is for file systems
> + * where the inode number is sufficient for unique identification of an inode.
> + *
> + * If the inode is not in cache, allocate a new inode and return it locked,
> + * hashed, and with the I_NEW flag set.  The file system gets to fill it in
> + * before unlocking it via unlock_new_inode().
> + */
> +struct inode *iget_locked(struct super_block *sb, unsigned long ino)
> +{
> +	struct inode *inode;
> +
> +	inode = sb->s_op->alloc_inode(sb);
> +	if (inode) {
> +		inode->i_ino = ino;
> +		inode->i_sb = sb;
> +		list_add(&inode->i_sb_list, &sb->s_inodes);
> +		inode->i_state = I_SYNC | I_NEW;
> +	}
> +
> +	return inode;
> +}

Let's stop here, the border has been crossed. We can introduce no-op
wrappers for functions which do not have any meaning in barebox
(spinlocks and the like), we can introduce convenience wrappers for
functions that have a different name in barebox (like kmalloc), but
please let's not introduce functions which do more complicated things
which depend on structures being ordered the way they are in the Linux
kernel. I'm really afraid this way we merge more and more code from
Linux that doesn't really make sense in the barebox context and that we
have to keep code in the filesystem drivers just to make the parallel
universe of the Linux wrappers happy. That's a can of worms I don't want
to open.

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
