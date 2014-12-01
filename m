Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XvMqy-0005DP-Jt
 for barebox@lists.infradead.org; Mon, 01 Dec 2014 09:01:10 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0]
 ident=Debian-exim) by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <mol@pengutronix.de>) id 1XvMqZ-0002qZ-Af
 for barebox@lists.infradead.org; Mon, 01 Dec 2014 10:00:43 +0100
Received: from mol by ptx.hi.pengutronix.de with local (Exim 4.80)
 (envelope-from <mol@pengutronix.de>) id 1XvMqZ-0002vB-99
 for barebox@lists.infradead.org; Mon, 01 Dec 2014 10:00:43 +0100
Date: Mon, 1 Dec 2014 10:00:43 +0100
From: Michael Olbrich <m.olbrich@pengutronix.de>
Message-ID: <20141201090043.GL16478@pengutronix.de>
References: <1417184946-16128-1-git-send-email-s.hauer@pengutronix.de>
 <1417184946-16128-14-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1417184946-16128-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 14/14] Kconfig: make BROKEN invisible
To: barebox@lists.infradead.org

On Fri, Nov 28, 2014 at 03:29:06PM +0100, Sascha Hauer wrote:
> BROKEN is a developer option to keep things in the tree we know
> are broken. Make this option invisible so that randconfig builds do
> not enable it.

I don't think this is needed. You can specify a partial config file when
running randconfig with KCONFIG_ALLCONFIG=some_config. Just disable BROKEN
there.

Michael

> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/Kconfig | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/common/Kconfig b/common/Kconfig
> index 21298c2..a5fa46b 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -248,7 +248,6 @@ endmenu
>  
>  config BROKEN
>  	bool
> -	prompt "Prompt for broken or incomplete code"
>  
>  config EXPERIMENTAL
>  	bool
> -- 
> 2.1.3
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
