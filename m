Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo68.mail-out.ovh.net ([46.105.52.162])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YdabM-0008FR-K1
 for barebox@lists.infradead.org; Thu, 02 Apr 2015 08:35:50 +0000
Received: from mail610.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with SMTP id 8DEA8FFA169
 for <barebox@lists.infradead.org>; Thu,  2 Apr 2015 10:35:25 +0200 (CEST)
Date: Thu, 2 Apr 2015 10:35:22 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20150402083522.GE8125@ns203013.ovh.net>
References: <1427841205-9393-1-git-send-email-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1427841205-9393-1-git-send-email-mkl@pengutronix.de>
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
Subject: Re: [PATCH] makfiles: add emacs syntax highlighting hint
To: Marc Kleine-Budde <mkl@pengutronix.de>
Cc: barebox@lists.infradead.org, sha@pengutronix.de

On 00:33 Wed 01 Apr     , Marc Kleine-Budde wrote:
> This patches makes a standard emacs to recognise the files as makefiles.
not a fan of vi or emacs stuff in file

btw I plan to drop the images/ and move them back to the ARCH

Best Regads,
J.
> 
> Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
> ---
>  images/Makefile.am33xx   | 3 ++-
>  images/Makefile.imx      | 1 +
>  images/Makefile.mvebu    | 1 +
>  images/Makefile.mxs      | 1 +
>  images/Makefile.rockchip | 1 +
>  images/Makefile.tegra    | 1 +
>  scripts/Makefile.lib     | 1 +
>  7 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/images/Makefile.am33xx b/images/Makefile.am33xx
> index 002c1038f812..fde8f3455974 100644
> --- a/images/Makefile.am33xx
> +++ b/images/Makefile.am33xx
> @@ -1,4 +1,5 @@
> -
> +# -*-makefile-*-
> +#
>  # %.mlo - convert into mlo image
>  # ----------------------------------------------------------------
>  quiet_cmd_mlo_image = MLO     $@
> diff --git a/images/Makefile.imx b/images/Makefile.imx
> index f5f4cf3dd6e8..f05e45c8f4b4 100644
> --- a/images/Makefile.imx
> +++ b/images/Makefile.imx
> @@ -1,3 +1,4 @@
> +# -*-makefile-*-
>  #
>  # barebox image generation Makefile for i.MX images
>  #
> diff --git a/images/Makefile.mvebu b/images/Makefile.mvebu
> index 5e90855d2b7a..78cc25f08d7b 100644
> --- a/images/Makefile.mvebu
> +++ b/images/Makefile.mvebu
> @@ -1,3 +1,4 @@
> +# -*-makefile-*-
>  #
>  # barebox image generation Makefile for Marvell mvebu
>  #
> diff --git a/images/Makefile.mxs b/images/Makefile.mxs
> index 733f83bd1fe0..de8b74758433 100644
> --- a/images/Makefile.mxs
> +++ b/images/Makefile.mxs
> @@ -1,3 +1,4 @@
> +# -*-makefile-*-
>  #
>  # barebox image generation Makefile for MXS images
>  #
> diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
> index 24444330133e..3e42cee432d0 100644
> --- a/images/Makefile.rockchip
> +++ b/images/Makefile.rockchip
> @@ -1,3 +1,4 @@
> +# -*-makefile-*-
>  #
>  # barebox image generation Makefile for Rockchip images
>  #
> diff --git a/images/Makefile.tegra b/images/Makefile.tegra
> index 4f876e4b5969..281a83d8ce7d 100644
> --- a/images/Makefile.tegra
> +++ b/images/Makefile.tegra
> @@ -1,3 +1,4 @@
> +# -*-makefile-*-
>  #
>  # barebox image generation Makefile for Tegra images
>  #
> diff --git a/scripts/Makefile.lib b/scripts/Makefile.lib
> index 57426d030285..f5a9450ba5c7 100644
> --- a/scripts/Makefile.lib
> +++ b/scripts/Makefile.lib
> @@ -1,3 +1,4 @@
> +# -*-makefile-*-
>  # Backward compatibility - to be removed...
>  extra-y	+= $(EXTRA_TARGETS)
>  # Figure out what we need to build from the various variables
> -- 
> 2.1.4
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
