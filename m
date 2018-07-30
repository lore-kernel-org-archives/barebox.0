Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fk6nA-0003xh-9G
 for barebox@lists.infradead.org; Mon, 30 Jul 2018 11:56:49 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <rhi@pengutronix.de>) id 1fk6my-0002BL-S9
 for barebox@lists.infradead.org; Mon, 30 Jul 2018 13:56:36 +0200
Received: from rhi by ptx.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <rhi@pengutronix.de>) id 1fk6my-0008MB-JD
 for barebox@lists.infradead.org; Mon, 30 Jul 2018 13:56:36 +0200
Date: Mon, 30 Jul 2018 13:56:36 +0200
From: Roland Hieber <r.hieber@pengutronix.de>
Message-ID: <20180730115636.c43qv3dxzclo4eqv@pengutronix.de>
References: <20180727134555.11676-1-r.hieber@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20180727134555.11676-1-r.hieber@pengutronix.de>
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
Subject: Re: [PATCH] ARM: i.MX: HAB: fix missing include
To: barebox@lists.infradead.org

Resent this patch with a better message in the other patch queue (see
[0]), so this one can be dropped.

[0]: https://www.mail-archive.com/barebox@lists.infradead.org/msg27250.html

 - Roland

On Fri, Jul 27, 2018 at 03:45:55PM +0200, Roland Hieber wrote:
> The code below uses EPERM, which is defined in errno.h.
> 
> Signed-off-by: Roland Hieber <r.hieber@pengutronix.de>
> ---
>  include/hab.h | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/include/hab.h b/include/hab.h
> index fb7149ef53..78c2b865ba 100644
> --- a/include/hab.h
> +++ b/include/hab.h
> @@ -18,6 +18,8 @@
>  #ifndef __HABV4_H
>  #define __HABV4_H
>  
> +#include <errno.h>
> +
>  #ifdef CONFIG_HABV4
>  int imx28_hab_get_status(void);
>  int imx6_hab_get_status(void);
> -- 
> 2.18.0
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Roland Hieber                     | r.hieber@pengutronix.de     |
Pengutronix e.K.                  | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim | Phone: +49-5121-206917-5086 |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
