Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1cGIt8-0007a4-HA
 for barebox@lists.infradead.org; Mon, 12 Dec 2016 05:10:59 +0000
Date: Mon, 12 Dec 2016 06:10:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20161212051033.wijp6boime3xh6ll@pengutronix.de>
References: <1481206468-3959-1-git-send-email-renaud.barbier@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1481206468-3959-1-git-send-email-renaud.barbier@ge.com>
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
Subject: Re: [PATCH] ubifs: restore symlink support
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org, Renaud Barbier <renaud.barbier@abaco.com>

On Thu, Dec 08, 2016 at 02:14:28PM +0000, Renaud Barbier wrote:
> In commit a63059d7 of the latest u-boot port, the function that
> returns the inode number also resolves symlink. This prevents the
> readlink entry point from doing its job and breaks the user command
> readlink and the display of symlink with the ls command.
> Remove the code following the link to restore original functionality.
> 
> Signed-off-by: Renaud Barbier <renaud.barbier@abaco.com>
> ---
>  fs/ubifs/ubifs.c |   29 -----------------------------
>  1 files changed, 0 insertions(+), 29 deletions(-)

Applied, thanks

Sascha

> 
> diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
> index 7935688..0bb1c26 100644
> --- a/fs/ubifs/ubifs.c
> +++ b/fs/ubifs/ubifs.c
> @@ -496,12 +496,9 @@ static unsigned long ubifs_findfile(struct super_block *sb, const char *filename
>  	int ret;
>  	char *next;
>  	char fpath[128];
> -	char symlinkpath[128];
>  	char *name = fpath;
>  	unsigned long root_inum = 1;
>  	unsigned long inum;
> -	int symlink_count = 0; /* Don't allow symlink recursion */
> -	char link_name[64];
>  
>  	strcpy(fpath, filename);
>  
> @@ -537,32 +534,6 @@ static unsigned long ubifs_findfile(struct super_block *sb, const char *filename
>  			return 0;
>  		ui = ubifs_inode(inode);
>  
> -		if ((inode->i_mode & S_IFMT) == S_IFLNK) {
> -			char buf[128];
> -
> -			/* We have some sort of symlink recursion, bail out */
> -			if (symlink_count++ > 8) {
> -				printf("Symlink recursion, aborting\n");
> -				return 0;
> -			}
> -			memcpy(link_name, ui->data, ui->data_len);
> -			link_name[ui->data_len] = '\0';
> -
> -			if (link_name[0] == '/') {
> -				/* Absolute path, redo everything without
> -				 * the leading slash */
> -				next = name = link_name + 1;
> -				root_inum = 1;
> -				continue;
> -			}
> -			/* Relative to cur dir */
> -			sprintf(buf, "%s/%s",
> -					link_name, next == NULL ? "" : next);
> -			memcpy(symlinkpath, buf, sizeof(buf));
> -			next = name = symlinkpath;
> -			continue;
> -		}
> -
>  		/*
>  		 * Check if directory with this name exists
>  		 */
> -- 
> 1.7.1
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
