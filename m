Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T9ftZ-0002Jv-Vx
 for barebox@lists.infradead.org; Thu, 06 Sep 2012 17:29:39 +0000
Date: Thu, 6 Sep 2012 19:29:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120906172935.GC26594@pengutronix.de>
References: <1346938629-17752-1-git-send-email-j.weitzel@phytec.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1346938629-17752-1-git-send-email-j.weitzel@phytec.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] PCM049: nand_bootstrap add shebang
To: Jan Weitzel <j.weitzel@phytec.de>
Cc: barebox@lists.infradead.org

On Thu, Sep 06, 2012 at 03:37:09PM +0200, Jan Weitzel wrote:
> 
> Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>

Applied to master

Thanks
 Sascha

> ---
>  arch/arm/boards/pcm049/env/bin/nand_bootstrap |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/arch/arm/boards/pcm049/env/bin/nand_bootstrap b/arch/arm/boards/pcm049/env/bin/nand_bootstrap
> index f8873fa..49e38dc 100644
> --- a/arch/arm/boards/pcm049/env/bin/nand_bootstrap
> +++ b/arch/arm/boards/pcm049/env/bin/nand_bootstrap
> @@ -1,4 +1,4 @@
> -
> +#!/bin/sh
>  echo "copying barebox to nand..."
>  
>  mci0.probe=1
> -- 
> 1.7.0.4
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
