Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU9jF-0003mX-3R
 for barebox@lists.infradead.org; Fri, 24 May 2019 12:55:22 +0000
Message-ID: <0552fb12e541c7e93ee389bccba26b5fede7b995.camel@pengutronix.de>
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Fri, 24 May 2019 14:55:16 +0200
In-Reply-To: <1558697578-69121-1-git-send-email-m.otto@phytec.de>
References: <1558697578-69121-1-git-send-email-m.otto@phytec.de>
MIME-Version: 1.0
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
Subject: Re: [PATCH 1/4] Makefile-imx: replace static variant to dynamic for
 signing images
To: Maik Otto <m.otto@phytec.de>
Cc: barebox@lists.infradead.org

Hi,

comments as always below.

On Fri, 2019-05-24 at 13:32 +0200, Maik Otto wrote:
> Insert in the Kconfig the selection for the build type signed, usb
> signed,
> encrypted/signed and  unsigned as basic for the replacement the
> static
> variant in the Makefile.imx
> 
> Signed-off-by: Maik Otto <m.otto@phytec.de>
> ---
>  arch/arm/mach-imx/Kconfig | 25 +++++++++++++++++++++++++
>  images/Makefile.imx       |  1 +
>  2 files changed, 26 insertions(+)
> 
> diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
> index 71d37ce..fdb4239 100644
> --- a/arch/arm/mach-imx/Kconfig
> +++ b/arch/arm/mach-imx/Kconfig
> @@ -845,6 +845,24 @@ config HABV4_IMG_CRT_PEM
>  
>  endif
>  
> +if HABV4
> +
> +choice
> +	prompt "Select Building Signed/Encrypted Bootloader"
> +
> +config HABV4_IMAGE_SIGNED
> +	bool "build signed images"
> +
> +config HABV4_IMAGE_SIGNED_USB
> +	bool "build signed images and signed USB images"
> +
> +config HABV4_IMAGE_SIGNED_ENCRYPTED
> +	bool "build signed encrypted images"
> +
> +endchoice
> +
> +endif

This is a regression in contrast with the current system. The current
systems allows a build of all three images (albeit with a modification
to Makefile.imx), and imo this should be a selection rather than a
choice.

Regards,
Rouven Czerwinski
-- 
Pengutronix e.K.                           |            		 |
Industrial Linux Solutions                 | https://www.pengutronix.de/ |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
