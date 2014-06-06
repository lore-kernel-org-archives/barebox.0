Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Wsltw-0007va-Sh
 for barebox@lists.infradead.org; Fri, 06 Jun 2014 04:37:16 +0000
Date: Fri, 6 Jun 2014 06:36:50 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140606043650.GP15686@pengutronix.de>
References: <1401989555-25532-1-git-send-email-shc_work@mail.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1401989555-25532-1-git-send-email-shc_work@mail.ru>
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
Subject: Re: [PATCH] ARM: dts: Remove orphaned i.MX27 DT template
To: Alexander Shiyan <shc_work@mail.ru>
Cc: barebox@lists.infradead.org

On Thu, Jun 05, 2014 at 09:32:35PM +0400, Alexander Shiyan wrote:
> Signed-off-by: Alexander Shiyan <shc_work@mail.ru>

Applied, thanks

Sascha


> ---
>  arch/arm/dts/imx27.dtsi | 11 -----------
>  1 file changed, 11 deletions(-)
>  delete mode 100644 arch/arm/dts/imx27.dtsi
> 
> diff --git a/arch/arm/dts/imx27.dtsi b/arch/arm/dts/imx27.dtsi
> deleted file mode 100644
> index 49a0ddf..0000000
> --- a/arch/arm/dts/imx27.dtsi
> +++ /dev/null
> @@ -1,11 +0,0 @@
> -/*
> - * Copyright 2012 Sascha Hauer, Pengutronix
> - *
> - * The code contained herein is licensed under the GNU General Public
> - * License. You may obtain a copy of the GNU General Public License
> - * Version 2 or later at the following locations:
> - *
> - * http://www.opensource.org/licenses/gpl-license.html
> - * http://www.gnu.org/copyleft/gpl.html
> - */
> -#include <arm/imx27.dtsi>
> -- 
> 1.8.5.5
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
