Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk4.altibox.net ([109.247.116.15])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aPDPt-0005cP-0p
 for barebox@lists.infradead.org; Fri, 29 Jan 2016 18:05:06 +0000
Date: Fri, 29 Jan 2016 19:04:38 +0100
From: Sam Ravnborg <sam@ravnborg.org>
Message-ID: <20160129180437.GA2401@ravnborg.org>
References: <1454064243-26558-1-git-send-email-s.hauer@pengutronix.de>
 <1454064243-26558-14-git-send-email-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1454064243-26558-14-git-send-email-s.hauer@pengutronix.de>
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
Subject: Re: [PATCH 13/23] scripts: imx: move macro definitions to common
 header file
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Fri, Jan 29, 2016 at 11:43:53AM +0100, Sascha Hauer wrote:
> ARRAY_SIZE and offsetof are used by both imx-usb-loader and imx-image.
> Move their definitions to the common header file.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  scripts/imx/imx-image.c      | 2 --
>  scripts/imx/imx-usb-loader.c | 5 -----
>  scripts/imx/imx.h            | 5 +++++
>  3 files changed, 5 insertions(+), 7 deletions(-)
> 
> diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
> index e986545..1d23e11 100644
> --- a/scripts/imx/imx.h
> +++ b/scripts/imx/imx.h
> @@ -1,3 +1,8 @@
> +#define ARRAY_SIZE(arr) (sizeof(arr) / sizeof((arr)[0]))
This macro is already defined in include/linux/kernel.h,
so it would be better to use this version.


> +#ifndef offsetof
> +#define offsetof(TYPE, MEMBER) __builtin_offsetof(TYPE, MEMBER)
> +#endif
Likewise for this - use the version in include/linux/stddef.h

Only from manual inspection - I did not try to replace the
definitions to check for any incompatibilities.

	Sam

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
