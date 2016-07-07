Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bL3XK-0000Xk-6Z
 for barebox@lists.infradead.org; Thu, 07 Jul 2016 07:15:50 +0000
Date: Thu, 7 Jul 2016 09:15:28 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20160707071528.GZ20657@pengutronix.de>
References: <1467833572-26162-1-git-send-email-dev@lynxeye.de>
 <1467833572-26162-4-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1467833572-26162-4-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH 4/5] ubifs: fix potential NULL ptr dereference
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Wed, Jul 06, 2016 at 09:32:51PM +0200, Lucas Stach wrote:
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> ---
>  fs/ubifs/ubifs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/ubifs/ubifs.c b/fs/ubifs/ubifs.c
> index 8062baa..bc1b521 100644
> --- a/fs/ubifs/ubifs.c
> +++ b/fs/ubifs/ubifs.c
> @@ -479,7 +479,7 @@ out:
>  		dbg_gen("cannot find next direntry, error %d", err);
>  
>  out_free:
> -	if (file->private_data)
> +	if (file && file->private_data)
>  		kfree(file->private_data);
>  	if (file)
>  		free(file);

We should rather use xzalloc, then we could drop all the if() in the
error path.

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
