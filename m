Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1boP2o-0004Ob-8t
 for barebox@lists.infradead.org; Mon, 26 Sep 2016 06:05:39 +0000
Date: Mon, 26 Sep 2016 08:05:15 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160926060515.fvyfquh74okw6rsq@pengutronix.de>
References: <20160922050041.GA12923@ravnborg.org>
 <20160922080839.ypjpltpcdsyjmle5@pengutronix.de>
 <20160922191634.GA23455@ravnborg.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20160922191634.GA23455@ravnborg.org>
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
Subject: Re: [PATCH v2] environment: "wrong magic" gives the impression of an
 error
To: Sam Ravnborg <sam@ravnborg.org>
Cc: Barebox List <barebox@lists.infradead.org>

On Thu, Sep 22, 2016 at 09:16:34PM +0200, Sam Ravnborg wrote:
> From 15e7ff689cfda27eab10aacda5c26a1ba47979ec Mon Sep 17 00:00:00 2001
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

Applied, thanks

Sascha

> 
> v2:
> Dropped change in envfs_load_data(). envfs_load_data() is used
> to traverse the inodes and if we reach this far we
> have encountered a real error which should be reported.
> Thanks to Sascha for spottign this mistake!
> 
> 	Sam
> 
>  common/environment.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/common/environment.c b/common/environment.c
> index db127d7..c9cef63 100644
> --- a/common/environment.c
> +++ b/common/environment.c
> @@ -382,7 +382,7 @@ EXPORT_SYMBOL(envfs_save);
>  static int envfs_check_super(struct envfs_super *super, size_t *size)
>  {
>  	if (ENVFS_32(super->magic) != ENVFS_MAGIC) {
> -		printf("envfs: wrong magic\n");
> +		printf("envfs: no envfs (magic mismatch) - envfs newer written?\n");
>  		return -EIO;
>  	}
>  
> -- 
> 1.8.3.1
> 
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
