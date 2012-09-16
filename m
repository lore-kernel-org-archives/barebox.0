Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TD9Yr-0004CM-CZ
 for barebox@lists.infradead.org; Sun, 16 Sep 2012 07:46:38 +0000
Date: Sun, 16 Sep 2012 09:46:35 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20120916074635.GY24458@pengutronix.de>
References: <20120914070124.GC20834@game.jcrosoft.org>
 <1347608503-19372-1-git-send-email-plagnioj@jcrosoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1347608503-19372-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: Re: [PATCH 1/1] add barebox logo
To: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: barebox@lists.infradead.org

On Fri, Sep 14, 2012 at 09:41:43AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> 
> in logo/ you will found the barebox logo with color or white
> in:
>  - png24 (transparent)
>  - png8 (black background)
> 
> for the following size
>  - 100x100
>  - 200x200
>  - 400x400
>  - 600x600
>  - 800x800
> 
> The logo are origanize in a way to be able to include them in the envfs
> by just point as it.
> 
> Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> ---
> 
> binary skipped
> 
> Best Regards,
> J.
>  logo/LICENCE                                |   22 ++++++++++++++++++++++
>  logo/png24/100x100/color/barebox.png        |  Bin 0 -> 22724 bytes
>  logo/png24/100x100/white/barebox.png        |  Bin 0 -> 12053 bytes
>  logo/png24/200x200/color/barebox.png        |  Bin 0 -> 71557 bytes
>  logo/png24/200x200/white/barebox.png        |  Bin 0 -> 31132 bytes
>  logo/png24/400x400/color/barebox.png        |  Bin 0 -> 217170 bytes
>  logo/png24/400x400/white/barebox.png        |  Bin 0 -> 78591 bytes
>  logo/png24/600x600/color/barebox.png        |  Bin 0 -> 406788 bytes
>  logo/png24/600x600/while/barebox.png        |  Bin 0 -> 137235 bytes
>  logo/png24/800x800/color/barebox.png        |  Bin 0 -> 627433 bytes
>  logo/png24/800x800/white/barebox.png        |  Bin 0 -> 210397 bytes
>  logo/png8/100x100/color/blackbg/barebox.png |  Bin 0 -> 8279 bytes
>  logo/png8/100x100/white/blackbg/barebox.png |  Bin 0 -> 6089 bytes
>  logo/png8/200x200/color/blackbg/barebox.png |  Bin 0 -> 23616 bytes
>  logo/png8/200x200/white/blackbg/barebox.png |  Bin 0 -> 14838 bytes
>  logo/png8/400x400/color/blackbg/barebox.png |  Bin 0 -> 71295 bytes
>  logo/png8/400x400/white/blackbg/barebox.png |  Bin 0 -> 38480 bytes
>  logo/png8/600x600/color/blackbg/barebox.png |  Bin 0 -> 130709 bytes
>  logo/png8/600x600/while/blackbg/barebox.png |  Bin 0 -> 68648 bytes
>  logo/png8/800x800/color/blackbg/barebox.png |  Bin 0 -> 205281 bytes
>  logo/png8/800x800/white/blackbg/barebox.png |  Bin 0 -> 104173 bytes
>  21 files changed, 22 insertions(+)
>  create mode 100644 logo/LICENCE
>  create mode 100644 logo/png24/100x100/color/barebox.png
>  create mode 100644 logo/png24/100x100/white/barebox.png
>  create mode 100644 logo/png24/200x200/color/barebox.png
>  create mode 100644 logo/png24/200x200/white/barebox.png
>  create mode 100644 logo/png24/400x400/color/barebox.png
>  create mode 100644 logo/png24/400x400/white/barebox.png
>  create mode 100644 logo/png24/600x600/color/barebox.png
>  create mode 100644 logo/png24/600x600/while/barebox.png
>  create mode 100644 logo/png24/800x800/color/barebox.png
>  create mode 100644 logo/png24/800x800/white/barebox.png
>  create mode 100644 logo/png8/100x100/color/blackbg/barebox.png
>  create mode 100644 logo/png8/100x100/white/blackbg/barebox.png
>  create mode 100644 logo/png8/200x200/color/blackbg/barebox.png
>  create mode 100644 logo/png8/200x200/white/blackbg/barebox.png
>  create mode 100644 logo/png8/400x400/color/blackbg/barebox.png
>  create mode 100644 logo/png8/400x400/white/blackbg/barebox.png
>  create mode 100644 logo/png8/600x600/color/blackbg/barebox.png
>  create mode 100644 logo/png8/600x600/while/blackbg/barebox.png
>  create mode 100644 logo/png8/800x800/color/blackbg/barebox.png
>  create mode 100644 logo/png8/800x800/white/blackbg/barebox.png
> 
> diff --git a/logo/LICENCE b/logo/LICENCE
> new file mode 100644
> index 0000000..c568afd
> --- /dev/null
> +++ b/logo/LICENCE
> @@ -0,0 +1,22 @@
> +Barebox Logo Licence
> +
> +Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> +Copyright (C) 2012 JCrocoft.Ling Limited
> +
> +This logo or a modified version may be used by anyone to refer to the Barebox
> +project only, but does not indicate endorsement by the project.
> +
> +The logo can be modified in the limit of the respect of the image to the
> +Barebox project.
> +
> +In particular, we encourage you to use the logo for the purpose of advertising
> +support for Barebox. This includes, but is not limited to, the following
> +uses:
> + - systems that come preloaded with Barebox and such that support
> +   Barebox through a flash upgrade.
> + - Barebox documentation
> + - posters, clothing, presentations and other promotion material referring to the
> +   Barebox project
> +
> +Please make the image a link to http://www.barebox.org/ if you use it on a
> +web page.

Looks good, thanks. Applied this one.

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
