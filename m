Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Xvlze-00055C-M7
 for barebox@lists.infradead.org; Tue, 02 Dec 2014 11:51:47 +0000
Received: by mail-lb0-f169.google.com with SMTP id p9so10256936lbv.14
 for <barebox@lists.infradead.org>; Tue, 02 Dec 2014 03:51:23 -0800 (PST)
Date: Tue, 2 Dec 2014 15:52:50 +0400
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20141202155250.40608b3ef6b81bce785af8cc@gmail.com>
In-Reply-To: <1417516191-9837-1-git-send-email-c.hemp@phytec.de>
References: <1417516191-9837-1-git-send-email-c.hemp@phytec.de>
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
Subject: Re: [PATCH] defconfig: Enable ubiformat in imx_v7_defconfig
To: Christian Hemp <c.hemp@phytec.de>
Cc: barebox@lists.infradead.org

On Tue, 2 Dec 2014 11:29:51 +0100
Christian Hemp <c.hemp@phytec.de> wrote:

Starting patch "Subject" field with "defconfig:" is not very good.

Please see https://www.kernel.org/doc/Documentation/SubmittingPatches for d=
etails.


"ARM: imx_v7_defconfig: Enable ubiformat"

or even

"ARM: imx_v7: Enable ubiformat command by default"

are more appropriate forms.

> Signed-off-by: Christian Hemp <c.hemp@phytec.de>
> ---
>  arch/arm/configs/imx_v7_defconfig | 1 +
>  1 file changed, 1 insertion(+)
> =

> diff --git a/arch/arm/configs/imx_v7_defconfig b/arch/arm/configs/imx_v7_=
defconfig
> index 7076ecd..e3dba79 100644
> --- a/arch/arm/configs/imx_v7_defconfig
> +++ b/arch/arm/configs/imx_v7_defconfig
> @@ -56,6 +56,7 @@ CONFIG_CMD_GO=3Dy
>  CONFIG_CMD_RESET=3Dy
>  CONFIG_CMD_UIMAGE=3Dy
>  CONFIG_CMD_PARTITION=3Dy
> +CONFIG_CMD_UBIFORMAT=3Dy
>  CONFIG_CMD_EXPORT=3Dy
>  CONFIG_CMD_LOADENV=3Dy
>  CONFIG_CMD_PRINTENV=3Dy
> -- =

> 1.9.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


-- =

--=A0
Best regards,
=A0 Antony Pavlov

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
