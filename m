Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRFwy-0004JQ-2B
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 12:25:18 +0000
Received: by mail-lj1-x243.google.com with SMTP id u6-v6so16371304ljd.1
 for <barebox@lists.infradead.org>; Mon, 26 Nov 2018 04:25:05 -0800 (PST)
Date: Mon, 26 Nov 2018 15:25:02 +0300
From: Antony Pavlov <antonynpavlov@gmail.com>
Message-Id: <20181126152502.d650686785e90b20b3264e28@gmail.com>
In-Reply-To: <20181126091807.19398-2-o.rempel@pengutronix.de>
References: <20181126091807.19398-1-o.rempel@pengutronix.de>
 <20181126091807.19398-2-o.rempel@pengutronix.de>
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
Subject: Re: [PATCH v1 01/10] images: piggy: use "a" instead of #alloc flag
To: Oleksij Rempel <o.rempel@pengutronix.de>
Cc: barebox@lists.infradead.org

On Mon, 26 Nov 2018 10:17:58 +0100
Oleksij Rempel <o.rempel@pengutronix.de> wrote:

Hi!

I can't apply this patch to the master branch 'FIT: support hash-1/signatur=
e-1 nodes in signature check' (6bacf7bd8df)

Here is git-am error log:

Applying: images: piggy: use "a" instead of #alloc flag
error: images/piggy.S: does not exist in index
Patch failed at 0001 images: piggy: use "a" instead of #alloc flag
hint: Use 'git am --show-current-patch' to see the failed patch
When you have resolved this problem, run "git am --continue".
If you prefer to skip this patch, run "git am --skip" instead.
To restore the original branch and stop patching, run "git am --abort".


-- =

Best regards,
=A0 Antony Pavlov


> "#alloc" is not working with MIPS compiler. The "a" variant
> seems to be more generic and works with ARM and MIPS.
> =

> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
> ---
>  images/piggy.S | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> =

> diff --git a/images/piggy.S b/images/piggy.S
> index 84396ae4ec..c2274ebac7 100644
> --- a/images/piggy.S
> +++ b/images/piggy.S
> @@ -1,4 +1,4 @@
> -        .section .piggydata,#alloc
> +        .section .piggydata,"a"
>          .globl  input_data
>  input_data:
>          .incbin "images/barebox.z"
> -- =

> 2.19.1
> =

> =

> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
