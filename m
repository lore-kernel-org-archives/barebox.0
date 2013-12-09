Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VpwFB-0006xF-Cj
 for barebox@lists.infradead.org; Mon, 09 Dec 2013 08:31:10 +0000
Date: Mon, 9 Dec 2013 09:30:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20131209083046.GK24559@pengutronix.de>
References: <1386525974-15352-1-git-send-email-alex.aring@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1386525974-15352-1-git-send-email-alex.aring@gmail.com>
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
Subject: Re: [PATCH] scripts: add kernel-install-target to gitignore
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

On Sun, Dec 08, 2013 at 07:06:14PM +0100, Alexander Aring wrote:
> Signed-off-by: Alexander Aring <alex.aring@gmail.com>

Applied, thanks

Sascha

> ---
>  scripts/.gitignore | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/scripts/.gitignore b/scripts/.gitignore
> index 3cb3a0b..fddc04b 100644
> --- a/scripts/.gitignore
> +++ b/scripts/.gitignore
> @@ -4,6 +4,7 @@ fix_size
>  gen_netx_image
>  kallsyms
>  kernel-install
> +kernel-install-target
>  kwbimage
>  kwboot
>  mk-am35xx-spi-image
> -- 
> 1.8.5.1
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
