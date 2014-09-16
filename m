Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XTlwe-0004mg-Fv
 for barebox@lists.infradead.org; Tue, 16 Sep 2014 06:08:57 +0000
Date: Tue, 16 Sep 2014 08:08:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140916060834.GE4992@pengutronix.de>
References: <1410817895-8184-1-git-send-email-dev@lynxeye.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1410817895-8184-1-git-send-email-dev@lynxeye.de>
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
Subject: Re: [PATCH] Makefile: enable Werror=implicit-function-declaration
To: Lucas Stach <dev@lynxeye.de>
Cc: barebox@lists.infradead.org

On Mon, Sep 15, 2014 at 11:51:35PM +0200, Lucas Stach wrote:
> This should prevent us from ever again missing an
> failure similar to that one fixed in ee3254569dab
> (EFI: add missing include) by throwing a build error.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Nice. I wonder why I never did that earlier. Applied, thanks

Sascha

> ---
>  Makefile | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Makefile b/Makefile
> index b059c3a00eaa..90b2b6368554 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -300,6 +300,7 @@ LINUXINCLUDE    := -Iinclude -I$(srctree)/dts/include \
>  CPPFLAGS        := -D__KERNEL__ -D__BAREBOX__ $(LINUXINCLUDE) -fno-builtin -ffreestanding
>  
>  CFLAGS          := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
> +                   -Werror=implicit-function-declaration \
>                     -fno-strict-aliasing -fno-common -Os -pipe
>  AFLAGS          := -D__ASSEMBLY__
>  
> -- 
> 1.9.3
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
