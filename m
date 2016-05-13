Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1b19wF-0006bu-10
 for barebox@lists.infradead.org; Fri, 13 May 2016 10:03:20 +0000
Date: Fri, 13 May 2016 12:02:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160513100257.GP19714@pengutronix.de>
References: <1462977868-12691-1-git-send-email-alexander.stein@systec-electronic.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1462977868-12691-1-git-send-email-alexander.stein@systec-electronic.com>
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
Subject: Re: [PATCH 1/1] reset_source: export reset_source_set_priority
To: Alexander Stein <alexander.stein@systec-electronic.com>
Cc: barebox@lists.infradead.org

On Wed, May 11, 2016 at 04:44:28PM +0200, Alexander Stein wrote:
> In commit 4a7534bf07e ("reset-source: Allow different priorities") the
> function name changed from reset_source_set to reset_source_set_priority.
> Do that change in EXPORT_SYMBOL() accordingly.
> reset_source_set still exists but is a static inline now.
> 
> Fixes: 4a7534bf07e ("reset-source: Allow different priorities")
> Signed-off-by: Alexander Stein <alexander.stein@systec-electronic.com>
> ---
>  common/reset_source.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Applied, thanks

Sascha

> 
> diff --git a/common/reset_source.c b/common/reset_source.c
> index 0a69f90..06e2ca8 100644
> --- a/common/reset_source.c
> +++ b/common/reset_source.c
> @@ -50,7 +50,7 @@ void reset_source_set_priority(enum reset_src_type st, unsigned int priority)
>  	pr_debug("Setting reset source to %s with priority %d\n",
>  			reset_src_names[reset_source], priority);
>  }
> -EXPORT_SYMBOL(reset_source_set);
> +EXPORT_SYMBOL(reset_source_set_priority);
>  
>  static int reset_source_init(void)
>  {
> -- 
> 2.7.3
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
