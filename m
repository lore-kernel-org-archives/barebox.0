Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bL3Ob-0005sB-7A
 for barebox@lists.infradead.org; Thu, 07 Jul 2016 07:06:49 +0000
Date: Thu, 7 Jul 2016 09:06:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160707070627.GY20657@pengutronix.de>
References: <1467833572-26162-1-git-send-email-dev@lynxeye.de>
 <1467833572-26162-3-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467833572-26162-3-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 3/5] ubifs: fix potential memory leak
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 06, 2016 at 09:32:50PM +0200, Lucas Stach wrote:
> Need to go through the regular error path in order to free
> "buf" correctly.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  fs/ubifs/lprops.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/fs/ubifs/lprops.c b/fs/ubifs/lprops.c
> index 28a1d3d..f880a89 100644
> --- a/fs/ubifs/lprops.c
> +++ b/fs/ubifs/lprops.c
> @@ -1095,14 +1095,16 @@ static int scan_check_cb(struct ubifs_info *c,
>  		lst->empty_lebs += 1;
>  		lst->total_free += c->leb_size;
>  		lst->total_dark += ubifs_calc_dark(c, c->leb_size);
> -		return LPT_SCAN_CONTINUE;
> +		ret = LPT_SCAN_CONTINUE;
> +		goto out;
>  	}
>  	if (lp->free + lp->dirty == c->leb_size &&
>  	    !(lp->flags & LPROPS_INDEX)) {
>  		lst->total_free  += lp->free;
>  		lst->total_dirty += lp->dirty;
>  		lst->total_dark  +=  ubifs_calc_dark(c, c->leb_size);
> -		return LPT_SCAN_CONTINUE;
> +		ret = LPT_SCAN_CONTINUE;
> +		goto out;
>  	}
>  
>  	sleb = ubifs_scan(c, lnum, 0, buf, 0);

"buf' is only used after these two if() blocks, so it should simply be
allocated afterwards.

The same bug is also present in the kernel, so you might want to send it
there aswell.

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
