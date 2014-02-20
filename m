Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-bk0-x22b.google.com ([2a00:1450:4008:c01::22b])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGVGv-0001Zl-Rc
 for barebox@lists.infradead.org; Thu, 20 Feb 2014 15:10:46 +0000
Received: by mail-bk0-f43.google.com with SMTP id mx12so658633bkb.16
 for <barebox@lists.infradead.org>; Thu, 20 Feb 2014 07:10:23 -0800 (PST)
Date: Thu, 20 Feb 2014 16:16:05 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20140220151601.GA1171@x61s.Speedport_W_921V_1_24_000>
References: <1392904169-786-1-git-send-email-s.hauer@pengutronix.de>
 <1392904169-786-3-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1392904169-786-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 3/4] environment: Add function to load envfs from buffer
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

some little (maybe interesting) note, but all patches in this series
looks fine for me. :-)

On Thu, Feb 20, 2014 at 02:49:28PM +0100, Sascha Hauer wrote:
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/environment.c | 181 +++++++++++++++++++++++++++++++++------------------
>  include/envfs.h      |   1 +
>  2 files changed, 117 insertions(+), 65 deletions(-)
> 
> diff --git a/common/environment.c b/common/environment.c
> index 695baf7..19fb027 100644
> --- a/common/environment.c
> +++ b/common/environment.c
> @@ -218,78 +218,52 @@ out1:
>  }
>  EXPORT_SYMBOL(envfs_save);
>  
> -/**
> - * Restore the last environment into the current one
> - * @param[in] filename from where to restore
> - * @param[in] dir where to store the last content
> - * @return 0 on success, anything else in case of failure
> - *
> - * Note: This function will also be used on the host! See note in the header
> - * of this file.
> - */
> -int envfs_load(const char *filename, const char *dir, unsigned flags)
> +static int envfs_check_super(struct envfs_super *super, size_t *size)
>  {
> -	struct envfs_super super;
> -	void *buf = NULL, *buf_free = NULL;
> -	int envfd;
> -	int fd, ret = 0;
> -	char *str, *tmp;
> -	int headerlen_full;
> -	unsigned long size;
> -	/* for envfs < 1.0 */
> -	struct envfs_inode_end inode_end_dummy;
> -
> -	inode_end_dummy.mode = ENVFS_32(S_IRWXU | S_IRWXG | S_IRWXO);
> -	inode_end_dummy.magic = ENVFS_32(ENVFS_INODE_END_MAGIC);
> -
> -	envfd = open(filename, O_RDONLY);
> -	if (envfd < 0) {
> -		printf("Open %s %s\n", filename, errno_str());
> -		return -1;
> +	if (ENVFS_32(super->magic) != ENVFS_MAGIC) {
> +		printf("envfs: wrong magic\n");
> +		return -EIO;

In this case only on big endians machines:
if (super->magic != ENVFS_32(ENVFS_MAGIC))

is faster than:
if (ENVFS_32(super->magic) != ENVFS_MAGIC)

It's save (I suppose) ca. 4 instruktions... so it doesn't matter
to change it.

Regards
Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
