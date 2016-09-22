Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmz41-0007kh-Ik
 for barebox@lists.infradead.org; Thu, 22 Sep 2016 08:09:02 +0000
Date: Thu, 22 Sep 2016 10:08:39 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160922080839.ypjpltpcdsyjmle5@pengutronix.de>
References: <20160922050041.GA12923@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160922050041.GA12923@ravnborg.org>
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
Subject: Re: [PATCH] environment: "wrong magic" give the impression of an error
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

Hi Sam,

On Thu, Sep 22, 2016 at 07:00:41AM +0200, Sam Ravnborg wrote:
> From 144e3252f9604e44c48f90735489611f636e3e36 Mon Sep 17 00:00:00 2001
> From: Sam Ravnborg <srn@skov.dk>
> Date: Thu, 22 Sep 2016 06:54:42 +0200
> Subject: [PATCH 1/1] environment: "wrong magic" give the impression of an
>  error
> 
> Introduce a more soft wording when the magic of
> the superblock does not match.
> Include a hint to the typical reason "(envfs never written?)"
> 
> This prevents a "what is wrong?" moment when looking at
> the boot log.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  common/environment.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/common/environment.c b/common/environment.c
> index db127d7..e0dfc12 100644
> --- a/common/environment.c
> +++ b/common/environment.c
> @@ -382,7 +382,7 @@ EXPORT_SYMBOL(envfs_save);
>  static int envfs_check_super(struct envfs_super *super, size_t *size)
>  {
>  	if (ENVFS_32(super->magic) != ENVFS_MAGIC) {
> -		printf("envfs: wrong magic\n");
> +		printf("envfs: no envfs (magic mismatch) - envfs newer written?\n");

When the super block cannot be found it could indeed be that an envfs
was never written,...

>  		return -EIO;
>  	}
>  
> @@ -436,7 +436,7 @@ static int envfs_load_data(struct envfs_super *super, void *buf, size_t size,
>  		buf += sizeof(struct envfs_inode);
>  
>  		if (ENVFS_32(inode->magic) != ENVFS_INODE_MAGIC) {
> -			printf("envfs: wrong magic\n");
> +			printf("envfs: no envfs (magic mismatch) - envfs newer written?\n");

... but when the super block is fine then a failure to read the data is
really that - a failure, no?

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
