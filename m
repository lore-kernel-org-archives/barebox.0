Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SHrRj-000122-8o
 for barebox@lists.infradead.org; Wed, 11 Apr 2012 06:54:42 +0000
Date: Wed, 11 Apr 2012 08:54:21 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120411065421.GI3852@pengutronix.de>
References: <1334072167-19539-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1334072167-19539-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] defaultenv/update: fix dhcp-barebox support
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Tue, Apr 10, 2012 at 05:36:07PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> call dhcp when ip mode is dhcp-barebox
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>

Applied, thanks.

Sascha

> ---
>  defaultenv/bin/_update |    2 +-
>  1 files changed, 1 insertions(+), 1 deletions(-)
> 
> diff --git a/defaultenv/bin/_update b/defaultenv/bin/_update
> index e7cf149..8e27ee1 100644
> --- a/defaultenv/bin/_update
> +++ b/defaultenv/bin/_update
> @@ -11,7 +11,7 @@ if [ ! -e "$part" ]; then
>  fi
>  
>  if [ x$mode = xtftp -o x$mode = xnfs ]; then
> -	if [ x$ip = xdhcp ]; then
> +	if [ x$ip = xdhcp -o x$ip = "xdhcp-barebox" ]; then
>  		dhcp
>  	fi
>  
> -- 
> 1.7.9.1
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
