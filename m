Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx0a-00176a03.pphosted.com ([67.231.149.52])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bPTPw-0007Gx-On
 for barebox@lists.infradead.org; Tue, 19 Jul 2016 11:42:29 +0000
Received: from pps.filterd (m0048275.ppops.net [127.0.0.1])
 by m0048275.ppops.net-00176a03. (8.16.0.11/8.16.0.11) with SMTP id
 u6JBcO4u009074
 for <barebox@lists.infradead.org>; Tue, 19 Jul 2016 07:42:06 -0400
References: <1458208829-25570-1-git-send-email-alexander.stein@systec-electronic.com>
 <1458208829-25570-14-git-send-email-alexander.stein@systec-electronic.com>
From: Renaud Barbier <renaud.barbier@ge.com>
Message-ID: <578E11FD.6050408@ge.com>
Date: Tue, 19 Jul 2016 12:41:49 +0100
MIME-Version: 1.0
In-Reply-To: <1458208829-25570-14-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: Re: [PATCH 13/13] ubifs: update implementation from u-boot v2016.03
To: barebox@lists.infradead.org

I just tested the v2016.07 version.

I noticed that the readlink function returns an empty variable and found
that symlink that used to appear as:
OWBOOT> / ls -l /mnt/
lrwxrwxrwx              7 active -> primary
drwxr-xr-x            472 primary

now appears as:

OWBOOT> / ls -l /mnt/
drwxr-xr-x            472 active
drwxr-xr-x            472 primary

It is due the ubifs_findfile function resolving the symlink as when the
code under "if ((inode->i_mode & S_IFMT) == S_IFLNK) {" is commented
out, the link is resolved by the ubifs_readlink entry point.


In another hand, it looks like ubifs_readlink does not deal with symlink
recursion.






On 17/03/2016 10:00, Alexander Stein wrote:
> -static struct inode *ubifs_findfile(struct super_block *sb, const char *filename)
> +static unsigned long ubifs_findfile(struct super_block *sb, const char *filename)
>  {
>  	int ret;
>  	char *next;
>  	char fpath[128];
> +	char symlinkpath[128];
>  	char *name = fpath;
>  	unsigned long root_inum = 1;
>  	unsigned long inum;
> -	struct inode *inode = 0;
> +	int symlink_count = 0; /* Don't allow symlink recursion */
> +	char link_name[64];
>  
>  	strcpy(fpath, filename);
>  
> @@ -238,9 +514,12 @@ static struct inode *ubifs_findfile(struct super_block *sb, const char *filename
>  	 */
>  	inum = root_inum;
>  	if (!name || *name == '\0')
> -		return ubifs_iget(sb, 1);
> +		return inum;
>  
>  	for (;;) {
> +		struct inode *inode;
> +		struct ubifs_inode *ui;
> +
>  		/* Extract the actual part from the pathname.  */
>  		next = strchr(name, '/');
>  		if (next) {
> @@ -248,13 +527,41 @@ static struct inode *ubifs_findfile(struct super_block *sb, const char *filename
>  			while (*next == '/')
>  				*(next++) = '\0';
>  		}
> +
>  		ret = ubifs_finddir(sb, name, root_inum, &inum);
>  		if (!ret)
> -			break;
> -
> +			return 0;
>  		inode = ubifs_iget(sb, inum);
> +
>  		if (!inode)
> -			break;
> +			return 0;
> +		ui = ubifs_inode(inode);
> +
> +		if ((inode->i_mode & S_IFMT) == S_IFLNK) {
> +			char buf[128];
> +
> +			/* We have some sort of symlink recursion, bail out */
> +			if (symlink_count++ > 8) {
> +				printf("Symlink recursion, aborting\n");
> +				return 0;
> +			}
> +			memcpy(link_name, ui->data, ui->data_len);
> +			link_name[ui->data_len] = '\0';
> +
> +			if (link_name[0] == '/') {
> +				/* Absolute path, redo everything without
> +				 * the leading slash */
> +				next = name = link_name + 1;
> +				root_inum = 1;
> +				continue;
> +			}
> +			/* Relative to cur dir */
> +			sprintf(buf, "%s/%s",
> +					link_name, next == NULL ? "" : next);
> +			memcpy(symlinkpath, buf, sizeof(buf));
> +			next = name = symlinkpath;
> +			continue;
> +		}


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
