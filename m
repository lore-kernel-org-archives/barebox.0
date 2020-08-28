Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kBZwT-0004Xa-H9
 for barebox@lists.infradead.org; Fri, 28 Aug 2020 08:41:02 +0000
Received: by mail-lj1-x244.google.com with SMTP id w14so421377ljj.4
 for <barebox@lists.infradead.org>; Fri, 28 Aug 2020 01:41:00 -0700 (PDT)
Date: Fri, 28 Aug 2020 11:40:58 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20200828114058.827fb0851f3b1950f044d6aa@gmail.com>
In-Reply-To: <20200823223927.16691-1-rhi@pengutronix.de>
References: <20200823211343.25189-1-rhi@pengutronix.de>
 <20200823223927.16691-1-rhi@pengutronix.de>
Mime-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH v2] sandbox: add a minimal defconfig to build only the
 host tools
To: Roland Hieber <rhi@pengutronix.de>
Cc: Barebox Mailing List <barebox@lists.infradead.org>

On Mon, 24 Aug 2020 00:39:27 +0200
Roland Hieber <rhi@pengutronix.de> wrote:

Hi!

> For distro packaging, make it possible to build all host tools in one go

Is there any stuff for Debian packaging?

There is u-boot-tools package for Debian distro.
Alas there is no barebox-tools package still.


> (and a very minimal barebox image as an unimportant side artifact).
> =

> Signed-off-by: Roland Hieber <rhi@pengutronix.de>
> ---
> v2:
>  * also select IMD to get scripts/bareboximd
> =

>  arch/sandbox/configs/hosttools_defconfig | 7 +++++++
>  1 file changed, 7 insertions(+)
>  create mode 100644 arch/sandbox/configs/hosttools_defconfig
> =

> diff --git a/arch/sandbox/configs/hosttools_defconfig b/arch/sandbox/conf=
igs/hosttools_defconfig
> new file mode 100644
> index 000000000000..72ec0fc462b2
> --- /dev/null
> +++ b/arch/sandbox/configs/hosttools_defconfig
> @@ -0,0 +1,7 @@
> +CONFIG_IMD=3Dy
> +CONFIG_COMPILE_HOST_TOOLS=3Dy
> +CONFIG_ARCH_IMX_USBLOADER=3Dy
> +CONFIG_MVEBU_HOSTTOOLS=3Dy
> +CONFIG_MXS_HOSTTOOLS=3Dy
> +CONFIG_OMAP3_USB_LOADER=3Dy
> +CONFIG_OMAP4_HOSTTOOL_USBBOOT=3Dy
> -- =

> 2.28.0
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
